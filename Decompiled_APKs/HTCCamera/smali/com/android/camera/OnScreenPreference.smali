.class public Lcom/android/camera/OnScreenPreference;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
.implements Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final GROUP_KEY:Ljava/lang/String; = "group"

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OnScreenPreference"


# instance fields
.field private ISOValue_manual:Ljava/lang/String;

.field private ImgBrightnessValue_manual:Ljava/lang/String;

.field private ImgContrastValue_manual:Ljava/lang/String;

.field private ImgSaturationValue_manual:Ljava/lang/String;

.field private ImgSharpnessValue_manual:Ljava/lang/String;

.field private WhitebalanceValue_manual:Ljava/lang/String;

.field private bAutoFocus:Z

.field private bBlinkDetection:Z

.field private bFaceDetection:Z

.field private bFastFrameRecording:Z

.field private bIs3DCamera:Z

.field private bPostProcessing:Z

.field private bRecordWithAudio:Z

.field private bShutterSound:Z

.field private bSmileCapture:Z

.field private bStereoRecording:Z

.field private bSwitchCamera:Z

.field private bWideScreen:Z

.field private isCheckGPS_Setting:Z

.field private m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

.field private m3DFileFormatPref:Landroid/preference/ListPreference;

.field private m3DFileFormatValue:Ljava/lang/String;

.field private mAutoFocusPref:Landroid/preference/CheckBoxPreference;

.field private mAutoUploadFrequence:Ljava/lang/String;

.field private mAutoUploadPref:Landroid/preference/Preference;

.field private mAutoUploadService:Ljava/lang/String;

.field private mAutoUploadServiceLabel:Ljava/lang/String;

.field private mAutoUploadServiceTitle:Ljava/lang/String;

.field private mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mDialog:Landroid/app/Dialog;

.field private mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

.field private mFastFrameRecording:Landroid/preference/CheckBoxPreference;

.field private mGeneral_isWideScreen:Z

.field private mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mImageRatioPref:Landroid/preference/CheckBoxPreference;

.field private mManager:Landroid/preference/PreferenceManager;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mModeHdr:Lcom/android/camera/ModeHandler;

.field private mPostProcessingPref:Landroid/preference/CheckBoxPreference;

.field private mRecordWithAudio:Landroid/preference/CheckBoxPreference;

.field private mRecordingLengthPref:Landroid/preference/Preference;

.field private mResolutionItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewDurationPref:Landroid/preference/ListPreference;

.field private mReviewDurationValue:Ljava/lang/String;

.field private mScenePref:Landroid/preference/ListPreference;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSelfPortraitPref:Landroid/preference/Preference;

.field private mSelfTimerPref:Landroid/preference/ListPreference;

.field private mShutterSoundPref:Landroid/preference/CheckBoxPreference;

.field private mSmileCapturePref:Landroid/preference/CheckBoxPreference;

.field private mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

.field private mTimeStampPref:Landroid/preference/CheckBoxPreference;

.field private mUIHandler:Landroid/os/Handler;

.field private mVideoFileFormatPref:Landroid/preference/ListPreference;

.field private mVideoFileFormatValue:Ljava/lang/String;

.field private oldISOValue:Ljava/lang/String;

.field private oldImgBrightnessValue:Ljava/lang/String;

.field private oldImgContrastValue:Ljava/lang/String;

.field private oldImgSaturationValue:Ljava/lang/String;

.field private oldImgSharpnessValue:Ljava/lang/String;

.field private oldWhitebalanceValue:Ljava/lang/String;

.field private tempValue_ds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScenePref:Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    const-string v0, "3s"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    const-string v0, "mpo"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->WhitebalanceValue_manual:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ISOValue_manual:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgBrightnessValue_manual:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgContrastValue_manual:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgSaturationValue_manual:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgSharpnessValue_manual:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadFrequence:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/OnScreenPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/OnScreenPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    return p1
.end method

