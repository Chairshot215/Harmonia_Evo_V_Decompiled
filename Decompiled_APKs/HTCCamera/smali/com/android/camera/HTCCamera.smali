.class public Lcom/android/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/IEventManagerOwner;
.implements Lcom/android/camera/IEventHandler;
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCamera$39;,
        Lcom/android/camera/HTCCamera$MainHandler;,
        Lcom/android/camera/HTCCamera$CaptureCategory;
    }
.end annotation


# static fields
.field public static final ACTION_ORIENTATION_LIGHT:Ljava/lang/String; = "com.htc.content.intent.action.ORIENTATION_LIGHT"

.field public static final AUTO_SMILE_CAPTURE:I = 0x53

.field private static final BEEP_NO_SOUND:I = -0x1

.field private static final BEEP_TIME:I = 0xc8

.field public static final CAMERA_THREAD_RUNNING:I = 0x66

.field public static final CANCEL_FOCUS_END:I = 0x1d

.field private static final CAPTURE_BEEP_COUNT:I = 0x5

.field public static final CHANGE_INDICATOR_LAYOUT:I = 0xb

.field public static final CHECK_FACE_DETECTION:I = 0x23

.field public static final CHECK_SCENE_CHANGE:I = 0x20

.field public static final CLEAN_FACE_FOCUS:I = 0x36

.field public static final CLOSE_CAPTURE_UI:I = 0x10

.field public static final CLOSE_SELF_TIMER:I = 0x46

.field public static final COUNT_DOWN_SELFTIMER:I = 0x5

.field public static final DOT_SCENE_ACTION:I = 0x5

.field public static final DOT_SCENE_AUTO:I = 0x0

.field public static final DOT_SCENE_BURST:I = 0x3

.field public static final DOT_SCENE_HDR:I = 0x2

.field public static final DOT_SCENE_MACRO:I = 0x6

.field public static final DOT_SCENE_MANUAL:I = 0x8

.field public static final DOT_SCENE_NIGHT:I = 0x4

.field public static final DOT_SCENE_PANORAMA:I = 0x1

.field public static final DOT_SCENE_PORTRAIT:I = 0x7

.field public static final DO_CREATE_AFTER_PREVIEW:I = 0x2e

.field public static final DO_CREATE_RESUME_AFTER_PREVIEW:I = 0x2d

.field public static final DO_RESUME_AFTER_PREVIEW:I = 0x2f

.field public static final EFFECT_CONTROL_TIMEOUT:I = 0x1388

.field public static final ENABLE_GARBAGE_COLLECTION:I = 0x38

.field public static final ENABLE_SENSOR_FOCUS:I = 0x1e

.field public static final EVENT_ACTION_SCREEN_CLOSED:Ljava/lang/String; = "ActionScreen.Closed"

.field public static final EVENT_ACTION_SCREEN_CLOSING:Ljava/lang/String; = "ActionScreen.Closing"

.field public static final EVENT_ACTION_SCREEN_OPEN:Ljava/lang/String; = "ActionScreen.Open"

.field public static final EVENT_ACTIVATE:Ljava/lang/String; = "CameraActivity.Activate"

.field public static final EVENT_AUTOSCENE_ENABLED:Ljava/lang/String; = "AutoScene.Enabled"

.field public static final EVENT_CAMERA_THREAD_RUNNING:Ljava/lang/String; = "CameraActivity.CameraThreadRunning"

.field public static final EVENT_CAPTURE_UI_CLOSED:Ljava/lang/String; = "CaptureUI.Closed"

.field public static final EVENT_CAPTURE_UI_OPEN:Ljava/lang/String; = "CaptureUI.Open"

.field public static final EVENT_CAPTURE_UI_UNBLOCK:Ljava/lang/String; = "CaptureUI.Unblock"

.field public static final EVENT_DEACTIVATE:Ljava/lang/String; = "CameraActivity.Deactivate"

.field public static final EVENT_DEVICE_ORIENTATION_CHANGED:Ljava/lang/String; = "DeviceOrientation.Changed"

.field public static final EVENT_EFFECT_APPLIED:Ljava/lang/String; = "Effect.Applied"

.field public static final EVENT_EFFECT_CANCELED:Ljava/lang/String; = "Effect.Canceled"

.field public static final EVENT_EFFECT_CONTROL_VISIBILITY_CHANGED:Ljava/lang/String; = "EffectControl.VisibilityChanged"

.field public static final EVENT_EFFECT_LIST_UPDATED:Ljava/lang/String; = "EffectList.Updated"

.field public static final EVENT_EFFECT_PANEL_CLOSED:Ljava/lang/String; = "EffectPanel.Closed"

.field public static final EVENT_EFFECT_PANEL_MOVING:Ljava/lang/String; = "EffectPanel.Moving"

.field public static final EVENT_EFFECT_PANEL_OPEN:Ljava/lang/String; = "EffectPanel.Open"

.field public static final EVENT_EFFECT_PANEL_OPENING:Ljava/lang/String; = "EffectPanel.Opening"

.field public static final EVENT_FAST_FRAME_RECORDING_CHANGED:Ljava/lang/String; = "FastFrameRecording.Changed"

.field public static final EVENT_FOCUS_FINISHED:Ljava/lang/String; = "Focus.Finished"

.field public static final EVENT_KEY_DOWN:Ljava/lang/String; = "Key.Down"

.field public static final EVENT_KEY_UP:Ljava/lang/String; = "Key.Up"

.field public static final EVENT_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "MediaScanner.Finished"

.field public static final EVENT_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "MediaScanner.Started"

.field public static final EVENT_MENU_CLOSED:Ljava/lang/String; = "Menu.Closed"

.field public static final EVENT_MENU_COLLAPSED:Ljava/lang/String; = "Menu.Collapsed"

.field public static final EVENT_MENU_EXPANDED:Ljava/lang/String; = "Menu.Expanded"

.field public static final EVENT_MENU_OPENING:Ljava/lang/String; = "Menu.Opening"

.field public static final EVENT_MENU_TIME_OUT:Ljava/lang/String; = "Menu.TimeOut"

.field public static final EVENT_NEW_INTENT:Ljava/lang/String; = "CameraActivity.NewIntent"

.field public static final EVENT_PAUSING:Ljava/lang/String; = "CameraActivity.Pausing"

.field public static final EVENT_PREVIEW_STARTED:Ljava/lang/String; = "CameraActivity.PreviewStarted"

.field public static final EVENT_PROTRAIT_MODE_CHANGED:Ljava/lang/String; = "PortraitMode.Changed"

.field public static final EVENT_QUERY_CAN_TRIGGER_FOCUS:Ljava/lang/String; = "Query.CanTriggerFocus"

.field public static final EVENT_QUERY_CONFIRM_DELETING_MEDIA_MESSAGE:Ljava/lang/String; = "Query.ConfirmDeletingMediaMessage"

.field public static final EVENT_QUERY_EFFECT_CENTER:Ljava/lang/String; = "Query.EffectCenter"

.field public static final EVENT_QUERY_IS_EFFECT_CONTROL_VISIBLE:Ljava/lang/String; = "Query.IsEffectControlVisible"

.field public static final EVENT_QUERY_IS_EFFECT_PANEL_OPEN:Ljava/lang/String; = "Query.IsEffectPanelOpen"

.field public static final EVENT_QUERY_IS_ZOOM_LOCK_NEEDED:Ljava/lang/String; = "Query.IsZoomLockNeeded"

.field public static final EVENT_QUERY_MEDIA_TO_SETAS:Ljava/lang/String; = "Query.MediaToSetAs"

.field public static final EVENT_QUERY_MEDIA_TO_SHARE:Ljava/lang/String; = "Query.MediaToShare"

.field public static final EVENT_RECORDING_STARTED:Ljava/lang/String; = "Recording.Started"

.field public static final EVENT_RECORDING_STARTING:Ljava/lang/String; = "Recording.Starting"

.field public static final EVENT_RECORDING_STOPPED:Ljava/lang/String; = "Recording.Stopped"

.field public static final EVENT_RECORDING_STOPPING:Ljava/lang/String; = "Recording.Stopping"

.field public static final EVENT_RECORDING_TIME_CHANGED:Ljava/lang/String; = "Recording.TimeChanged"

.field public static final EVENT_RECORD_WITH_AUDIO_CHANGED:Ljava/lang/String; = "RecordWithAudio.Changed"

.field public static final EVENT_REMAINING_COUNTER_HIDDEN:Ljava/lang/String; = "RemainingCounter.Hidden"

.field public static final EVENT_REMAINING_COUNTER_SHOWING:Ljava/lang/String; = "RemainingCounter.Showing"

.field public static final EVENT_REMOVABLE_STORAGE_EJECTED:Ljava/lang/String; = "RemovableStorage.Ejected"

.field public static final EVENT_REMOVABLE_STORAGE_MOUNTED:Ljava/lang/String; = "RemovableStorage.Mounted"

.field public static final EVENT_REMOVABLE_STORAGE_UNMOUNTED:Ljava/lang/String; = "RemovableStorage.Unmounted"

.field public static final EVENT_REQUEST_CLOSE_EFFECT_PANEL:Ljava/lang/String; = "Request.CloseEffectPanel"

.field public static final EVENT_REQUEST_OPEN_EFFECT_PANEL:Ljava/lang/String; = "Request.OpenEffectPanel"

.field public static final EVENT_REQUEST_RESET_TO_DEFAULT:Ljava/lang/String; = "Request.ResetToDefault"

.field public static final EVENT_REQUEST_SET_MEDIA_AS:Ljava/lang/String; = "Request.SetMediaAs"

.field public static final EVENT_REQUEST_SHARE_MEDIA:Ljava/lang/String; = "Request.ShareMedia"

.field public static final EVENT_REQUEST_TOGGLE_EFFECT_PANEL:Ljava/lang/String; = "Request.ToggleEffectPanel"

.field public static final EVENT_RESOLUTION_SELECTED:Ljava/lang/String; = "Resolution.Selected"

.field public static final EVENT_RESTART_CAMERA:Ljava/lang/String; = "Camera.Restart"

.field public static final EVENT_RESUMING:Ljava/lang/String; = "CameraActivity.Resuming"

.field public static final EVENT_ROTATION_CHANGED:Ljava/lang/String; = "CameraActivity.RotateChanged"

.field public static final EVENT_SAME_MENU_ITEM_SELETED:Ljava/lang/String; = "SameMenuItem.Selected"

.field public static final EVENT_SECOND_LAYOUT_CLOSE:Ljava/lang/String; = "SecondLayout.Closed"

.field public static final EVENT_SECOND_LAYOUT_OPEN:Ljava/lang/String; = "SecondLayout.Opened"

.field public static final EVENT_SELF_TIMER_CHANGED:Ljava/lang/String; = "SelfTimer.Changed"

.field public static final EVENT_SELF_TIMER_COUNT_DOWN:Ljava/lang/String; = "SelfTimer.CountDown"

.field public static final EVENT_SELF_TIMER_STARTED:Ljava/lang/String; = "SelfTimer.Started"

.field public static final EVENT_SELF_TIMER_STOPPED:Ljava/lang/String; = "SelfTimer.Stopped"

.field public static final EVENT_SENSOR_VALUE_CHANGED:Ljava/lang/String; = "SensorValue.RotateChanged"

.field public static final EVENT_SWITCHING_MODE:Ljava/lang/String; = "Mode.Switching"

.field public static final EVENT_SWITCH_3D_MODE:Ljava/lang/String; = "3DMode.Switched"

.field public static final EVENT_SWITCH_MODE:Ljava/lang/String; = "Mode.Switched"

.field public static final EVENT_THUMBNAIL_BUTTON_CLICKED:Ljava/lang/String; = "ThumbnailButton.Clicked"

.field public static final EVENT_ZOOM_CHANGED:Ljava/lang/String; = "Zoom.Changed"

.field public static final EVENT_ZOOM_LOCKED_CHANGED:Ljava/lang/String; = "Zoom.LockedStateChanged"

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final FADEOUT_SCENE_LANDSCAPE:I = 0x4c

.field public static final FADEOUT_SCENE_PORTRAIT:I = 0x4a

.field public static final FADEOUT_SCENE_SUN_NIGHT:I = 0x4b

.field public static final FINISH_FOCUS:I = 0x1c

.field public static final FOCUSING_NO_ACTION:I = 0x1

.field public static final FOCUSING_PRESS_CAPTURE:I = 0x3