.method private addEncodeType_H264(Landroid/preference/PreferenceScreen;)V
    .locals 13

    const-string v11, "pref_capture_format_video"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportH264()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v12, 0x7f0a00bb

    invoke-virtual {v11, v12}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "h264"

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_1
    array-length v11, v2

    if-ge v6, v11, :cond_3

    aget-object v11, v1, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    aget-object v11, v1, v6

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v11, v2, v6

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v11, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v11, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addOptinalRecordingLimit(Landroid/preference/PreferenceScreen;)V
    .locals 11

    const-string v9, "pref_camera_recording_limit"

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasLimit250KB()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v10, 0x7f0a00be

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "250kb"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_1
    array-length v9, v1

    if-ge v5, v9, :cond_2

    aget-object v9, v0, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v1, v5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v9, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v9, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private backupISOSettings_DOT(Landroid/preference/ListPreference;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_iso_manual"

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const-string v8, "null"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v8, "OnScreenPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeResolutionBySlowMotion Resolution:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "pref_set_resolution"

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    if-nez v4, :cond_1

    const-string v8, "OnScreenPreference"

    const-string v9, "setupResolutionList failed - no resolution preference"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    iget-object v8, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v2

    :cond_2
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    const-string v8, "OnScreenPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeResolutionBySlowMotion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v6

    const-string v8, "OnScreenPreference"

    const-string v9, "Block Capture UI - set resolution"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8, v11}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v6, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private check3DCamera(Z)V
    .locals 4

    const/16 v3, 0x4f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private checkAutoFocus(Z)V
    .locals 3

    const/16 v2, 0x1f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method private checkBlinkDetection(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private checkFastFrameRecording(Landroid/preference/PreferenceScreen;Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v3, "1080p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "1080p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "720p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v3, "720p"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    :cond_1
    return-void

    :cond_2
    const-string v3, "720p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "720p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "QHD"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v3, "QHD"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "WVGA"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v3, "WVGA"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "QCIF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "QCIF"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "QVGA"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v3, "QVGA"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    invoke-static {v3, v4, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v1}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-direct {p0, v2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    goto :goto_2
.end method

.method private checkGeoTagging()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkLocationSetting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    return-void
.end method

.method private checkLocationSetting()Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "OnScreenPreference"

    const-string v4, "checkLocationSetting() has exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkRecordWithAudio(Z)V
    .locals 4

    const/16 v3, 0x38

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkRecordingLength()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x61a8

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_MaximumSize()I

    move-result v3

    int-to-long v0, v3

    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", less then safe size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    :cond_2
    const-string v3, "%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x400

    div-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v6, 0x7f0a013e

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/IntentManager;->getVideoMaximum_Size()J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", less then safe size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private checkSceneSettingForDOT()Z
    .locals 13

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_scene_ds"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_1

    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :cond_1
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    :cond_2
    const/4 v0, 0x1

    :goto_2
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_effect"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    :cond_3
    if-eqz v1, :cond_4

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_3
    if-nez v0, :cond_10

    const/16 v8, 0x8

    if-eq v7, v8, :cond_e

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance"

    const-string v10, "auto"

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "auto"

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_set_white_balance"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_6
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v8, :cond_8

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_iso"

    const-string v10, "auto"

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v8, "iso"

    const-string v9, "auto"

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_7
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_iso"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    const/16 v8, 0x8

    if-eq v7, v8, :cond_9

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_brightness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_contrast"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "contrast"

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_saturation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "saturation"

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_shaprness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "sharpness"

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_9
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_image_property"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_a
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_scene_service_ds"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_d
    if-eqz v1, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_e
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_f

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    :goto_6
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance"

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_f
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance_2nd"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    goto :goto_6

    :cond_10
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_white_balance"

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_11
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_set_white_balance"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_12
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v8, :cond_16

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_iso_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_13
    const-string v8, "auto"

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    :cond_14
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_iso"

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_15

    const-string v8, "iso"

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_15
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_iso"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->getCurrentEffectPreference()Ljava/lang/String;

    move-result-object v8

    const-string v9, "none"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_a

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_brightness_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_7
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_brightness"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_contrast_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_8
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_contrast"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "contrast"

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_saturation_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_9
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_saturation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "saturation"

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_sharpness_manual"

    invoke-static {v8, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_a
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v9, "pref_camera_shaprness"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    const/4 v10, 0x0

    const-string v11, "sharpness"

    invoke-static {v8, v9, v5, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "pref_camera_image_property"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_17
    const/4 v5, 0x2

    goto/16 :goto_7

    :cond_18
    const/4 v5, 0x2

    goto/16 :goto_8

    :cond_19
    const/4 v5, 0x2

    goto :goto_9

    :cond_1a
    const/4 v5, 0x2

    goto :goto_a
.end method

.method private checkSmileCapture(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private closeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private doSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    const-string v0, "OnScreenPreference"

    const-string v1, "Block Capture UI - doSettings()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method private filterSceneOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;I)V
    .locals 9

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    aget-object v7, v1, v4

    const-string v8, "panorama"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v4

    const-string v8, "burst"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v4

    const-string v8, "hdr"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v1, v4

    const-string v8, "sunset"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    if-ne p3, v7, :cond_4

    aget-object v7, v1, v4

    const-string v8, "night"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_4
    aget-object v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v7, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private filterUnsupportedISO(Landroid/preference/PreferenceScreen;)V
    .locals 8

    const-string v7, "pref_camera_iso"

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO1250()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_2

    aget-object v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Landroid/preference/PreferenceScreen;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v11, v11, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v11, :cond_1

    const-string v11, "pref_camera_effect"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    :goto_0
    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f070023

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v11, 0x7f070024

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f070025

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v11, 0x7f070026

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v11, v11, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v11, :cond_5

    const/4 v1, 0x0

    :goto_1
    array-length v11, v3

    if-ge v1, v11, :cond_5

    sget-boolean v11, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v11, :cond_2

    aget-object v11, v9, v1

    const-string v12, "dots"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v11, "pref_video_effect"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v11

    if-eqz v11, :cond_3

    aget-object v11, v9, v1

    const-string v12, "panorama"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    aget-object v11, v9, v1

    const-string v12, "burst"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    aget-object v11, v9, v1

    const-string v12, "hdr"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v11

    if-eqz v11, :cond_4

    aget-object v11, v9, v1

    const-string v12, "depth"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->getCurrentScene_DOT()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v11}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_4
    aget-object v11, v3, v1

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v9, v1

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_6

    aget-object v11, v3, v13

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v9, v13

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x0

    :goto_3
    array-length v11, v8

    if-ge v1, v11, :cond_9

    aget-object v11, v8, v1

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v11, v11, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v11, :cond_7

    aget-object v11, v8, v1

    const-string v12, "sepia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "vintage-sepia"

    aput-object v11, v8, v1

    :cond_7
    aget-object v11, v2, v1

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v11, v8, v1

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v11, v6, [Ljava/lang/CharSequence;

    invoke-interface {v4, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v11, v6, [Ljava/lang/CharSequence;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private filterUnsupportedOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    invoke-static/range {p1 .. p2}, Lcom/android/camera/OnScreenPreference;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v17, 0x7f070025

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    const v17, 0x7f070026

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_2

    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v3

    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v17, v3, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    if-nez v6, :cond_3

    const/16 v17, 0x0

    aget-object v17, v11, v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    aget-object v17, v2, v6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v17, v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private initImageRatio()V
    .locals 3

    const v2, 0x7f0a0082

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->setImageRatio_MMS()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;Landroid/hardware/Camera;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p2, :cond_1

    const-string v5, "OnScreenPreference"

    const-string v6, "initPreference() - camera device = null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "group"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_23

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showISOInMenu()Z

    move-result v5

    if-ne v5, v7, :cond_2b

    :cond_3
    const-string v5, "pref_camera_iso"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "pref_camera_flash_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v5

    if-ne v5, v7, :cond_6

    const-string v5, "pref_play_shutter_sound"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "pref_camera_auto_focus"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "pref_face_detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showEffectInMenu()Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "pref_camera_effect"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    const-string v5, "pref_video_effect"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "pref_camera_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    const-string v5, "pref_video_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "pref_smile_capture"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string v5, "pref_blink detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    const-string v5, "pref_camera_tutorial"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "pref_fast_fps"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "pref_camera_switch"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    :goto_2
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "pref_camera_review_duration"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    const-string v5, "pref_grid"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    const-string v5, "pref_fast_fps"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_16
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_17
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoFormatChoosing()Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1a
    sget-boolean v5, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v5, :cond_1b

    const-string v5, "pref_post_processing"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "pref_stereo_recording"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    const-string v5, "pref_post_processing"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    const-string v5, "pref_face_detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1f
    const-string v5, "pref_set_resolution"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_20
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_21
    const-string v5, "pref_camera_3D_status"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "pref_auto_upload"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v5, v7, :cond_24

    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->addOptinalRecordingLimit(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->addEncodeType_H264(Landroid/preference/PreferenceScreen;)V

    :cond_24
    const-string v5, "pref_camera_timestamp"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_geo_tagging"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_post_processing"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_stereo_recording"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_switch"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_3D_status"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_auto_focus"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_face_detection"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_play_shutter_sound"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_review_duration"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    const-string v5, "pref_camera_self_timer"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    const-string v5, "pref_camera_self_portrait"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    const-string v5, "pref_camera_recording_limit"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    const-string v5, "pref_auto_upload"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "pref_fast_fps"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_camera_record_with_audio"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    :cond_25
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "pref_smile_capture"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_blink detection"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    :cond_26
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->initSettingInfo()V

    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->NoResolutionChoiceIn2ndCam()Z

    move-result v5

    if-ne v5, v7, :cond_27

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_27

    if-eqz v1, :cond_27

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-ne v5, v7, :cond_27

    const-string v5, "pref_set_resolution"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_27
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateTimeStamp()V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkGeoTagging()V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->initImageRatio()V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateSwitchCamera()V

    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->setupWhteBalanceList(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkRecordingLength()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->ReloadAutoUploadSetting()V

    :cond_28
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateBlinkDetection()V

    :cond_29
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v5

    if-ne v5, v7, :cond_2a

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_3e

    const-string v5, "pref_camera_scene"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/OnScreenPreference;->filterSceneOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;I)V

    :cond_2a
    :goto_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showEffectInMenu()Z

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_3f

    const-string v5, "pref_camera_effect"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v0, v5}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedISO(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    :cond_2c
    const-string v5, "pref_camera_self_portrait"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    const-string v5, "pref_camera_face_number"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSwitchButton()Z

    move-result v5

    if-nez v5, :cond_2f

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasSwitchButton()Z

    move-result v5

    if-eqz v5, :cond_30

    :cond_2f
    const-string v5, "pref_camera_switch"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_30
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamNoneMirror()Z

    move-result v5

    if-eqz v5, :cond_31

    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_31
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-ne v5, v7, :cond_3d

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "pref_camera_iso"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_32
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v5

    if-nez v5, :cond_33

    const-string v5, "pref_camera_image_ratio"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_33
    const-string v5, "pref_camera_metering_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_34
    const-string v5, "pref_camera_auto_focus"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_35
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_36

    const-string v5, "pref_face_detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_36
    const-string v5, "pref_camera_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_37
    const-string v5, "pref_video_scene"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_38
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamAutoEnhance()Z

    move-result v5

    if-nez v5, :cond_39

    const-string v5, "pref_post_processing"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_39

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_39
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_3b

    const-string v5, "pref_smile_capture"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3a
    const-string v5, "pref_blink detection"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3b
    const-string v5, "pref_fast_fps"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3c
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_3d
    const-string v5, "pref_front_camera_mode"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_3e
    const-string v5, "pref_video_scene"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/OnScreenPreference;->filterSceneOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;I)V

    goto/16 :goto_3

    :cond_3f
    const-string v5, "pref_video_effect"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    goto/16 :goto_4

    :cond_40
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedOptions(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method

.method private initSettingInfo()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_switch"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-ne v1, v4, :cond_e

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_3D_status"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    :cond_6
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    :cond_9
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    :cond_a
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    :cond_b
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHWShareButton()Z

    move-result v1

    if-ne v1, v4, :cond_d

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    const-string v2, "2s"

    if-ne v1, v2, :cond_d

    const-string v1, "3s"

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    :cond_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v4, :cond_11

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private static removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-static {v0, p1}, Lcom/android/camera/OnScreenPreference;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restorePreference()V
    .locals 2

    const-string v0, "OnScreenPreference"

    const-string v1, "restorePreference()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_c
    return-void
.end method

.method private selectResolution(Landroid/preference/Preference;)V
    .locals 13

    const/4 v12, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "OnScreenPreference"

    const-string v10, "only for Contacts or Square request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-ne v9, v12, :cond_2

    const-string v9, "OnScreenPreference"

    const-string v10, "only for Mms request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v9, v9, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v9, :cond_7

    :cond_2
    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_3

    aget-object v9, v0, v2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v3, v2

    :cond_3
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    new-instance v10, Lcom/android/camera/OneValueEvent;

    const-string v11, "Resolution.Selected"

    invoke-direct {v10, v11, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_4
    const-string v9, "OnScreenPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolutionCallback run: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v6

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-ne v9, v12, :cond_b

    sget-object v9, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v10, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-ne v9, v12, :cond_a

    const-string v9, "OnScreenPreference"

    const-string v10, "for Mms custom request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v12}, Lcom/android/camera/IntentManager;->setMMS_isVideoQVGA(Z)V

    :cond_5
    :goto_2
    const-string v9, "OnScreenPreference"

    const-string v10, "Block Capture UI - set resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9, v12}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-ne v9, v12, :cond_6

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_fast_frame_resolution_temp"

    const-string v11, "null"

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_6
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v6, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    sget-object v9, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v10, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v9, v10, :cond_2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/camera/IntentManager;->setMMS_isVideoQVGA(Z)V

    goto :goto_2

    :cond_a
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v10, v11}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v9, "OnScreenPreference"

    const-string v10, "Write preference for resolution is fail in MMS photo mode"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v10, v11}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v9, "OnScreenPreference"

    const-string v10, "Write preference for resolution is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private selectWhiteBalance(Landroid/preference/ListPreference;)V
    .locals 7

    const/16 v6, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v2, "OnScreenPreference"

    const-string v3, "selectWhiteBalance failed - no white balance preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v2, :cond_2

    const-string v0, "pref_camera_white_balance_2nd"

    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_scene_ds"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_white_balance_manual"

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "pref_camera_white_balance"

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_scene_service_ds"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private setImageRatio_MMS()V
    .locals 0

    return-void
.end method

.method private setupResolutionList(Landroid/preference/PreferenceScreen;)V
    .locals 17

    if-nez p1, :cond_0

    const-string v14, "OnScreenPreference"

    const-string v15, "setupResolutionList failed - no preference screen"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v14, "pref_set_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    if-nez v6, :cond_1

    const-string v14, "OnScreenPreference"

    const-string v15, "setupResolutionList failed - no resolution preference"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v14, :cond_3

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;

    move-result-object v7

    :goto_2
    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current Resolution: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14, v15}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;

    move-result-object v11

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v12, v11}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    if-eqz v14, :cond_5

    iget-object v14, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v14}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "#########################:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14, v15}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v7

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    if-nez v14, :cond_2

    iget-object v14, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v14}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "#########################:   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v1, v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    new-array v2, v14, [Ljava/lang/CharSequence;

    const-string v14, "OnScreenPreference"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sortedresoItems.size()#############:  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    if-ge v3, v14, :cond_9

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ResolutionMenuItem;

    iget v10, v14, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ResolutionMenuItem;

    iget-object v14, v14, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v7, v14}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v4, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v14, v14, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    const v13, 0x7f0a005a

    :goto_5
    invoke-virtual {v6, v13}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v14, :cond_b

    const v13, 0x7f0a005a

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v15, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v14, v15}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v15, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v14, v15}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_c
    const-string v14, "OnScreenPreference"

    const-string v15, "Contacts request - resolution is 1:1"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const v13, 0x7f0a0066

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    if-eqz v14, :cond_11

    sget-object v14, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v15, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v14, v15, :cond_e

    const v13, 0x7f0a0068

    goto :goto_5

    :cond_e
    sget-object v14, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v15, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v14, v15, :cond_f

    const v13, 0x7f0a0069

    goto :goto_5

    :cond_f
    sget-object v14, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v15, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v14, v15, :cond_10

    const v13, 0x7f0a0067

    goto :goto_5

    :cond_10
    const v13, 0x7f0a006a

    goto :goto_5

    :cond_11
    const v13, 0x7f0a006b

    goto :goto_5