.field public static final FOCUSING_PRESS_RECORD:I = 0x4

.field public static final FOCUSING_TAP_CAPTURE:I = 0x2

.field public static final FOCUS_MODE_FACE:I = 0x2

.field public static final FOCUS_MODE_SENSOR:I = 0x0

.field public static final FOCUS_MODE_TOUCH:I = 0x1

.field public static final FOCUS_MODE_WAIT_FACE:I = 0x3

.field public static final HIDE_CAPTURE_REVIEW:I = 0x3a

.field public static final HTC_CAM_SWITCH_CHANGE:I = 0xe

.field public static final HW_3D_BUTTON_SWITCH:I = 0x48

.field public static final INTENT_ACTION_ALBUM:Ljava/lang/String; = "FROM_CAMERA"

.field private static final INTENT_KEY_JPEG_DATA:Ljava/lang/String; = "jpeg_data"

.field public static final INTENT_MODE_CAMCORDER:Ljava/lang/String; = "comcorder"

.field public static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final INTENT_PREVIEW_CAPTURE:Ljava/lang/String; = "capture"

.field public static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field public static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field private static final INTENT_REVIEW_DURATION:Ljava/lang/String; = "review_duration"

.field public static final LOAD_LATEST_THUMBNAIL:I = 0x33

.field public static final LONG_PRESS_AREA:I = 0xf

.field public static final LONG_PRESS_PERIOD:J = 0x190L

.field public static final LONG_PRESS_SW_CAPTURE:I = 0x42

.field public static final LONG_PRESS_SW_CAPTURE_TIMEOUT:I = 0x3e8

.field public static final MENU_3D_CAMERA_SWITCH:I = 0x4f

.field private static final MIN_VOLUME:I = 0x1

.field public static final NO_FOCUSING:I = 0x0

.field private static final NO_KEEP_VOLUME:I = -0x1

.field public static final OPEN_CAPTURE_UI:I = 0xf

.field public static final PANEL_FADEOUT:I = 0x16

.field public static final PANEL_FADEOUT_TIMEOUT:I = 0x1f40

.field public static final PLAY_FOCUS_SOUND:I = 0x15

.field public static final PLAY_SOUND:I = 0x14

.field public static final PLAY_SOUND_POOL:I = 0x45

.field public static final PREPARE_FOCUS_BEFORE_CAPTURE:I = 0x22

.field public static final PREVIEW_DUPLICATE_END:I = 0x2b

.field public static final PREVIEW_DUPLICATE_START:I = 0x2a

.field public static final PROGRESS_STATUS:I = 0xd

.field public static final REQUEST_SURFACEVIEW_LAYOUT:I = 0x6

.field public static final RESET_GRID_VIEW:I = 0x8

.field public static final RESET_SURFACEVIEW_LAYOUT:I = 0x7

.field public static final RESTART_CHECK_SENSOR_FOCUS:I = 0x1f

.field public static final REVIEW_DURATION_NO_TIME:I = -0x1

.field public static final SCENE_GUIDE_TIMEOUT:I = 0xbb8

.field public static final SCREEN_SAVE:I = 0x24

.field public static final SELECT_ACTION_SCREEN:I = 0x26

.field public static final SET_LANDSCAPE:I = 0x67

.field public static final SHOW_3D_HINT:I = 0x50

.field public static final SHOW_CAPTURE_REVIEW:I = 0x39

.field public static final SHOW_FOCUSING:I = 0x18

.field public static final SHOW_FOCUS_END:I = 0x1b

.field public static final SHOW_FOCUS_FAIL:I = 0x1a

.field public static final SHOW_FOCUS_SUCCESS:I = 0x19

.field public static final SHOW_FPS:I = 0x28

.field public static final SHOW_GPS_INDICATOR:I = 0x29

.field public static final SHOW_RECORDING_INDICATOR:I = 0x2

.field public static final SHOW_STABLE_ICON:I = 0x4d

.field public static final SHOW_STABLE_ICON_PORT:I = 0x4e

.field public static final SHOW_TOAST:I = 0x25

.field public static final START_ALBUM_CAMERA:I = 0x11

.field public static final START_ALBUM_VIDEO:I = 0x12

.field public static final START_FACE_FOCUS:I = 0x35

.field public static final START_RECORDING_INDICATOR:I = 0x3

.field public static final START_SELF_PORTRAIT:I = 0x44

.field public static final START_SENSOR_FOCUS:I = 0x21

.field public static final STATUS_END:I = 0x0

.field public static final STATUS_RESUME:I = 0x1

.field public static final STOP_RECORDING_FINISH:I = 0x41

.field public static final STOP_RECORDING_INDICATOR:I = 0x4

.field public static final SUSPEND_ON_RECORDING:I = 0x40

.field public static final SWITCH_3D_PREVIEW_READY:I = 0x49

.field private static final TAG:Ljava/lang/String; = "HTCCamera"

.field public static final TRIGGER_STOP_RECORD:I = 0x52

.field public static final UNBLOCK_CAPTURE_UI:I = 0x34

.field public static final UNFREEZE_UI:I = 0x3f

.field public static final UPDATE_CAPTURE_MODE_LAYOUT:I = 0xc

.field public static final UPDATE_FLASH_FROM_RESTRICTION:I = 0x2c

.field public static final UPDATE_SCENE_ICON:I = 0x54

.field public static final UPDATE_STORAGE_LOCATION_MENU:I = 0x68

.field public static final UPDATE_THUMBNAIL_BUTTON:I = 0x32

.field public static bFocusFromPress:Z

.field public static bHoldFocusKey:Z

.field private static mBeepCount:I

.field private static mBlock3DSwitch:Z

.field private static mBlockCaptureUI:Z

.field private static mCurrentBeepLevel:I

.field public static mFocusMode:I

.field private static mFocus_Screen_X:I

.field private static mFocus_Screen_Y:I

.field private static mIsKeyguardShow:Z

.field private static mIsSelfPortraitTask:Z

.field private static mIsSelfTimerTask:Z

.field private static mIsWaitKeyguardBeforePreview:Z

.field private static mTurnOnTorch_Camcorder:Z


# instance fields
.field private CHECK_SWING_DURATION:I

.field public Display_Orientation:I

.field private From_ratio_land:F

.field private From_ratio_port:F

.field public SCREEN_DELAY:I

.field private SWING_LIMIT_ANGLE:I

.field private SWING_LIMIT_RATIO:F

.field private SWING_STABLE_THRESHOLD:I

.field private SWING_STEP:F

.field private To_ratio_land:F

.field private To_ratio_port:F

.field private animation_DURATION:I

.field private bCancelFocus:Z

.field private connManager:Landroid/net/ConnectivityManager;

.field private image_shift_ratio:F

.field private keep_backgroundDataSetting:Z

.field private leftBound_ratio:F

.field private m3DButtonStatus:I

.field private final m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

.field private m3DOptimalLandscape:Z

.field private m3DPreviewReady:Z

.field private m3DStatusInitialized:Z

.field private m3DTriggerCapture:Z

.field private mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private mActivityOnPause:Z

.field private mArrowHintLayout:Landroid/view/View;

.field private mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioStreamType:I

.field private final mAudioSyncRoot:Ljava/lang/Object;

.field public mAutoUploader:Lcom/android/camera/AutoUploader;

.field private mBlockPowerWarning:Z

.field mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Landroid/os/Handler;

.field private mCameraLayout:Landroid/widget/RelativeLayout;

.field mCameraThread:Lcom/android/camera/CameraThread;

.field private final mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

.field private mCanShowFocusView:Z

.field private mCapture_btn_ds:Landroid/widget/Button;

.field private mCapture_combine_ds:Landroid/view/View;

.field private mCapture_icon:Landroid/widget/ImageView;

.field mCapture_press:Landroid/graphics/drawable/Drawable;

.field mCapture_press_ds:Landroid/graphics/drawable/Drawable;

.field mCapture_rest:I

.field mCapture_rest_ds:I

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentManager:Lcom/android/camera/component/ComponentManager;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mEffectManager:Lcom/android/camera/effect/EffectManager;

.field private mEffectReceiver:Landroid/view/View;

.field private mEffect_btn:Landroid/widget/Button;

.field private mEffect_icon:Landroid/widget/ImageView;

.field private mEnableSensorFocus:Z

.field private mFaceDetection:Lcom/android/camera/FaceDetection;

.field private mFaceNumber:I

.field private mFaces:[Landroid/hardware/Camera$Face;

.field private mFilmstrip_btn:Landroid/widget/ImageButton;

.field private mFilmstrip_combine:Landroid/view/View;

.field private mFilmstrip_layout:Landroid/view/View;

.field private mFilmstrip_thumbnail:Landroid/widget/ImageView;

.field private mFlashDisableCounter:I

.field private mFlashRestriction:Lcom/android/camera/FlashRestriction;

.field private mFlash_btn:Landroid/widget/Button;

.field private mFlash_icon:Lcom/android/camera/widget/ImageTextView;

.field private mFlash_layout_ds:Landroid/widget/LinearLayout;

.field private mFlash_text_ds:Landroid/widget/TextView;

.field private mFocusAnimation:Landroid/view/View;

.field private mFocusPos_X:I

.field private mFocusPos_Y:I

.field public mFocusingState:I

.field private mForce2DMode:Z

.field private mFpsText:Landroid/widget/TextView;

.field private mFreezeOrientation:I

.field private mFreezeUI:Z

.field private mFront_land:Landroid/widget/RelativeLayout;

.field private mFront_port:Landroid/widget/RelativeLayout;

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mGridLayout:Landroid/view/View;

.field private mIS_LEVEL:Z

.field private mIS_LEVEL_PORT:Z

.field private mIdle:Z

.field private mIndicatorLayout:Landroid/view/View;

.field private mInstanceOrientation:I

.field private mIntentManager:Lcom/android/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCameraThreadRunning:Z

.field private mIsCaptureTriggered:Z

.field private mIsCaptureUIOpen:Z

.field private mIsFlashlightOffByScene:Z

.field private mIsFullDataPartition:Z

.field private mIsPowerWarning:Z

.field private mIsPreviewStarted:Z

.field private mIsSelfTimerStarted:Z

.field private mIsSipExist:Z

.field private mIsTouchScreen:Z

.field private mIsUIReady:Z

.field private mIsZoomLocked:Z

.field mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mKeyguardReceiver:Landroid/content/BroadcastReceiver;

.field private mLastOrientation:I

.field private mLastSavedMediaPath:Ljava/lang/String;

.field private mLocationHandler:Lcom/android/camera/LocationHandler;

.field private mMainBar:Landroid/view/View;

.field private mMainBar_item:Landroid/view/View;

.field private mMainBar_receiver:Landroid/view/View;

.field private mMainLayout:Landroid/view/View;

.field mMainThread:Ljava/lang/Thread;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field mMenuIsOpening:Z

.field private mMode_btn:Landroid/widget/Button;

.field private mMode_icon:Landroid/widget/ImageView;

.field private mMode_layout_ds:Landroid/widget/LinearLayout;

.field private mMode_text_ds:Landroid/widget/TextView;

.field private mNeed_doOnCreate:Z

.field private mNeed_doOnResume:Z

.field private mNeed_initOnCreate:Z

.field private mNeed_unregisterReceiver:Z

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOriginalVolume_Alarm:I

.field private mOriginalVolume_Ring:I

.field public mPanel:Lcom/android/camera/widget/SlidingDrawer;

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoto_btn:Landroid/widget/Button;

.field private mPhoto_icon:Landroid/widget/ImageView;

.field private mPlayBeepTime:J

.field private final mPrepareActionScreenRunnable:Ljava/lang/Runnable;

.field private mPreparedActionScreenSessionID:J

.field private mPreviewDuplicate:Landroid/widget/ImageView;

.field private mPreviewFilterLayout:Landroid/view/View;

.field private mPreviewVisibleArea:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mQualityMenu:Lcom/android/camera/widget/PopupMenu;

.field private mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

.field private mRecord_sec:J

.field private mRecording_Shining:Z

.field private mReviewDuration:I

.field private mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRunnable_Swing:Ljava/lang/Runnable;

.field private final mSIPReceiver:Landroid/content/BroadcastReceiver;

.field private mSceneGuideLayout:Landroid/view/View;

.field private mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapeTipText:Landroid/widget/TextView;

.field private mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

.field mSceneMenu:Lcom/android/camera/widget/PopupMenu;

.field private mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneQuality_btn:Landroid/widget/Button;

.field private mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

.field private mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mScene_Idx:I

.field private mScene_btn_ds:Landroid/widget/Button;

.field private mScene_icon_ds:Landroid/widget/ImageView;

.field private mScene_layout_ds:Landroid/widget/LinearLayout;

.field private mScene_text_ds:Landroid/widget/TextView;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSecondLayout:Landroid/view/View;

.field private mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

.field private mSelfPortraitHint_text:Landroid/widget/TextView;

.field private mSelfTimerDisableCounter:I

.field private mSensorFocusDisabledCounter:I

.field private mSensorHandler:Lcom/android/camera/SensorHandler;

.field private mSessionID:J

.field mSettingMenu:Lcom/android/camera/widget/PopupMenu;

.field private mSettings_btn:Landroid/widget/Button;

.field private mSettings_icon:Lcom/android/camera/widget/ImageTextView;

.field private final mShowActionScreenRunnable:Ljava/lang/Runnable;

.field private mSoundID_beep:I

.field private mSoundID_beep2:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolVolume:I

.field private mStartCountTime:J

.field private mStartTapCapture:Z

.field private mStartTime:J

.field private mStreamID_beep:I

.field private mStreamID_beep2:I

.field private mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

.field private mSurfaceCreated:Z

.field private mSurfaceHeight:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

.field mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

.field private mSwitch_btn:Landroid/widget/Button;

.field private mSwitch_layout_ds:Landroid/widget/LinearLayout;

.field private mSwitch_text_ds:Landroid/widget/TextView;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field private mToast:Lcom/android/camera/rotate/RotateToast;

.field private mTouchDown_X:I

.field private mTouchDown_Y:I

.field private mTouchFocusDisabledCounter:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateCountDuration:J

.field private mVideoThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mVideoThumbnailView:Landroid/widget/ImageView;

.field private mWaitResetSettings:Z

.field private mWillCloseCamera:Z

.field private mZoomTouch:Lcom/android/camera/ZoomTouch;

.field m_CancelFocusFromTouch:Z

.field private m_EventManager:Lcom/android/camera/EventManager;

.field m_NeedTriggerRecord:Z

.field private m_SceneListView:Lcom/android/camera/widget/SceneListView;

.field private m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;

.field private mbackIcon_land:Landroid/widget/ImageView;

.field private mbackIcon_port:Landroid/widget/ImageView;

.field private mfrontIcon_land:Landroid/widget/ImageView;

.field private mfrontIcon_port:Landroid/widget/ImageView;

.field private mivFocusedView:Landroid/widget/ImageView;

.field private mivFocusingView:Landroid/widget/ImageView;

.field private mivGrid:Landroid/widget/ImageView;

.field private rightBound_ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    sput v1, Lcom/android/camera/HTCCamera;->mFocusMode:I

    sput-boolean v1, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    sput v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sput v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    sput-boolean v1, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    sput v1, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    iput v5, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFullDataPartition:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    new-instance v0, Lcom/android/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$1;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$2;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$3;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$4;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/camera/HTCCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$5;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/camera/HTCCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$6;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/android/camera/HTCCamera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$7;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    iput v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v0, 0x7f020075

    iput v0, p0, Lcom/android/camera/HTCCamera;->mCapture_rest_ds:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press_ds:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/HTCCamera;->CHECK_SWING_DURATION:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->animation_DURATION:I

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    const/high16 v0, 0x4334

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_ANGLE:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_ANGLE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    iput v6, p0, Lcom/android/camera/HTCCamera;->SWING_STABLE_THRESHOLD:I

    iput v4, p0, Lcom/android/camera/HTCCamera;->From_ratio_land:F

    iput v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    iput v4, p0, Lcom/android/camera/HTCCamera;->From_ratio_port:F

    iput v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    iput v6, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020192

    iput v0, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mVideoThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mVideoThumbnailView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_text:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWillCloseCamera:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput v3, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomTouch:Lcom/android/camera/ZoomTouch;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iput v5, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    iput v5, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iput v3, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    iput v5, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iput v5, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    new-instance v0, Lcom/android/camera/HTCCamera$27;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$27;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$28;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$28;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$29;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$29;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$30;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$30;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$38;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$38;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private QueryToggleStorage()V
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a0151

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a014f

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x20c013c

    new-instance v3, Lcom/android/camera/HTCCamera$37;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$37;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/android/camera/HTCCamera$36;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$36;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    check-cast v1, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WriteModePreference()V
    .locals 2

    const-string v0, "camera_capture_mode_photo"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    const-string v0, "camera_capture_mode_photo"

    :goto_0
    const-string v1, "camera_capture_mode"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "camera_capture_mode_movie"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$10000(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide p1
.end method

.method static synthetic access$10100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1022(Lcom/android/camera/HTCCamera;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$10300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    return p1
.end method

.method static synthetic access$11200(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    return v0
.end method

.method static synthetic access$11202(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SwitchItemListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->m_SwitchItemListView:Lcom/android/camera/widget/SwitchItemListView;

    return-object p1
.end method

.method static synthetic access$11400(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SceneListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/widget/SceneListView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->m_SceneListView:Lcom/android/camera/widget/SceneListView;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    return v0
.end method

.method static synthetic access$11902(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    return v0
.end method

.method static synthetic access$12002(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    return p1
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return p0
.end method

.method static synthetic access$12100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    return-void
.end method

.method static synthetic access$12600()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return v0
.end method

.method static synthetic access$12602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return p0
.end method

.method static synthetic access$12700()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    return v0
.end method

.method static synthetic access$12800()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    return v0
.end method

.method static synthetic access$12900(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    return v0
.end method

.method static synthetic access$13100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/HTCCamera;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/HTCCamera;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    return p1
.end method

.method static synthetic access$3802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/camera/HTCCamera;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/HTCCamera;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->reset_surface_view(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetGridView()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/HTCCamera;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/HTCCamera;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5800()I
    .locals 1

    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    return v0
.end method

.method static synthetic access$5900()I
    .locals 1

    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    return-void
.end method

.method static synthetic access$6502(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V

    return-void
.end method

.method static synthetic access$6802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return p0
.end method

.method static synthetic access$6900(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopSoundPool()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    return v0
.end method

.method static synthetic access$7100(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateToast;)Lcom/android/camera/rotate/RotateToast;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/android/camera/HTCCamera;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    return v0
.end method

.method static synthetic access$7800(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/HTCCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initOnCreate_after_preview()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide p1
.end method

.method static synthetic access$808(Lcom/android/camera/HTCCamera;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide v0
.end method

.method static synthetic access$8100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/camera/HTCCamera;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/HTCCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic access$9000(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotateChanged(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide p1
.end method

.method static synthetic access$9100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    return v0
.end method

.method static synthetic access$9202(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V

    return-void
.end method

.method static synthetic access$9400()I
    .locals 1

    sget v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    return v0
.end method

.method static synthetic access$9402(I)I
    .locals 0

    sput p0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    return p0
.end method

.method static synthetic access$9502(I)I
    .locals 0

    sput p0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return p0
.end method

.method static synthetic access$9508()I
    .locals 2

    sget v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    return-wide p1
.end method

.method static synthetic access$9700(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->playSoundPool(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->switch3DMode()V

    return-void
.end method

.method private broadcastStopFM()V
    .locals 0

    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "HTCCamera"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkFaceDetection()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x23

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-ne v6, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v6, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v6, v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-static {v4, v7, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_8

    move v1, v4

    :goto_1
    const-string v6, "pref_camera_switch"

    invoke-static {p0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_3

    const-string v6, "pref_camera_auto_focus"

    invoke-static {p0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v0, v4

    :goto_2
    const-string v6, "pref_face_detection"

    invoke-static {p0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-gtz v6, :cond_5

    if-ne v1, v4, :cond_a

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_4
    if-ne v0, v4, :cond_a

    if-ne v2, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v6

    if-nez v6, :cond_a

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_6

    :cond_6
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-nez v5, :cond_7

    new-instance v5, Lcom/android/camera/FaceDetection;

    invoke-direct {v5}, Lcom/android/camera/FaceDetection;-><init>()V

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5, p0, v6}, Lcom/android/camera/FaceDetection;->initFaceDetection(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    :cond_7
    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->startFaceDetection()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_8
    move v1, v5

    goto :goto_1

    :cond_9
    move v0, v5

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->updateFaceIcon(I)V

    goto/16 :goto_0
.end method

.method private checkTapCapture(II)V
    .locals 8

    const/16 v4, 0xf

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    if-eq v3, v7, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    sub-long v0, v3, v5

    const-wide/16 v3, 0x190

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_0

    :cond_3
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    const-string v3, "HTCCamera"

    const-string v4, "Tap & Capture - mFocusingState = FOCUSING_TAP_CAPTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideAllScene()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    :cond_5
    return-void
.end method

.method private closeSecondLayout(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SecondLayout.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeSelfTimer()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "HTCCamera"

    const-string v2, "closeSelfTimer() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-nez v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "Self timer is not started"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - close self timer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "SelfTimer.Stopped"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "closeSelfTimer() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "pref_grid"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method private doAfterSceneSelect(I)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v3, 0x7f07000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v4, Lcom/android/camera/BooleanEvent;

    const-string v5, "AutoScene.Enabled"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSceneGuide(I)V

    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v3

    if-nez v3, :cond_0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    aget-object v4, v2, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v3, v4, v5}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitPanoramaMode()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitHdrMode()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitBurstMode()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v4, Lcom/android/camera/BooleanEvent;

    const-string v5, "AutoScene.Enabled"

    invoke-direct {v4, v5, v7}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doOnCreate_after_preview()V
    .locals 14

    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - not need to do"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    new-instance v0, Lcom/android/camera/RecordLimitCheck;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v0, v1}, Lcom/android/camera/RecordLimitCheck;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    new-instance v0, Lcom/android/camera/LocationHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/LocationHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    new-instance v0, Lcom/android/camera/SensorHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/HTCCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$9;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDelayCreateImageThumb()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_15

    const/16 v0, 0x1d

    :goto_2
    const-wide/16 v2, 0x1388

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$10;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$11;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$11;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$12;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$12;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$13;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$13;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$14;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$14;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$15;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$15;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$16;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$16;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_a
    const/4 v11, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    const-string v0, ""

    const v1, 0x186a0

    invoke-static {p0, v0, v1}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewStub;

    :goto_5
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const v0, 0x7f080132

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    const v0, 0x7f080134

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    const v0, 0x7f080136

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02019c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a000d

    const v5, 0x7f02019e

    invoke-static {p0, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0a000c

    const v13, 0x7f02019f

    invoke-static {p0, v5, v13}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$17;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$17;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    new-instance v0, Lcom/android/camera/MenuHandler;

    invoke-direct {v0}, Lcom/android/camera/MenuHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p0, v1, v9}, Lcom/android/camera/MenuHandler;->initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;)V

    const v0, 0x7f080130

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a000f

    const v5, 0x7f020148

    invoke-static {p0, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0a000e

    const v13, 0x7f020149

    invoke-static {p0, v5, v13}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$18;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$18;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$19;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$19;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerCloseListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$20;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$20;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerScrollListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v12, v0, 0x8

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$21;

    invoke-direct {v1, p0, v8}, Lcom/android/camera/HTCCamera$21;-><init>(Lcom/android/camera/HTCCamera;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$22;

    invoke-direct {v1, p0, v12}, Lcom/android/camera/HTCCamera$22;-><init>(Lcom/android/camera/HTCCamera;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V

    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v0, 0x7f0a0010

    const v1, 0x7f020106

    invoke-static {p0, v0, v1}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v0, v6}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setFocusable(Z)V

    new-instance v0, Lcom/android/camera/HTCCamera$24;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$24;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    :cond_13
    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    new-instance v0, Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/widget/PopupMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    goto/16 :goto_1

    :cond_15
    const/16 v0, 0x1e

    goto/16 :goto_2

    :cond_16
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_17

    const/16 v0, 0x1d

    :goto_7
    invoke-static {v1, v0}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_3

    :cond_17
    const/16 v0, 0x1e

    goto :goto_7

    :cond_18
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_19
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-direct {p0, v7, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewStub;

    goto/16 :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$23;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$23;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_6
.end method

.method private doOnDestory()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v0}, Lcom/android/camera/EventManager;->close()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->releaseMenuHandler()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->releaseLocationHandler()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->releaseSensorHandler()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->releaseIntentManager()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->close()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->releaseCameraThread()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "CAMCORDER_MODE=OFF"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->releaseResource()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    :cond_7
    const-string v0, "HTCCamera"

    const-string v1, "doOnDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOnResume_after_preview()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v4, :cond_0

    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - not need to do"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v4}, Lcom/android/camera/IntentManager;->resetLaunchedby()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v4}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    :goto_2
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x35

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v8, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v4

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/camera/FlashRestriction;

    invoke-direct {v4}, Lcom/android/camera/FlashRestriction;-><init>()V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v4, p0}, Lcom/android/camera/FlashRestriction;->initFlashRestriction(Lcom/android/camera/HTCCamera;)V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->loadSoundPool()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->IsFirstTimeLaunch()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "pref_first_time_launch"

    invoke-static {p0, v4, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :cond_8
    sget-boolean v4, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "pref_sdcard_state"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    const-string v4, "HTCCamera"

    const-string v5, "doOnResume_after_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    goto/16 :goto_2
.end method

.method private enableMainBarItems(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v0, :cond_0

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private enableSceneIcon(IZ)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_camera_scene_ds"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    :try_start_0
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method private getAdjustedVolume(I)I
    .locals 4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_2

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getMainbarSceneIcon(Lcom/android/camera/effect/EffectBase;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f020048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020061

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f02006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f02005e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, "B_whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f020086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v1, "flowers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f020067

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-string v1, "backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f02004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_8
    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f020065

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    rem-long v4, p1, v8

    div-long v6, p1, v8

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getTimeString(JLandroid/widget/TextView;)Ljava/lang/String;
    .locals 10

    const-wide/16 v6, 0x3c

    rem-long v4, p1, v6

    const-wide/16 v6, 0x3c

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    if-eqz p3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const-string v6, "%d hr"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getTimeString_ds(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    rem-long v4, p1, v8

    div-long v6, p1, v8

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private handleSensorFocus()V
    .locals 10

    const/4 v9, 0x1

    const-string v7, "HTCCamera"

    const-string v8, "handleSensorFocus() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "HTCCamera"

    const-string v8, "Block Capture UI - take focus start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v8, 0x23

    invoke-static {v7, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v7}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v7}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    :cond_0
    iget v7, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v7, :cond_1

    const-string v7, "HTCCamera"

    const-string v8, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_1
    const/4 v7, 0x0

    sput v7, Lcom/android/camera/HTCCamera;->mFocusMode:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v7, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-ne v7, v9, :cond_2

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    :goto_0
    new-instance v1, Lcom/android/camera/QueryEvent;

    const-string v7, "Query.EffectCenter"

    invoke-direct {v1, v7}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v7, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v1}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v7

    if-nez v7, :cond_3

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    invoke-direct {p0, v5, v6, v2}, Lcom/android/camera/HTCCamera;->mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V

    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSensorFocus("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private hideAllScene()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    return-void
.end method

.method private hideSelfPortraitHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSunNightSceneGuide(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/HTCCamera$32;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$32;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private initOnCreate_after_preview()V
    .locals 9

    const/4 v8, 0x1

    const v7, 0x7f020119

    const v6, 0x7f020118

    const/4 v5, 0x0

    const v4, 0x7f0a0002

    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    if-nez v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - not need to do"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_f

    const v2, 0x7f080057

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - set mMainLayout visible"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v2, :cond_2

    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v2, v8}, Lcom/android/camera/component/ComponentManager;->enableAutoInitialization(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_3

    const v2, 0x7f080054

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-nez v2, :cond_a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f08011c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {p0}, Lcom/android/camera/component/ThumbnailController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080126

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    :cond_b
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    if-nez v2, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f08011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSwitchButton()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getCachePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    :cond_d
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v3

    iget v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    const-string v2, "HTCCamera"

    const-string v3, "initOnCreate_after_preview() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080115

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080104

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080108

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080106

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/ImageTextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f080112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_13
    const-string v2, "HTCCamera"

    const-string v3, "mCameraThread == null, can\'t update layout based on capture mode !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static isKeyguardShow()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return v0
.end method

.method private loadSoundPool()V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSoundPoolVolume:I

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f06

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060002

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    const-string v3, "loadSoundPool() failed!!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapFocusPoint Screen - size: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") point: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    move v1, p2

    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapFocusPoint_Screen2Preview by pass: x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->sendFocusMessage(II)V

    goto :goto_0
.end method

.method private on3DModeSwitched(Lcom/android/camera/OneValueEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/OneValueEvent",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    return-void
.end method

.method private onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getCloseReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startScaladoPostProcessing(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 3

    const-string v1, "HTCCamera"

    const-string v2, "onCameraThreadRunning() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "There is no camera thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Media.Saved"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Zoom.Changed"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "CameraActivity.CameraThreadRunning"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "onCameraThreadRunning() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "HTCCamera"

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onEffectApplied(Lcom/android/camera/Event;)V
    .locals 3

    check-cast p1, Lcom/android/camera/effect/EffectEvent;

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectEvent;->getEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/camera/effect/IScene;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->getMainbarSceneIcon(Lcom/android/camera/effect/EffectBase;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/android/camera/effect/IEffect;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/camera/effect/NoneEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_0
.end method

.method private onEffectPanelClosed()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    const v1, 0x7f0a0002

    const v2, 0x7f020118

    invoke-static {p0, v1, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    :cond_1
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    :cond_2
    return-void
.end method

.method private onEffectPanelOpen()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    :cond_0
    return-void
.end method

.method private onEffectPanelOpening()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "Effect Panel is opening"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "onEffectPanelOpening when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onEffectPanelOpening and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMenuClosed()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetMainBarBtn()V

    return-void
.end method

.method private onMenuOpening()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    :cond_0
    return-void
.end method

.method private onModeSwitching(Lcom/android/camera/TwoValuesEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/TwoValuesEvent",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/TwoValuesEvent;->getValue1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/TwoValuesEvent;->getValue2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    return-void
.end method

.method private onRemovableStorageEjected()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRemovableStorageMounted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    sget-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRemovableStorageUnmounted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onResetToDefault()V
    .locals 0

    return-void
.end method

.method private onRotateChanged(I)V
    .locals 14

    const v13, 0x7f0b00e4

    const/16 v12, 0x2b

    const/4 v10, 0x2

    const/16 v11, 0x16

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_UIOrientation(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotateChanged old ui orientation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", set orientation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->animation_fromDegrees(I)F

    move-result v4

    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->animation_toDegrees(I)F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/HTCCamera;->startRotateAnimation(FF)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v9}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0, p1}, Lcom/android/camera/MenuHandler;->updateOrientation(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    if-ne p1, v10, :cond_f

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_7
    const v0, 0x7f0b00df

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0, v7}, Lcom/android/camera/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0, v7}, Lcom/android/camera/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientationDelay(I)V

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0, p1, v9}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v0, p1, v10}, Lcom/android/camera/widget/PopupMenu;->setOrientation(II)V

    :cond_e
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateRotateViews(I)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/OrientationEvent;

    const-string v1, "CameraActivity.RotateChanged"

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/OrientationEvent;-><init>(Ljava/lang/String;IIFF)V

    invoke-virtual {v9, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v12}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v12}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v11}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x1f40

    invoke-static {v0, v11, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const v0, 0x7f0b00e5

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const v0, 0x7f0b00e5

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_12

    const v0, 0x7f0b00e0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    goto/16 :goto_1

    :cond_12
    const v0, 0x7f0b00e1

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    goto/16 :goto_1
.end method

.method private onTouchCapture_Camcorder()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "HTCCamera"

    const-string v2, "Touch button to start video recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v1, v3, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "onTouchCapture_Camcorder, 3D portrait capture !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    const v3, 0x7f0a0048

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v1, "HTCCamera"

    const-string v2, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_0

    :cond_2
    const-string v1, "HTCCamera"

    const-string v2, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0
.end method

.method private onTouchCapture_Camera()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x25

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "HTCCamera"

    const-string v3, "Touch button to take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v2, :cond_0

    const v1, 0x7f0a014b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6, v1, v4, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v5, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "onTouchCapture_Camera, 3D portrait capture !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    const v4, 0x7f0a0048

    invoke-static {v2, v3, v4, v0, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v5, :cond_4

    const-string v2, "HTCCamera"

    const-string v3, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto :goto_0
.end method

.method private openSecondLayout(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x12c

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SecondLayout.Opened"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playSoundPool(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "playSoundPool() - mSoundPool = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "HTCCamera"

    const-string v1, "playSoundPool() failed!!"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep2:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private releaseSoundPool()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private resetFocusView()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "resetFocusView() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v0, "HTCCamera"

    const-string v1, "resetFocusView() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    check-cast v0, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_0
.end method

.method private resetGridView()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    if-nez v3, :cond_1

    const v3, 0x7f080042

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const-string v3, "pref_camera_image_ratio"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "HTCCamera"

    const-string v4, "Reset View: gridview_wide_landscape"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    const v4, 0x7f0800b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v3, "HTCCamera"

    const-string v4, "Reset View: Grid Visible"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    const-string v3, "pref_grid"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v3, "HTCCamera"

    const-string v4, "Reset View: gridview_4by3_landscape"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const-string v3, "HTCCamera"

    const-string v4, "Reset View: Grid InVisible"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private resetMainBarBtn()V
    .locals 4

    const v3, 0x7f0a0002

    const v2, 0x7f020118

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-static {p0, v3, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v3, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {p0, v3, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private resetTapCapture(II)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    return-void
.end method

.method private reset_surface_view(II)V
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset_surface_view before reset, lp.width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lp.height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "reset_surface_view - landscape"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    :cond_0
    :goto_0
    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset_surface_view lp width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lp Height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->requestLayout()V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    const-string v1, "HTCCamera"

    const-string v2, "reset_surface_view - portrait"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    goto :goto_0
.end method

.method private restoreVolume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-eq v1, v4, :cond_0

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore AudioManager.STREAM_ALARM, mOriginalVolume_Alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    :cond_0
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-eq v1, v4, :cond_1

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore AudioManager.STREAM_RING, mOriginalVolume_Ring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    :cond_1
    return-void
.end method

.method private saveAndFinish(Landroid/net/Uri;[B)V
    .locals 5

    if-eqz p1, :cond_1

    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - contentUri = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Opening file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing data"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Writing completed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish() - Cannot save data to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - Closing file"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - File closed"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - Closing file"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    const-string v3, "HTCCamera"

    const-string v4, "saveAndFinish() - File closed"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - data = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "saveAndFinish() - contentUri = NULL"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final saveSDCardState()V
    .locals 2

    const-string v0, "pref_sdcard_state"

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private sendFocusMessage(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method private setMaxBrightness()V
    .locals 0

    return-void
.end method

.method private setOldBrightness()V
    .locals 0

    return-void
.end method

.method private setPanelVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 6

    const/16 v5, 0x82

    const/16 v4, 0xc

    const/16 v2, 0xb

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, -0xa

    invoke-virtual {v0, v3, v5, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x28

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x18b

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setTipTextPosition(ILandroid/widget/RelativeLayout;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x46

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public static declared-synchronized setWaitKeyguardBeforePreview(Z)V
    .locals 2

    const-class v0, Lcom/android/camera/HTCCamera;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showArrowLayout(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/HTCCamera$25;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$25;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showSelfPortraitHint()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v3, 0x7f08018e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080191

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f080192

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    goto :goto_0
.end method

.method private showSunNightSceneGuide()V
    .locals 6

    const/16 v5, 0x4b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080189

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private startFocusFromLongPressKey()V
    .locals 4

    const/16 v3, 0x1f

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sget v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->isStartDetection()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->quickFocus()Z

    move-result v0

    if-eq v0, v2, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()V

    goto :goto_0
.end method

.method private startRotateAnimation(FF)V
    .locals 7

    const/4 v6, 0x1

    const/16 v4, 0x190

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRotateAnimation from_degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to_degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    const/4 v1, 0x0

    sub-float v2, p2, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    goto :goto_0
.end method

.method private stopNotesRecording()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private stopRecordingIndicator()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private stopSoundPool()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "stopSoundPool() - mSoundPool = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HTCCamera"

    const-string v2, "stopSoundPool() failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private switch3DMode()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "3DMode.Switched"

    iget v3, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-ne v0, v4, :cond_3

    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v0, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :goto_2
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "true"

    invoke-static {v0, v5, v4, v5, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->unlockOrientation()V

    goto :goto_1

    :cond_3
    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_3
.end method

.method private threadAccessCheck()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private togglePanelState()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "togglePanelState() - failed, mSettingMenu is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v1}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    if-eqz v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "togglePanelState() - failed, mMenuIsOpening is true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->getSettingsView()Lcom/android/camera/widget/SettingsView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PopupMenu;->toggle(Landroid/view/View;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    const v2, 0x7f0a0003

    const v3, 0x7f02015c

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private triggerRecord()V
    .locals 8

    const/16 v7, 0xf

    const/16 v3, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v1, v4, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, UI Block !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, action screen open !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v1, v4, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, 3D portrait capture !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    const v3, 0x7f0a0048

    invoke-static {v1, v2, v3, v0, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[press_jogball]recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v1

    if-eq v1, v4, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v2, "low internal storage ..."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    const v3, 0x104039d

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    const-string v1, "HTCCamera"

    const-string v2, "Block Capture UI - Start Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Recording.Starting"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v5, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    :cond_a
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    iput-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v1, "HTCCamera"

    const-string v2, "Freeze UI - Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    :goto_1
    const-string v1, "HTCCamera"

    const-string v2, "triggerRecord() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[press_jogball]stop_record"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Recording.Stopping"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v2, "Block Capture UI - Stop Recorder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v5, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto :goto_1
.end method

.method private triggerTakePicture()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[press_jogball]take_picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v4, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end, UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v4, :cond_3

    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end, 3D portrait capture !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    const v4, 0x7f0a0048

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HTCCamera"

    const-string v3, "low internal storage ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v4, 0x104039d

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v2, "HTCCamera"

    const-string v3, "low internal storage - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    sget v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v2, "HTCCamera"

    const-string v3, "Storage_Status != STORAGE_OK - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end, PowerWarning !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    const-string v2, "HTCCamera"

    const-string v3, "Block Capture UI - Take Picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v1

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_9

    if-gtz v1, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v2}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v2}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    iput-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    :cond_a
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v7, :cond_c

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    :cond_c
    if-lez v1, :cond_f

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_e

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v7, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v6}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    :cond_e
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7, v6, v6, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "HTCCamera"

    const-string v3, "triggerTakePicture() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v8, :cond_e

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v7, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v2, "HTCCamera"

    const-string v3, "Freeze UI - Take Picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    goto :goto_1
.end method

.method private updateCaptureIcon(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    const/high16 v2, 0x7f0a

    const v3, 0x7f020191

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020192

    iput v2, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020174

    iput v2, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    if-nez p1, :cond_3

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b010b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b010d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateFocusView(II)V
    .locals 11

    const-string v9, "HTCCamera"

    const-string v10, "updateFocusView - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->initFocusView()V

    sput p1, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sput p2, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v9, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_0

    div-int/lit8 v9, v1, 0x2

    sub-int v3, p1, v9

    div-int/lit8 v9, v0, 0x2

    sub-int v5, p2, v9

    sub-int v9, v8, p1

    div-int/lit8 v10, v1, 0x2

    sub-int v4, v9, v10

    sub-int v9, v7, p2

    div-int/lit8 v10, v0, 0x2

    sub-int v2, v9, v10

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v9, "HTCCamera"

    const-string v10, "updateFocusView - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private updateModeIcon(I)V
    .locals 5

    const v4, 0x7f0a016f

    const v3, 0x7f0a016e

    const v2, 0x7f020083

    const v1, 0x7f020050

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    if-nez p1, :cond_a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :goto_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method private updateRotateViews(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    :cond_0
    return-void
.end method

.method private updateSceneGuide(I)V
    .locals 5

    const/16 v4, 0x3a

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideAllScene()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const-string v0, "auto"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    :goto_1
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "night"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSunNightSceneGuide()V

    goto :goto_1

    :pswitch_3
    const-string v0, "action"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_4
    const-string v0, "flowers"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_5
    const-string v0, "portrait"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_6
    const-string v0, "auto"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_7
    const-string v1, "Panorama UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->isPanoramaModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterPanoramaMode()V

    goto :goto_0

    :pswitch_8
    const-string v1, "HDR UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v1}, Lcom/android/camera/component/HdrUI;->isHdrModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterHdrMode()V

    goto :goto_0

    :pswitch_9
    const-string v1, "Burst UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->isBurstModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "action"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "action"

    invoke-static {v1, v4, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterBurstMode()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateSceneGuideOrientation(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneGuideOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setTipTextPosition(ILandroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v4, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private updateSceneQualityIcon(III)V
    .locals 9

    const v6, 0x7f020048

    const/4 v5, 0x2

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0a01b7

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->getMainbarSceneIcon(Lcom/android/camera/effect/EffectBase;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    :goto_1
    if-eq p2, v5, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    :goto_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v7, v1, 0x5a

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    int-to-float v2, v7

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/ImageTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v6}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v6}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0a01ba

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    if-eq p3, v3, :cond_7

    if-ne p2, v5, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    goto :goto_2
.end method

.method private updateSelfPortraitHint(I)V
    .locals 9

    const/16 v8, 0xe

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    :pswitch_0
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_1
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_2
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_3
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateSwitchIcon(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f0201ad

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const-string v1, "pref_camera_switch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v2, 0x7f0a0171

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ThumbnailController;->setData(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    return-void
.end method

.method private updateVirtualHwKeysOrientation(IZ)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public IsFirstTimeLaunch()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "pref_first_time_launch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->ContainsKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "pref_first_time_launch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PlaySound(I)V
    .locals 13

    const/4 v12, 0x7

    const/4 v11, -0x1

    const/4 v10, 0x2

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "mIsUIReady = false - PlaySound return"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-nez v0, :cond_2

    const-string v1, "HTCCamera"

    const-string v3, "PlaySound() - mAudioPlayer == null"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - set data source"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_SYSTEM_ENFORCED"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v10, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const-string v1, "HTCCamera"

    const-string v2, "Set stream volume"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    if-ne v1, v12, :cond_9

    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-ne v1, v11, :cond_5

    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-direct {p0, v6}, Lcom/android/camera/HTCCamera;->getAdjustedVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x2

    :try_start_3
    iput v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound failed"

    invoke-static {v1, v2, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_9
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-ne v1, v11, :cond_5

    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    const-string v1, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Ring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public RequestVideoQualityLevel()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-static {}, Lcom/android/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final abandonAudioFocus()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public activate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "activate!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "activate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "activate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v1, "activate in mIdle == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HTCCamera"

    const-string v1, "addFlags FLAG_SHOW_WHEN_LOCKED activate"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - activate!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.Activate"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-gtz v3, :cond_2

    const-string v3, "pref_camera_auto_focus"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v3, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-eq v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/camera/ConditionalQueryEvent;

    const-string v1, "Query.CanTriggerFocus"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/ConditionalQueryEvent;-><init>(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-ne v1, v3, :cond_7

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 7

    const/16 v6, 0x23

    const/4 v5, 0x6

    const/16 v4, 0x1f

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "HTCCamera"

    const-string v3, "cancelAutoFocus() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetFocusView()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v2, v0}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    :cond_2
    iput v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v6, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v4, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v0, "HTCCamera"

    const-string v2, "cancelAutoFocus() - end"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Zoom is locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto :goto_0
.end method

.method public changetoCameraMode()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSelfPortraitHint()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public changetoVideoMode()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v3, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "Change mode to Video - but current mode is Video !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v4, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_0
.end method

.method public checkCamcorderButtonRecord()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    :cond_0
    return-void
.end method

.method public checkInternalStorage()Z
    .locals 12

    const/4 v8, 0x0

    const-string v9, "HTCCamera"

    const-string v10, "Check Internal Storage"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v9, "/data"

    invoke-direct {v5, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    mul-long v6, v0, v2

    const-string v9, "HTCCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "internal memory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v9, 0x100000

    cmp-long v9, v6, v9

    if-lez v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v4

    const-string v9, "HTCCamera"

    const-string v10, "catch - checkInternalStorage with exception: "

    invoke-static {v9, v10, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final closeActionScreen()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "No action screen to close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "Cannot close action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeSettingsPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public final createMediaPlayer(I)Landroid/media/MediaPlayer;
    .locals 9

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x7

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_SYSTEM_ENFORCED"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v7, 0x2

    const-string v1, "HTCCamera"

    const-string v2, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deactivate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "HTCCamera"

    const-string v2, "deactivate!!!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v2, "deactivate - mUIHandler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v4, :cond_3

    const-string v1, "HTCCamera"

    const-string v2, "deactivate in mIdle = true"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "CameraActivity.Deactivate"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v1, :cond_4

    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v2, Lcom/android/camera/HTCCamera$35;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$35;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v2, 0x7f08018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v4, :cond_6

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-wide v1, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a013a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final disableFlash()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    goto :goto_0
.end method

.method public final disableSelfTimer()V
    .locals 5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v2, Lcom/android/camera/OneValueEvent;

    const-string v3, "SelfTimer.Changed"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0
.end method

.method public final disableSensorFocus()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    return-void
.end method

.method public disableTouchAEC()V
    .locals 2

    const/16 v1, 0x1f

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method public final disableTouchFocus()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x16

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x16

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_1
.end method

.method public doOnPause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetFocusView()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v4, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_5
    const-string v1, "HTCCamera"

    const-string v2, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v1}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    :cond_a
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v1}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    :cond_d
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v1}, Lcom/android/camera/FlashRestriction;->releaseFlashRestriction()V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    :cond_e
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->releaseSoundPool()V

    const-string v1, "HTCCamera"

    const-string v2, "doOnPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HTCCamera"

    const-string v2, "unregisterReceiver failed!!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final enableFlash()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    goto :goto_0
.end method

.method public enableGeoTagging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    goto :goto_0
.end method

.method public final enableSelfTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "SelfTimer.Changed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0
.end method

.method public final enableSensorFocus()V
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/HTCCamera;->mSensorFocusDisabledCounter:I

    return-void
.end method

.method public final enableTouchFocus(Z)V
    .locals 3

    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    iget v2, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v2, :cond_0

    if-eqz p1, :cond_0

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v2, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    :cond_0
    return-void
.end method

.method public final enterBurstMode()V
    .locals 1

    const-string v0, "Burst UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->enterBurstMode()V

    return-void
.end method

.method public final enterHdrMode()V
    .locals 1

    const-string v0, "HDR UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->enterHdrMode()V

    return-void
.end method

.method public final enterPanoramaMode()V
    .locals 1

    const-string v0, "Panorama UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->enterPanoramaMode()V

    return-void
.end method

.method public final exitBurstMode()V
    .locals 1

    const-string v0, "Burst UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->exitBurstMode()V

    return-void
.end method

.method public final exitHdrMode()V
    .locals 1

    const-string v0, "HDR UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HdrUI;->exitHdrMode()V

    return-void
.end method

.method public final exitPanoramaMode()V
    .locals 1

    const-string v0, "Panorama UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->exitPanoramaMode()V

    return-void
.end method

.method public final getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    return-object v0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    return v0
.end method

.method public getCameraLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    return-object v0
.end method

.method public final getEffectManager()Lcom/android/camera/effect/EffectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method public final getEventManager()Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method public getFaceNumber()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    goto :goto_0
.end method

.method public getFlashRestriction()Lcom/android/camera/FlashRestriction;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    return-object v0
.end method

.method public getFocusingState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public getFreezeOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    return v0
.end method

.method public getICSFace([Lcom/android/camera/FaceDetection$Face;)I
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0x7d0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0x7d0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v4

    div-int/lit16 v6, v6, 0x7d0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    aget-object v6, v6, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit16 v6, v6, 0x3e8

    mul-int/2addr v6, v4

    div-int/lit16 v6, v6, 0x7d0

    iput v6, v5, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "HTCCamera"

    const-string v6, "getFace failed: "

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :cond_1
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v2, v5

    :cond_2
    move v5, v2

    goto :goto_0
.end method

.method public getLastOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return v0
.end method

.method public getMainBarLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMainLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getMenuHandler()Lcom/android/camera/MenuHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method public getPrefSceneType(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "pref_camera_scene"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "pref_video_scene"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewSurfaceHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewSurfaceWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method public getRecordMS()J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRequestMode()Lcom/android/camera/IntentManager$RequestMode;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "getRequestMode() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    goto :goto_0
.end method

.method public getRequestName()Lcom/android/camera/IntentManager$RequestName;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "getRequestName() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    goto :goto_0
.end method

.method public getReviewDuration()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    return v0
.end method

.method public getSecondLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getSelfTimerInterval()I
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "pref_camera_self_timer"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "2s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "10s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0
.end method

.method public final getSessionID()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    return-wide v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getUpperLayout()Landroid/view/ViewGroup;
    .locals 2

    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "handleFaceFocus() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - take focus start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    iget-short v0, p1, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    iget-short v1, p1, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICS handleFaceFocus left,right,top,bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->sendFocusMessage(II)V

    const-string v0, "HTCCamera"

    const-string v1, "handleFaceFocus() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    const-string v2, "HTCCamera"

    const-string v3, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_0
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v1, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "onTouchEvent - UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v2, v1, :cond_2

    const-string v2, "HTCCamera"

    const-string v3, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/UIRequestEvent;

    const-string v4, "Request.CloseEffectPanel"

    invoke-direct {v3, v4, v1}, Lcom/android/camera/UIRequestEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v2, v1, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTapScreenCapture()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/camera/HTCCamera;->mTouchFocusDisabledCounter:I

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/HTCCamera;->takeFocus(II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchFocus(II)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchFocus - X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v3, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - mSurfaceView = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchFocus - mSurfaceView left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", right: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchFocus - mSurfaceView top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "handleTouchFocus - touch point not in mSurfaceView"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "HTCCamera"

    const-string v3, "Block Capture UI - take focus start"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v3, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :cond_4
    sput v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/HTCCamera;->mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/SensorHandler;->setTouchThreshold(Z)V

    :cond_5
    move v1, v2

    goto/16 :goto_0
.end method

.method public final hasFlash()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewFilterLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpecificEffect()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isEffectControlVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSwitchButton()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide_gps_indicator()V
    .locals 0

    return-void
.end method

.method public initFocusView()V
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    if-eqz v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "mFocusAnimation != null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f080048

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/camera/widget/CameraFocusWidget;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/CameraFocusWidget;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :cond_3
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    const v2, 0x7f0800ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public final is3DCameraActivated()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public final isAutoFocusing()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockCaptureUI()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return v0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isCameraThreadRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCameraThreadRunning:Z

    return v0
.end method

.method public isCancelFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return v0
.end method

.method public isCaptureTriggered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    return v0
.end method

.method public final isCaptureUIOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    return v0
.end method

.method public final isEffectControlVisible()Z
    .locals 2

    new-instance v0, Lcom/android/camera/QueryEvent;

    const-string v1, "Query.IsEffectControlVisible"

    invoke-direct {v0, v1}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isEffectPanelOpen()Z
    .locals 2

    new-instance v0, Lcom/android/camera/QueryEvent;

    const-string v1, "Query.IsEffectPanelOpen"

    invoke-direct {v0, v1}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFlashEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v0}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method public final isIdleOrPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isMenuMoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuMoving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isMenuOpen()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSettingMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mQualityMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchMenu:Lcom/android/camera/widget/PopupMenu;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOrientationLockNeeded()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "Panorama UI"

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->isPanoramaModeEntered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPanelReady()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanelVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    return v0
.end method

.method public isPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public final isPreviewStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "isRequestMode() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "isRequestName() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v1, v1, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isRequestSquare()Z
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

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

.method public final isSelfTimerDisabled()Z
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSelfTimerOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isServiceMode()Z
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTurnOnTorch()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    goto :goto_0
.end method

.method public isUIFreeze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return v0
.end method

.method public isUIReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method public final isUnknownServiceMode()Z
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    return v0
.end method

.method public final isZoomLockNeeded()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/ConditionalQueryEvent;

    const-string v1, "Query.IsZoomLockNeeded"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/ConditionalQueryEvent;-><init>(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    return v0
.end method

.method public final lockOrientation()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    goto :goto_0
.end method

.method public final lockOrientation(I)V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    if-ne p1, v3, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "unlock UI orientation"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    :goto_0
    return-void

    :cond_2
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock UI orientation in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotateChanged(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    goto :goto_0
.end method

.method public final lockZoom()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Zoom is already be locked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isZoomRangeRetrieved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMinimumZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Zoom.LockedStateChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v0, "HTCCamera"

    const-string v1, "lockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mapSceneNumFromSelector(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return p1

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public mapSceneNumToSelector(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final needsActionScreen()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "pref_camera_review_duration"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 2 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v3, "3s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 3 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v3, "5s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 5 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v3, "10s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 10 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_6
    const-string v3, "no_limit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is no limit"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_7
    const-string v2, "HTCCamera"

    const-string v3, "advanced settings - Review is no review"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public needsReview()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "not requested from album - Review is off"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    sget-boolean v3, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v3, :cond_1

    const-string v1, "HTCCamera"

    const-string v3, "self portrait - Review is no limit"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "pref_camera_review_duration"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 2 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "3s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 3 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v3, "5s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 5 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v3, "10s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is 10 seconds"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v3, "no_limit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "HTCCamera"

    const-string v3, "advanced settings - Review is no limit"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_6
    const-string v2, "HTCCamera"

    const-string v3, "advanced settings - Review is no review"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/HTCCamera$39;->$SwitchMap$com$android$camera$Global$REQUEST_CODE:[I

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult Unsupported REQUEST_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Global$REQUEST_CODE;->values()[Lcom/android/camera/Global$REQUEST_CODE;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0, p3}, Lcom/android/camera/AutoUploader;->handleAutoUploadSettingResult(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged LANDSCAPE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged PORTRAIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    goto :goto_0

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged Other"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    const-string v4, "[ANALYTIC_com.android.camera]"

    const-string v5, "[press_widget]launch"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HTCCamera"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const-wide/32 v5, 0x800000

    invoke-virtual {v4, v5, v6}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->requestWindowFeature(I)Z

    const v4, 0x7f030009

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setContentView(I)V

    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    new-instance v4, Lcom/android/camera/HTCCamera$MainHandler;

    invoke-direct {v4, p0, v9}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/CameraThread;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    new-instance v4, Lcom/android/camera/AutoUploader;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/AutoUploader;-><init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    new-instance v4, Lcom/android/camera/IntentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/IntentManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->start()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    :cond_0
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v4, :cond_8

    iput v7, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    :goto_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v5, v4, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    iget v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v4, v7, :cond_9

    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :goto_1
    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial m3DButtonStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    :cond_2
    const-string v4, "pref_camera_switch"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v4, "pref_front_camera_mode"

    invoke-static {p0, v4, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v4, "pref_camera_effect"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v4, "pref_video_effect"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-ne v4, v7, :cond_3

    const-string v4, "pref_camera_effect_manual"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "pref_camera_self_portrait"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v4, "pref_camera_self_timer"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v4, "pref_camera_face_number"

    const-string v5, "none"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "pref_camera_scene"

    const-string v5, "auto"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v4, "pref_video_scene"

    const-string v5, "auto"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    invoke-static {v8}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    iput v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v4

    if-ne v4, v7, :cond_5

    new-instance v4, Lcom/android/camera/HTCCamera$8;

    invoke-direct {v4, p0, p0}, Lcom/android/camera/HTCCamera$8;-><init>(Lcom/android/camera/HTCCamera;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_5
    sput-boolean v7, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    sput-boolean v8, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/android/camera/EventManager;

    invoke-direct {v4, p0}, Lcom/android/camera/EventManager;-><init>(Lcom/android/camera/IEventManagerOwner;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v4, Lcom/android/camera/effect/EffectManager;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectManager;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    new-instance v4, Lcom/android/camera/component/ComponentManager;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    new-instance v4, Lcom/android/camera/component/UIComponentFactory;

    invoke-direct {v4, p0}, Lcom/android/camera/component/UIComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4}, Lcom/android/camera/component/UIComponentFactory;->createAllSupportedComponents()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "ActionScreen.Closing"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "ActionScreen.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "EffectPanel.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "EffectPanel.Open"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "EffectPanel.Opening"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Ejected"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Mounted"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Unmounted"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Effect.Applied"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Request.ResetToDefault"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Menu.Opening"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Menu.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "3DMode.Switched"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Mode.Switching"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v4, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    :goto_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_6
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x38

    const-wide/16 v6, 0x1388

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->IsFirstTimeLaunch()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startCameraTutorial()V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_0

    :cond_9
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v4, "HTCCamera"

    const-string v5, "registerReceiver failed!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_a
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    :cond_b
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;

    invoke-direct {v4, p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_3

    :cond_c
    new-instance v4, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v4, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[press_back]close"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/HTCCamera$26;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$26;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "HTCCamera"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[close_camera]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    goto :goto_0
.end method

.method public final onEvent(Lcom/android/camera/Event;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/Event;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionScreen.Closing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ActionScreen.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V

    goto :goto_0

    :cond_2
    const-string v1, "EffectPanel.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onEffectPanelClosed()V

    goto :goto_0

    :cond_3
    const-string v1, "EffectPanel.Open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onEffectPanelOpen()V

    goto :goto_0

    :cond_4
    const-string v1, "EffectPanel.Opening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onEffectPanelOpening()V

    goto :goto_0

    :cond_5
    const-string v1, "Media.Saved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p1, Lcom/android/camera/MediaEvent;

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->onMediaSaved(Lcom/android/camera/MediaEvent;)V

    goto :goto_0

    :cond_6
    const-string v1, "RemovableStorage.Ejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageEjected()V

    goto :goto_0

    :cond_7
    const-string v1, "RemovableStorage.Mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageMounted()V

    goto :goto_0

    :cond_8
    const-string v1, "RemovableStorage.Unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageUnmounted()V

    goto :goto_0

    :cond_9
    const-string v1, "Request.ResetToDefault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onResetToDefault()V

    goto :goto_0

    :cond_a
    const-string v1, "Effect.Applied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onEffectApplied(Lcom/android/camera/Event;)V

    goto :goto_0

    :cond_b
    const-string v1, "Menu.Opening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onMenuOpening()V

    goto/16 :goto_0

    :cond_c
    const-string v1, "Menu.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onMenuClosed()V

    goto/16 :goto_0

    :cond_d
    const-string v1, "3DMode.Switched"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    check-cast p1, Lcom/android/camera/OneValueEvent;

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->on3DModeSwitched(Lcom/android/camera/OneValueEvent;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, "Mode.Switching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    check-cast p1, Lcom/android/camera/TwoValuesEvent;

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onModeSwitching(Lcom/android/camera/TwoValuesEvent;)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "Zoom.Changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    array-length v0, p1

    if-lez v0, :cond_0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceDetection num of faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/16 v10, 0x25

    const/4 v9, 0x0

    const/4 v5, 0x1

    new-instance v1, Lcom/android/camera/KeyEvent;

    const-string v6, "Key.Down"

    invoke-direct {v1, v6, p2}, Lcom/android/camera/KeyEvent;-><init>(Ljava/lang/String;Landroid/view/KeyEvent;)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v6, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v1}, Lcom/android/camera/KeyEvent;->isHandled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "HTCCamera"

    const-string v7, "KeyDown event is interrupted by event listener"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :sswitch_0
    return v5

    :cond_1
    iget v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v6, v5, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v6, v5, :cond_b

    const-string v6, "HTCCamera"

    const-string v7, "onKeyDown - UI Block !!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ne v6, v12, :cond_2

    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "HTCCamera"

    const-string v7, "onKeyDown - lock AEC/AWB"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6, v5}, Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-lez v6, :cond_3

    sget-boolean v6, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v6, :cond_2

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v6, "HTCCamera"

    const-string v7, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto :goto_0

    :cond_5
    const-string v6, "HTCCamera"

    const-string v7, "Press Record when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-lez v6, :cond_6

    sget-boolean v6, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v6, :cond_6

    const v3, 0x7f0a014b

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v10, v3, v9, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v6, "HTCCamera"

    const-string v7, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v6, v5, :cond_8

    const-string v6, "HTCCamera"

    const-string v7, "onKeyDown, 3D portrait capture !!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v6}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x50

    const v8, 0x7f0a0048

    invoke-static {v6, v7, v8, v2, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    const-string v6, "HTCCamera"

    const-string v7, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v9}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v9, v5}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v6, v5, :cond_2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v6, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v6, "HTCCamera"

    const-string v7, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v9, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    :sswitch_7
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_2

    goto/16 :goto_0

    :cond_b
    sparse-switch p1, :sswitch_data_1

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ne v6, v12, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v6

    if-ne v6, v5, :cond_c

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    :cond_c
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "HTCCamera"

    const-string v7, "onKeyDown - lock AEC/AWB"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6, v5}, Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V

    :cond_d
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v6, v5, :cond_10

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_f

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_e

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_f

    :cond_e
    const-string v6, "HTCCamera"

    const-string v7, "screen save mode -- action key pressed so activate camera"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_f
    const-string v6, "HTCCamera"

    const-string v7, "save screen - block camcorder key"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v6, v5, :cond_11

    const-string v6, "HTCCamera"

    const-string v7, "SIP is shown, not handle center button"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto/16 :goto_0

    :cond_12
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v6, "HTCCamera"

    const-string v7, "Press camcorder button to start video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    :sswitch_b
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v6, v5, :cond_15

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_14

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v6, v7, :cond_13

    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_14

    :cond_13
    const-string v6, "HTCCamera"

    const-string v7, "screen save mode -- action key pressed so activate camera"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_14
    const-string v6, "HTCCamera"

    const-string v7, "save screen - block capture key"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v6, :cond_16

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto/16 :goto_0

    :cond_16
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v6, v5, :cond_17

    const-string v6, "HTCCamera"

    const-string v7, "SIP is shown, not handle center button"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_19

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v6

    if-lez v6, :cond_18

    sget-boolean v6, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v6, :cond_18

    const v3, 0x7f0a014b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v10, v3, v9, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_18
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v6, "HTCCamera"

    const-string v7, "Press center button to take picture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto/16 :goto_0

    :cond_19
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v6, "HTCCamera"

    const-string v7, "Press center button to start video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    :cond_1a
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    :cond_1b
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_0

    :sswitch_d
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    :cond_1c
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    :cond_1d
    sget-object v6, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v7, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v6, v7, :cond_0

    :sswitch_e
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-ne v6, v5, :cond_1e

    const-string v6, "HTCCamera"

    const-string v7, "Press back key to stop video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto/16 :goto_0

    :cond_1e
    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z

    if-eqz v6, :cond_1f

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    goto/16 :goto_0

    :cond_1f
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v6

    if-nez v6, :cond_21

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v6, v5}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    move-result v0

    :cond_20
    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v6, v5, :cond_d

    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v6

    if-ne v6, v5, :cond_d

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v6}, Lcom/android/camera/IntentManager;->isFromCamcorder()Z

    move-result v6

    if-ne v6, v5, :cond_22

    const-string v6, "HTCCamera"

    const-string v7, "go Back - to finish CamcoderEntry"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_2

    :cond_22
    const-string v6, "HTCCamera"

    const-string v7, "go Back - to finish CameraEntry"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v6, :cond_23

    const-string v6, "HTCCamera"

    const-string v7, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    sget-boolean v6, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v6, :cond_24

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v6

    if-nez v6, :cond_24

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v6

    if-nez v6, :cond_24

    iget-boolean v6, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v6, :cond_24

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v6

    if-eqz v6, :cond_25

    :cond_24
    const-string v6, "HTCCamera"

    const-string v7, "!! Menu Key block !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v6

    if-nez v6, :cond_26

    const-string v6, "HTCCamera"

    const-string v7, "!! Menu Key block !! - low internal storage ..."

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v6, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const v7, 0x104039d

    invoke-static {v6, v10, v7, v9, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_26
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    goto/16 :goto_0

    :cond_27
    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v6}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_7
        0x17 -> :sswitch_4
        0x1b -> :sswitch_3
        0x42 -> :sswitch_4
        0x50 -> :sswitch_1
        0x52 -> :sswitch_5
        0xe4 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_e
        0x13 -> :sswitch_d
        0x14 -> :sswitch_c
        0x17 -> :sswitch_b
        0x1b -> :sswitch_a
        0x42 -> :sswitch_b
        0x50 -> :sswitch_8
        0x52 -> :sswitch_f
        0x54 -> :sswitch_0
        0xe4 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/android/camera/KeyEvent;

    const-string v2, "Key.Up"

    invoke-direct {v0, v2, p2}, Lcom/android/camera/KeyEvent;-><init>(Ljava/lang/String;Landroid/view/KeyEvent;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "KeyUp event is interrupted by event listener"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return v1

    :cond_0
    const/16 v2, 0x50

    if-ne p1, v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "onKeyUp - unlock AEC/AWB"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V

    :cond_1
    :goto_1
    if-ne p1, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ge v2, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_3
    const-string v2, "HTCCamera"

    const-string v3, "onKeyUp - unlock AEC/AWB, but no camera thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v1, :cond_5

    const-string v2, "HTCCamera"

    const-string v3, "onKeyUp - UI Block !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMediaSaved(Lcom/android/camera/MediaEvent;)V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/MediaEvent;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    instance-of v0, p1, Lcom/android/camera/PictureSavedEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lcom/android/camera/PictureSavedEvent;

    invoke-virtual {p1}, Lcom/android/camera/PictureSavedEvent;->isLastPicture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startScaladoPostProcessing(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->setSaveDone()V

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "onMediaSaved() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "Cannot start Scalado post-processing because there is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    if-ne v0, v3, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "need to do create, not to initate mode onNewIntent!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    sput-boolean v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const-string v0, "pref_camera_switch"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v0, "pref_camera_effect"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_video_effect"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "pref_camera_effect_manual"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "pref_front_camera_mode"

    invoke-static {p0, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v0, "pref_camera_self_portrait"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v0, "pref_camera_self_timer"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_camera_face_number"

    const-string v1, "none"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_scene"

    const-string v1, "auto"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_video_scene"

    const-string v1, "auto"

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.NewIntent"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v1, "addFlags FLAG_SHOW_WHEN_LOCKED onNewIntent"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 9

    const/16 v8, 0x40

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "HTCCamera"

    const-string v3, "onPause() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput v4, p0, Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I

    iput v4, p0, Lcom/android/camera/HTCCamera;->mSelfTimerDisableCounter:I

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    const-string v2, "HTCCamera"

    const-string v3, "onPause() - mIsUIReady = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v3, "CameraActivity.Pausing"

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "clearFlags FLAG_SHOW_WHEN_LOCKED onPause"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->restoreVolume()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x41

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    const-string v2, "HTCCamera"

    const-string v3, "onPause() - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetMainBarBtn()V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mMenuIsOpening:Z

    const-string v2, "HTCCamera"

    const-string v3, "OnPause - set mWaitResetSettings to false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v2, :cond_f

    const-string v2, "HTCCamera"

    const-string v3, "onPause mIdle is false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v5, :cond_6

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->WriteModePreference()V

    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_8
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v2, "HTCCamera"

    const-string v3, "OnPause - Freeze UI !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v2

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v4, v4}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    :cond_a
    const/4 v1, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.eas.intent.resumeSync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.eas.extra.tag"

    const-string v3, "com.android.camera.HTCCamera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "pref_fast_fps"

    invoke-static {p0, v2, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v2, "pref_fast_frame_resolution_temp"

    const-string v3, "null"

    invoke-static {p0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x48

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :cond_e
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x44

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x45

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->doOnPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    const-string v2, "HTCCamera"

    const-string v3, "onPause() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const-string v2, "HTCCamera"

    const-string v3, "onPause mIdle is true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    const-string v3, "unregisterReceiver failed - mKeyguardReceiver"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_10
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "HTCCamera"

    const-string v1, "onRestart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v8, "HTCCamera"

    const-string v9, "onResume() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.htc.eas.intent.pauseSync"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.htc.eas.extra.tag"

    const-string v9, "com.android.camera.HTCCamera"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopVoiceRecording()V

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    :goto_1
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " keep backgroundDataSetting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v8, v11, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    :cond_0
    :goto_2
    iget v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-static {v8}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-direct {p0, v8, v11}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    :cond_1
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    iput v8, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initial Display Orientation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v8

    if-ne v8, v11, :cond_2

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    invoke-static {}, Lcom/android/camera/SensorHandler;->createFocusFile()V

    const-string v8, "HTCCamera"

    const-string v9, "OnResume - reset UI, immediately set mMainLayout invisible"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v8, "HTCCamera"

    const-string v9, "registerReceiver failed - mKeyguardReceiver"

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    const-string v8, "HTCCamera"

    const-string v9, "connManager is null"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    if-nez v8, :cond_a

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-ne v8, v11, :cond_8

    :cond_7
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v8, :cond_12

    iput v11, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    :goto_4
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v9, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v9, v8, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    :cond_9
    iget v8, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v8, v11, :cond_13

    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v8, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :goto_5
    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initial m3DButtonStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v8, 0x3e9

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    :cond_a
    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-nez v8, :cond_b

    new-instance v8, Lcom/android/camera/FlashRestriction;

    invoke-direct {v8}, Lcom/android/camera/FlashRestriction;-><init>()V

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    const-string v8, "HTCCamera"

    const-string v9, "initFlashRestriction - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v8, p0}, Lcom/android/camera/FlashRestriction;->initFlashRestriction(Lcom/android/camera/HTCCamera;)V

    const-string v8, "HTCCamera"

    const-string v9, "initFlashRestriction - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const-string v9, "PowerWarning UI"

    invoke-virtual {v8, v9}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/component/Component;->initialize()V

    :cond_b
    const-string v8, "HTCCamera"

    const-string v9, "Block Capture UI - onResume(), and unblock after start preview"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v11, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    const-string v8, "HTCCamera"

    const-string v9, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const-string v8, "keyguard"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "HTCCamera"

    const-string v9, "keyguard is shown !!!!!"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v11, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-eq v11, v8, :cond_c

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-ne v13, v8, :cond_d

    :cond_c
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :cond_d
    :goto_7
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    iput-object v14, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    const-string v8, "HTCCamera"

    const-string v9, "OnResume - set mWaitResetSettings to true"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v8, :cond_16

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-eq v11, v8, :cond_e

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-ne v13, v8, :cond_f

    :cond_e
    const-string v8, "HTCCamera"

    const-string v9, "onResume: addFlags FLAG_SHOW_WHEN_LOCKED. mIdle == false)"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    :goto_8
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v12}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_10
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v9, "CameraActivity.Resuming"

    invoke-virtual {v8, v9}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v8

    if-ne v8, v11, :cond_11

    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    :cond_11
    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    const-string v8, "HTCCamera"

    const-string v9, "onResume() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v8

    iput v8, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_4

    :cond_13
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v8, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_5

    :catch_1
    move-exception v1

    const-string v8, "HTCCamera"

    const-string v9, "registerReceiver failed!!"

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_14
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v8, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_6

    :cond_15
    const-string v8, "HTCCamera"

    const-string v9, "keyguard is not shown !!!!!"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v12, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    iput-boolean v12, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto/16 :goto_7

    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    :cond_16
    sget-boolean v8, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v8, :cond_17

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-eq v11, v8, :cond_17

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v8}, Lcom/android/camera/IntentManager;->getLaunchedby()I

    move-result v8

    if-ne v13, v8, :cond_19

    :cond_17
    sget-boolean v8, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-nez v8, :cond_18

    const-string v8, "HTCCamera"

    const-string v9, "mIsKeyguardShow is false, activate"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_8

    :cond_18
    const-string v8, "HTCCamera"

    const-string v9, "DisplayDevice.supportShowWhenLock() && by SHORTCUT or HOTKEY"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    const-string v8, "HTCCamera"

    const-string v9, "mIsKeyguardShow is true, setWaitKeyguardBeforePreview(true)"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto/16 :goto_8
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "HTCCamera"

    const-string v1, "onStart() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onStart() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "onStop() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "onStop() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openCaptureUI()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_7

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Open"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->hasGeoTagging()Z

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDisplayGPSindicator()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->show_gps_indicator()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-lez v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSelfPortraitHint()V

    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->updateSceneGuide(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    goto :goto_2
.end method

.method public final playSound(Landroid/media/MediaPlayer;ZZZ)V
    .locals 7

    const/4 v6, -0x1

    const-string v4, "HTCCamera"

    const-string v5, "playSound() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->requestAudioFocus()V

    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v4, :cond_2

    const-string v4, "HTCCamera"

    const-string v5, "mIsUIReady = false - PlaySound return"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const-string v4, "HTCCamera"

    const-string v5, "Release media player"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->abandonAudioFocus()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    const/4 v2, 0x7

    const-string v4, "HTCCamera"

    const-string v5, "PlaySound() - StreamType : STREAM_SYSTEM_ENFORCED"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez p3, :cond_4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_4
    new-instance v4, Lcom/android/camera/HTCCamera$33;

    invoke-direct {v4, p0, p4}, Lcom/android/camera/HTCCamera$33;-><init>(Lcom/android/camera/HTCCamera;Z)V

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v4, Lcom/android/camera/HTCCamera$34;

    invoke-direct {v4, p0, p4}, Lcom/android/camera/HTCCamera$34;-><init>(Lcom/android/camera/HTCCamera;Z)V

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    const-string v4, "HTCCamera"

    const-string v5, "Set stream volume"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v4, 0x7

    if-ne v2, v4, :cond_a

    iget v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-ne v4, v6, :cond_6

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOriginalVolume_Alarm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->getAdjustedVolume(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string v4, "HTCCamera"

    const-string v5, "playSound() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_8
    const/4 v2, 0x2

    :try_start_3
    const-string v4, "HTCCamera"

    const-string v5, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "HTCCamera"

    const-string v5, "PlaySound failed"

    invoke-static {v4, v5, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v4, :cond_9

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    :cond_9
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :cond_a
    iget v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-ne v4, v6, :cond_6

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOriginalVolume_Ring = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public powerWarningOn(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    sput v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto :goto_0
.end method

.method public final prepareActionScreen()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "mIsUIReady = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "Action screen is not needed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->prepare()V

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/NoUIRequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_1

    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "No available action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    const-string v0, "HTCCamera"

    const-string v1, "Cannot prepare action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reachBeepCount()Z
    .locals 2

    sget v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFocusSensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->registerSensor()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->unregisterSensor()V

    goto :goto_0
.end method

.method public releaseFaceDetection()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "releaseFaceDetection()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->releaseFaceDetection()V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    :cond_0
    return-void
.end method

.method public final reloadSettings()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - reloadSettings()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    const-string v0, "HTCCamera"

    const-string v1, "reloadSettings() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method public final requestAudioFocus()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return-void
.end method

.method public resetBeepCount()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return-void
.end method

.method public resetFocusMode()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    return-void
.end method

.method public resetForDOT()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "pref_camera_scene_ds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_camera_scene_service_ds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public resetIndicatorLayout()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    return-void
.end method

.method public final resetScreenSaveTimer()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    iget v2, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_0
    return-void
.end method

.method public reset_layout_from_surface(II)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset_layout_from_surface - width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v3, "HTCCamera"

    const-string v4, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "HTCCamera"

    const-string v4, "Reset layout end, set mMainLayout visible"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v3, :cond_1

    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v3, :cond_2

    const v3, 0x7f080054

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v6, :cond_3

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v6, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    if-nez v3, :cond_4

    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    const v4, 0x7f08015b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    :cond_4
    if-ge p1, p2, :cond_7

    move v1, p1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void

    :cond_6
    const v3, 0x7f08005a

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    goto/16 :goto_0

    :cond_7
    move v1, p2

    goto :goto_1
.end method

.method public final restartCamera()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Camera.Restart"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    const-string v0, "HTCCamera"

    const-string v1, "Block Capture UI - restartCamera()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->setWaitResetSettings(Z)V

    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "true"

    invoke-static {v0, v2, v3, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method public restoreBackgrounddataSetting()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreBackgrounddataSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final returnRequestedMedia()V
    .locals 11

    const/4 v10, -0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "HTCCamera"

    const-string v8, "Returning media from non-service mode"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v7, "HTCCamera"

    const-string v8, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v6, :cond_4

    const-string v7, "output"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "image/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v5, :cond_3

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    sget-object v7, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v7}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const-string v7, "return-data"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getJpegData()[B

    move-result-object v4

    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-nez v4, :cond_9

    const-string v7, "HTCCamera"

    const-string v8, "contacts - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->resetJpegData()V

    :cond_8
    invoke-virtual {p0, v10, v3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v8

    sget-object v9, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_a
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v7, "jpeg_data"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2

    :cond_c
    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_10

    if-nez v4, :cond_d

    const-string v7, "HTCCamera"

    const-string v8, "square - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v8

    sget v9, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v4, v7, v8, v9}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_e
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {p0, v10}, Lcom/android/camera/HTCCamera;->setResult(I)V

    invoke-direct {p0, v6, v4}, Lcom/android/camera/HTCCamera;->saveAndFinish(Landroid/net/Uri;[B)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return request:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    if-nez v7, :cond_7

    if-eqz v4, :cond_13

    const v7, 0x19000

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v10, v7, v8}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v7, "inline-data"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_12
    const-string v7, "HTCCamera"

    const-string v8, "return jpeg decode error!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string v7, "HTCCamera"

    const-string v8, "inline-data - jpeg data is null !!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set BackgroundDataSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBlock3DSwitch(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return-void
.end method

.method public setBlockCaptureUI(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return-void
.end method

.method public setFocusingState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return-void
.end method

.method public setIconPosition(ILandroid/view/View;)V
    .locals 6

    const/16 v5, 0x78

    const/16 v4, 0x6f

    const/4 v3, 0x4

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x16f

    invoke-virtual {v0, v2, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x16f

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v5, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v2, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPowerWarning(Z)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return-void
.end method

.method public setTurnOnTorch(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    return-void
.end method

.method public setWaitResetSettings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return-void
.end method

.method public set_mBlockCaptureUI(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return-void
.end method

.method public final showActionScreen()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showActionScreen(I)V

    return-void
.end method

.method public final showActionScreen(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_3

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mPreparedActionScreenSessionID:J

    iget-wide v2, p0, Lcom/android/camera/HTCCamera;->mSessionID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V

    :goto_0
    return-void

    :cond_1
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->open()V

    goto :goto_0

    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "No action screen to open"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    if-gtz p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const-string v0, "HTCCamera"

    const-string v1, "Cannot show action screen because there is no handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final showMainBarItems(ZZ)V
    .locals 8

    const/4 v1, 0x3

    const/4 v7, 0x2

    const-wide/16 v4, 0xc8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    move v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    move v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public final showToast(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    return-void
.end method

.method public show_gps_indicator()V
    .locals 0

    return-void
.end method

.method public final startAlbum()V
    .locals 3

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "FROM_CAMERA"

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    goto :goto_0
.end method

.method public final startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "Returning to album"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "preview_mode"

    const-string v3, "filmstrip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "HTCCamera"

    const-string v3, "Going to album"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_1

    const-string v2, "capture_mode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "preview_mode"

    const-string v3, "filmstrip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start album : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "capture_mode"

    const-string v3, "comcorder"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public startCameraTutorial()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.camera.tutorial.CAMERA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceChanged $$$$$$$$$$$$$$$$$$$$$$$$$$$ w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceCreated $$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceCreated $$$$$$$$$$$$$$$$$$$$$$$$$$$  start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "HTCCamera"

    const-string v1, "surfaceCreated before onResume - set mIdle = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceDestroyed $$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final switchFlashMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFlashEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pref_camera_flash_mode"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "on"

    :goto_0
    const-string v1, "pref_camera_flash_mode"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    return-void

    :cond_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "off"

    goto :goto_0

    :cond_2
    const-string v0, "auto"

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public switchMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchMode(ZI)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "Mode.Switched"

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v4, v3, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "HTCCamera"

    const-string v5, "change camera mode when focusing, cancel focus"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v4, "HTCCamera"

    const-string v5, "UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v3, "HTCCamera"

    const-string v4, "change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v4

    if-eq p1, v4, :cond_4

    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-ne p2, v4, :cond_5

    move v2, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    sget-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v4, :cond_1

    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    if-nez p1, :cond_a

    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v4, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v1, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v5, Lcom/android/camera/TwoValuesEvent;

    const-string v6, "Mode.Switching"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/camera/TwoValuesEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    const-string v4, "HTCCamera"

    const-string v5, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    const-string v4, "pref_camera_switch"

    invoke-static {p0, v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v4, :cond_b

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_7
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-eq p2, v4, :cond_c

    packed-switch p2, :pswitch_data_0

    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try switching to unknown mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "true"

    invoke-static {v4, v2, v3, v2, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_8
    :goto_4
    move v2, v3

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_2

    :cond_a
    const/4 v1, 0x2

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->unlockOrientation()V

    goto :goto_3

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->changetoCameraMode()V

    goto :goto_4

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->changetoVideoMode()V

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "true"

    invoke-static {v4, v2, v3, v2, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_4

    :cond_d
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final takeFocus(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    :cond_0
    return-void
.end method

.method public final unblockCaptureUI()V
    .locals 2

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Unblock"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final unlockOrientation()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    return-void
.end method

.method public final unlockZoom()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "Zoom is already be unlocked"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Zoom.LockedStateChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v0, "HTCCamera"

    const-string v1, "unlockZoom() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAutoScene_ds(I)V
    .locals 3

    const v2, 0x7f020046

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateBeepLevel(I)V
    .locals 12

    const/4 v4, 0x0

    const/high16 v2, 0x7f06

    const/16 v5, 0xc8

    const/4 v3, 0x0

    const/16 v1, 0x45

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eq v9, v5, :cond_0

    sput v3, Lcom/android/camera/HTCCamera;->mBeepCount:I

    :cond_0
    sget v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    if-ne v0, v9, :cond_2

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/16 v9, 0xc8

    goto :goto_0

    :pswitch_1
    const/4 v9, -0x1

    goto :goto_0

    :cond_2
    sput v9, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    if-ne v9, v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    sub-long v7, v5, v10

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-wide/16 v5, 0xc8

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    sub-long/2addr v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDOTCaptureIcon(ZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    const/high16 v1, 0x7f0a

    const v2, 0x7f020073

    invoke-static {p0, v1, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f0201aa

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f020075

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f0201ab

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateFaceIcon(I)V
    .locals 5

    const/16 v4, 0x45

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    if-lez p1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/high16 v1, 0x7f06

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public final updateFlashMode()V
    .locals 18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/HTCCamera$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/HTCCamera$31;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "HTCCamera"

    const-string v3, "Cannot update flash mode, because there is no handler for UI"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->isFlashEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "off"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f020115

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_7

    const v2, 0x7f0a01c1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    const v3, 0x7f0a0174

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->hasFlash()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v8, v2, 0x5a

    new-instance v1, Landroid/view/animation/RotateAnimation;

    int-to-float v2, v8

    int-to-float v3, v8

    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f020057

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "pref_camera_flash_mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v2, 0x7f07000a

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_f

    const v2, 0x7f070009

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_10

    const v2, 0x7f07000c

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v15

    const/4 v10, -0x1

    array-length v2, v13

    add-int/lit8 v16, v2, -0x1

    :goto_7
    if-ltz v16, :cond_a

    aget-object v2, v13, v16

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move/from16 v10, v16

    :cond_a
    if-gez v10, :cond_b

    const/4 v10, 0x0

    const-string v12, "auto"

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    const/4 v3, 0x0

    invoke-virtual {v11, v10, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v8, v2, 0x5a

    new-instance v1, Landroid/view/animation/RotateAnimation;

    int-to-float v2, v8

    int-to-float v3, v8

    const/4 v4, 0x1

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageTextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-eqz v2, :cond_e

    const-string v12, "torch"

    :goto_a
    goto/16 :goto_4

    :cond_e
    const-string v12, "off"

    goto :goto_a

    :cond_f
    const v2, 0x7f07000d

    goto/16 :goto_5

    :cond_10
    const v2, 0x7f07000b

    goto/16 :goto_6

    :cond_11
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v15, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_13
    sget-boolean v2, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-nez v2, :cond_16

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_14

    const v9, 0x7f020115

    :goto_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_15

    const v14, 0x7f0a01c1

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v9}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    :cond_14
    const v9, 0x7f020057

    goto :goto_b

    :cond_15
    const v14, 0x7f0a0174

    goto :goto_c

    :cond_16
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_17

    const v9, 0x7f020116

    :goto_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_18

    const v14, 0x7f0a01c0

    :goto_e
    goto :goto_c

    :cond_17
    const v9, 0x7f020058

    goto :goto_d

    :cond_18
    const v14, 0x7f0a0173

    goto :goto_e

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->mFlash_icon:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v14}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    goto/16 :goto_9
.end method

.method public updateIndicatorLayout_AutoCapture()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSelfPortraitHint()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    goto :goto_0
.end method