.end method

.method private setupWhteBalanceList(Landroid/preference/PreferenceScreen;)V
    .locals 14

    if-nez p1, :cond_0

    const-string v12, "OnScreenPreference"

    const-string v13, "setupWhteBalanceList failed - no preference screen"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v12, "pref_set_white_balance"

    invoke-virtual {p1, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    if-nez v7, :cond_1

    const-string v12, "OnScreenPreference"

    const-string v13, "setupWhteBalanceList failed - no white balance preference"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v12}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f070021

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v12, 0x7f070022

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "cloudy-daylight"

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v12, :cond_2

    const/4 v8, 0x1

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v13, "pref_camera_white_balance_2nd"

    invoke-static {v12, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v12, v1

    if-ge v5, v12, :cond_5

    if-eqz v8, :cond_3

    aget-object v12, v1, v5

    const-string v13, "cloudy-daylight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v13, "pref_camera_white_balance"

    invoke-static {v12, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    aget-object v12, v1, v5

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v6, v5

    :cond_4
    aget-object v12, v0, v5

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v1, v5

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v12, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v12, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private show_gps_dialog()V
    .locals 6

    new-instance v3, Lcom/android/camera/OnScreenPreference$1;

    invoke-direct {v3, p0}, Lcom/android/camera/OnScreenPreference$1;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v2, Lcom/android/camera/OnScreenPreference$2;

    invoke-direct {v2, p0}, Lcom/android/camera/OnScreenPreference$2;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v0, Lcom/android/camera/OnScreenPreference$3;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenPreference$3;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v1, Lcom/android/camera/OnScreenPreference$4;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenPreference$4;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a014d

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a014e

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c0200

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private show_reset_dialog()V
    .locals 6

    new-instance v3, Lcom/android/camera/OnScreenPreference$5;

    invoke-direct {v3, p0}, Lcom/android/camera/OnScreenPreference$5;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v2, Lcom/android/camera/OnScreenPreference$6;

    invoke-direct {v2, p0}, Lcom/android/camera/OnScreenPreference$6;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v0, Lcom/android/camera/OnScreenPreference$7;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenPreference$7;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v1, Lcom/android/camera/OnScreenPreference$8;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenPreference$8;-><init>(Lcom/android/camera/OnScreenPreference;)V

    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0099

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00d7

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c01da

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c01db

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateGeoTagging()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OnScreenPreference"

    const-string v1, "updateGeoTagging() - Check Location Setting ..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkLocationSetting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->show_gps_dialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    const v2, 0x7f0a00d6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    goto :goto_0
.end method

.method private updateImageRatio()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    iput-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0
.end method

.method private updateResolution()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    const-string v0, "OnScreenPreference"

    const-string v1, "Block Capture UI - updateResolution()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method private updateSwitchCamera()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateTimeStamp()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v0, "yyyy/MM/dd kk:mm"

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ReloadAutoUploadSetting()V
    .locals 3

    const-string v0, "OnScreenPreference"

    const-string v1, "ReloadAutoUploadSetting()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_label"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    const-string v0, "OnScreenPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReloadAutoUploadSetting() mAutoUploadService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OnScreenPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReloadAutoUploadSetting() mAutoUploadServiceLabel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->loadAutoUploadSettings()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public backupImageAdjustment_DOT(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "pref_camera_brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_brightness_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "pref_camera_contrast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_contrast_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v1, "pref_camera_saturation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_saturation_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v1, "pref_camera_shaprness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_sharpness_manual"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public checkAutoCapture()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    :goto_1
    if-nez v0, :cond_c

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v3

    if-gtz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->isSelfTimerDisabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    :cond_4
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_9
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_a
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_b
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    const-string v3, "no_limit"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public checkImageSettings(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "pref_set_white_balance"

    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "pref_camera_iso"

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "pref_camera_image_property"

    sget v4, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v4, p1

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public checkSceneSetting()V
    .locals 12

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/16 v9, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {p0, v4}, Lcom/android/camera/OnScreenPreference;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_set_white_balance"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "auto"

    invoke-static {v4, v11, v7, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_set_white_balance"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_iso"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "iso"

    const-string v5, "auto"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_iso"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_brightness"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_brightness"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-static {v4, v5, v2, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_contrast"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_contrast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "contrast"

    invoke-static {v4, v9, v2, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_saturation"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_saturation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "saturation"

    invoke-static {v4, v9, v2, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_shaprness"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_shaprness"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "sharpness"

    invoke-static {v4, v9, v2, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_6
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_image_property"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_set_white_balance"

    iget-object v6, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    invoke-static {v4, v11, v7, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    :cond_8
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_set_white_balance"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v4, "iso"

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_a
    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    :cond_b
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_iso"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_c
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_brightness"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x11

    invoke-static {v4, v5, v3, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    :cond_d
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_contrast"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "contrast"

    invoke-static {v4, v9, v3, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    :cond_e
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_saturation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "saturation"

    invoke-static {v4, v9, v3, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    :cond_f
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_shaprness"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "sharpness"

    invoke-static {v4, v9, v3, v7, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-object v8, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    :cond_10
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_camera_image_property"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->getCurrentEffectPreference()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method checkStorageLocation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const-string v0, "OnScreenPreference"

    const-string v1, "mScreen == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public checkStorageLocation(Landroid/preference/PreferenceScreen;)V
    .locals 5

    const-string v3, "pref_camera_storage_location"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_storage_location"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "group"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public enableISO(Z)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_camera_iso"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public enableImageProperty(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_image_property"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enablePreference(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enableSceneOptions(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_scene"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq p1, v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSetting()V

    :goto_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_video_scene"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSettingForDOT()Z

    goto :goto_1
.end method

.method public enableSelfPortrait(Z)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_face_number"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq p1, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exitPreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->restorePreference()V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    return-void
.end method

.method public getCurrectMenuResolution()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCurrentEffectPreference()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "none"

    goto :goto_0
.end method

.method public getCurrentScene_DOT()I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_scene_service_ds"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "OnScreenPreference"

    const-string v4, "NumberFormatException of sceneNum"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPrefSceneType(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnScreenPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrefenceValue PREF_CAMERA_SCENE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "AutoScene.Enabled"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_video_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnScreenPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrefenceValue PREF_VIDEO_SCENE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "AutoScene.Enabled"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v0, "auto"

    goto :goto_1
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/high16 v2, 0x7f05

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/OnScreenPreference;->initPreference(Landroid/preference/PreferenceScreen;Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f050002

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f050001

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1, v2, v3}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public initOnScreenPreference(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Lcom/android/camera/MenuHandler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    new-instance v0, Landroid/preference/PreferenceManager;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    return-void
.end method

.method public onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V
    .locals 8

    const/16 v4, 0x37

    const/16 v7, 0x30

    const/16 v3, 0x8

    const/16 v6, 0x23

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateSwitchCamera()V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restartCamera()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "pref_camera_3D_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->check3DCamera(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0

    :cond_3
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateImageRatio()V

    goto :goto_0

    :cond_4
    const-string v2, "pref_camera_timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateTimeStamp()V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto :goto_0

    :cond_5
    const-string v2, "pref_camera_geo_tagging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateGeoTagging()V

    goto :goto_0

    :cond_6
    const-string v2, "pref_grid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_7
    const-string v2, "pref_camera_auto_focus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkAutoFocus(Z)V

    goto :goto_0

    :cond_8
    const-string v2, "pref_post_processing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v4, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    const-string v2, "pref_stereo_recording"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v5, v5, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "pref_camera_record_with_audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "RecordWithAudio.Changed"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "pref_face_detection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateBlinkDetection()V

    :cond_d
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_e
    const-string v2, "pref_play_shutter_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, p2}, Lcom/android/camera/CameraThread;->enableShutterSound(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "pref_camera_self_portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz p2, :cond_11

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_face_number"

    const-string v4, "2faces"

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->updateIndicatorLayout_AutoCapture()V

    :cond_10
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_face_number"

    const-string v4, "none"

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    const-string v2, "pref_smile_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkSmileCapture(Z)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "pref_blink detection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkBlinkDetection(Z)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "pref_fast_fps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/OnScreenPreference;->checkFastFrameRecording(Landroid/preference/PreferenceScreen;Z)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "FastFrameRecording.Changed"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0
.end method

.method public onListPreferenceUpdated(Landroid/preference/Preference;I)V
    .locals 9

    const/16 v6, 0x12

    const/16 v8, 0x25

    const/4 v4, 0x1

    const/16 v7, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "pref_set_resolution"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->selectResolution(Landroid/preference/Preference;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "pref_capture_format_video"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0

    :cond_2
    const-string v5, "pref_set_white_balance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    check-cast p1, Landroid/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->selectWhiteBalance(Landroid/preference/ListPreference;)V

    goto :goto_0

    :cond_3
    const-string v5, "pref_camera_self_timer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const v5, 0x7f0a014a

    const/4 v6, 0x0

    invoke-static {v4, v8, v5, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v4

    new-instance v5, Lcom/android/camera/OneValueEvent;

    const-string v6, "SelfTimer.Changed"

    iget-object v7, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    goto :goto_0

    :cond_6
    const-string v5, "pref_camera_face_number"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    if-eqz p2, :cond_7

    if-ne p2, v4, :cond_8

    const v3, 0x7f0a014b

    :goto_1
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v4, v8, v3, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_7
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_8
    const v3, 0x7f0a014c

    goto :goto_1

    :cond_9
    const-string v5, "pref_camera_iso"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/android/camera/OnScreenPreference;->backupISOSettings_DOT(Landroid/preference/ListPreference;)V

    :cond_a
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v4, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "pref_camera_review_duration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v4

    const-string v5, "SameMenuItem.Selected"

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0

    :cond_d
    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0

    :cond_e
    const-string v5, "pref_camera_effect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/String;)V

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v1, v4

    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableImageProperty(Z)Z

    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableSceneOptions(Z)Z

    invoke-virtual {p0, v4}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    goto/16 :goto_0

    :cond_11
    const-string v5, "pref_video_effect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/String;)V

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v1, v4

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableImageProperty(Z)Z

    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableSceneOptions(Z)Z

    invoke-virtual {p0, v4}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    goto/16 :goto_0

    :cond_14
    const-string v4, "pref_camera_scene"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "B_whiteboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v5, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vino SET_GE_WHITEBOARD:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "auto"

    invoke-static {v4, v7, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    const-string v6, "none"

    invoke-static {v4, v5, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x3e

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSetting()V

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v5, "auto"

    invoke-static {v4, v7, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    const-string v6, "none"

    invoke-static {v4, v5, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v4, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    move-object v4, p1

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v7, v1, v1, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v4, "OnScreenPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vino SET_SCENE_MODE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_16
    const-string v4, "pref_video_scene"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v4, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkSceneSetting()V

    goto/16 :goto_0

    :cond_17
    const-string v4, "pref_camera_storage_location"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x35

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_18
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0
.end method

.method public onPreferenceUpdated(Landroid/preference/Preference;)V
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_set_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->show_reset_dialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "pref_camera_tutorial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->startCameraTutorial()V

    goto :goto_0

    :cond_2
    const-string v1, "pref_auto_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0
.end method

.method public releaseOnScreenPreference()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    return-void
.end method

.method public rotateDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/android/camera/rotate/RotateDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public setupResolutionList()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public updateBlinkDetection()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_face_detection"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateFaceDetection(Z)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_camera_auto_focus"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_2
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v5, v6, :cond_5

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    :goto_2
    if-nez p1, :cond_4

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eq v5, v2, :cond_0

    :cond_4
    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v5, v6, :cond_8

    move v1, v3

    :goto_4
    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v5

    if-nez v5, :cond_9

    move v2, v3

    :goto_5
    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_4

    :cond_9
    move v2, v4

    goto :goto_5

    :cond_a
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method public updateSmileCapture()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v2, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_face_detection"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
