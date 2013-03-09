.class public Lcom/htc/fm/FMRadio;
.super Landroid/app/Activity;
.source "FMRadio.java"

# interfaces
.implements Lcom/htc/fm/FMSeekBarTouchListener;
.implements Lcom/htc/fm/OnServiceStateChangedListener;
.implements Lcom/htc/fm/OnStateChangedListener;
.implements Lcom/htc/fm/OnEventChangedListener;
.implements Lcom/htc/fm/OnRemoteEventControlListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMRadio$AppBroadcastReceiver;,
        Lcom/htc/fm/FMRadio$FreqUpdater;,
        Lcom/htc/fm/FMRadio$ChannelController;
    }
.end annotation


# static fields
.field public static final ACION_DO_UPDATE_FREROLLBAR:I = 0x1f

.field private static final ACTION_DO_SCAN_FINISHED_PROCESS:I = 0x1d

.field private static final ACTION_DO_SEEK_DOWN:I = 0x1c

.field private static final ACTION_DO_SEEK_UP:I = 0x1b

.field private static final ACTION_DO_UPDATE_CHANNEL:I = 0x1e

.field private static final ACTION_FINISH_ACTIVITY:I = 0x13

.field private static final ACTION_SCAN_SEEK_UP:I = 0x1a

.field private static final ACTION_TOGGLE_POWER:I = 0x19

.field private static final ACTION_TURN_OFF:I = 0x20

.field private static final ACTION_TURN_ON:I = 0x18

.field private static final ACTION_UI_FIRST_ON:I = 0x14

.field private static final ACTION_UPDATE_CMD_STATUS:I = 0x16

.field private static final ACTION_UPDATE_STATUS:I = 0x15

.field private static final DELAY_ACTION_TURN:I = 0x0

.field private static final DIALOG_ASK_TO_SCAN_SAVE:I = 0x1

.field private static final DIALOG_NO_CHANNEL_FOUND:I = 0x4

.field private static final DIALOG_NO_HEADSET:I = 0x0

.field private static final DIALOG_ON_AIRPLANE:I = 0x3

.field private static final DIALOG_PROGRESS:I = 0x2

.field private static final DIALOG_PROGRESS_TURN_OFF:I = 0x7

.field private static final DIALOG_SCANNING:I = 0x5

.field private static final DIALOG_SCAN_COMFIRM:I = 0x6

.field private static final HEADSET_EXTRA:Ljava/lang/String; = "state"

.field private static final OPTION_BAND_SWITCH:I = 0x4

.field private static final OPTION_MUTE:I = 0x0

.field private static final OPTION_SCANSAVE:I = 0x3

.field private static final OPTION_SPEAKER:I = 0x2

.field private static final OPTION_STEREO:I = 0x1

.field public static final PRESET_EDIT_REQUEST_CODE:I = 0x6f

.field public static final PRESET_LIST_REQUEST_CODE:I = 0x70

.field public static final REQUEST_MODE_TUNE:I = 0x0

.field public static final REQUEST_MODE_UPDATE_TITLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final TBtnPoAG:Ljava/lang/String; = "FMRadio_FMRadio"

.field private static TUNE_OFFSET:J = 0x0L

.field private static final TURNON_TIMEOUT:I = 0x2710

.field public static final WHAT_FM_AIRPLANEMODE_OFF:I = 0x1

.field public static final WHAT_FM_AIRPLANEMODE_ON:I = 0x0

.field public static final WHAT_FM_HEADSET_PLUG:I = 0x0

.field public static final WHAT_FM_HEADSET_UNPLUG:I = 0x1


# instance fields
.field private DisplayPreset:Lcom/htc/fm/Preset;

.field private TimeStampOfUIStartingAdjust:J

.field mActionHandler:Landroid/os/Handler;

.field private mActivityOn:Z

.field private final mAirplaneModeHandler:Landroid/os/Handler;

.field private mAudioOutInited:Z

.field private mBand:I

.field private mBtnAdd:Landroid/view/View;

.field private mBtnAddClickListener:Landroid/view/View$OnClickListener;

.field private mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

.field private mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

.field private mBtnPower:Lcom/htc/widget/HeaderBarImage;

.field private mBtnPowerClickListener:Landroid/view/View$OnClickListener;

.field private mBtnPresetList:Landroid/view/View;

.field private mBtnPresetListClickListener:Landroid/view/View$OnClickListener;

.field private mBtnSeekBack:Landroid/view/View;

.field private mBtnSeekDownClickListener:Landroid/view/View$OnClickListener;

.field private mBtnSeekNext:Landroid/view/View;

.field private mBtnSeekUpClickListener:Landroid/view/View$OnClickListener;

.field private mBtnTuneDownClickListener:Landroid/view/View$OnClickListener;

.field private mBtnTuneDownRepeatListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

.field private mBtnTuneUpClickListener:Landroid/view/View$OnClickListener;

.field private mBtnTuneUpRepeatListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

.field private mChachaPowerBtn:Landroid/widget/Button;

.field private mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

.field private mChannelRequested:Z

.field private mCloseScaningDlg:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDelayCloseHandler:Landroid/os/Handler;

.field mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

.field mFMController:Lcom/htc/fm/FMController;

.field private mFromManul:Z

.field private final mHeadsetHandler:Landroid/os/Handler;

.field private mIfTurnOffFromUI:Z

.field private mImgBg:Landroid/widget/ImageView;

.field private mImgDisplayOn:Landroid/widget/ImageView;

.field private mIsCompleteScan:Z

.field private mIsDestroyed:Z

.field private mIsFromEditCancelled:Z

.field private mIsFromRestarted:Z

.field private mIsNeedFinished:Z

.field mIsNeedScanSave:Z

.field private mIsPaused:Z

.field private mIsScanCancelled:Z

.field private mIsSeeking:Z

.field private mIsShowBandSwitch:Z

.field private mIsStereo:Z

.field private mIsStop:Z

.field private mIsUnbindPlaying:Z

.field private mIsUseRollingAnimation:Z

.field private mLabelSeeking:Ljava/lang/String;

.field private mLabelTuning:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMenu:Landroid/view/Menu;

.field private mMenuAudioOption:I

.field private mNumberCoverLayer:Landroid/widget/ImageView;

.field private mNumberCoverLayerOff:Landroid/widget/ImageView;

.field private mOnSetband:Z

.field private mPowerButtonTouchEvent:Landroid/view/View$OnTouchListener;

.field private mPreScanPreset:Lcom/htc/fm/Preset;

.field private mPreShowTime:J

.field private mPreTouchFreq:I

.field private mPreTouchTitle:Ljava/lang/String;

.field mPreset:Lcom/htc/fm/Preset;

.field private mPresetUpdated:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mProgressDialogScanHeight:I

.field private mProgressDialogScanMarginBottom:I

.field private mProgressDialogScanMarginLeft:I

.field private mProgressDialogScanMarginRight:I

.field private mProgressDialogScanMarginTop:I

.field private mProgressDialogScanWidth:I

.field private mProgressDialogTurnOnHeight:I

.field private mProgressDialogTurnOnMarginBottom:I

.field private mProgressDialogTurnOnMarginLeft:I

.field private mProgressDialogTurnOnMarginRight:I

.field private mProgressDialogTurnOnMarginTop:I

.field private mProgressDialogTurnOnWidth:I

.field mProgressHandler:Landroid/os/Handler;

.field private mProgressTime:J

.field private mReTurnOn:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestPreset:Lcom/htc/fm/Preset;

.field private mRetryTimes:I

.field private mScanAfterSeek:Z

.field mScanPrevAudioPath:I

.field private mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSeekCount:I

.field private mSeekbar:Lcom/htc/fm/FMSeekBar;

.field private mSetUIExistWhenResume:Z

.field private mSignalBar:Lcom/htc/fm/SignalBar;

.field private mTextFreq:Landroid/widget/TextView;

.field private mTextIndex:Landroid/widget/TextView;

.field private mTextName:Landroid/widget/TextView;

.field private mTextTitle01:Lcom/htc/widget/HeaderBarText;

.field private mTimeOnTurnOff:J

.field private mTuneCount:I

.field mTuneHandler:Landroid/os/Handler;

.field private mTunerpanel:Landroid/widget/ImageView;

.field private mTurnOnTime:J

.field private mUsePowerButtonOnCommonControl:Z

.field private mUseTaskbar2Label:Z

.field private mUseThemeChange:Z

.field private m_bSenceLandScape:Z

.field mmirrorface:Lcom/htc/fm/MirrorFace;

.field mrollbar:Lcom/htc/fm/FreqRollBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/htc/fm/FMRadio;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    .line 145
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/htc/fm/FMRadio;->TUNE_OFFSET:J

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->m_bSenceLandScape:Z

    .line 149
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsStereo:Z

    .line 155
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mLabelSeeking:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mLabelTuning:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 161
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsPaused:Z

    .line 163
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    .line 165
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsDestroyed:Z

    .line 167
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsShowBandSwitch:Z

    .line 169
    iput v2, p0, Lcom/htc/fm/FMRadio;->mBand:I

    .line 171
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    .line 173
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    .line 175
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIfTurnOffFromUI:Z

    .line 178
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsUseRollingAnimation:Z

    .line 179
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    .line 180
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    .line 182
    new-instance v0, Lcom/htc/fm/Preset;

    invoke-direct {v0}, Lcom/htc/fm/Preset;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    .line 184
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsCompleteScan:Z

    .line 187
    iput-wide v5, p0, Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J

    .line 190
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mReTurnOn:Z

    .line 191
    iput v2, p0, Lcom/htc/fm/FMRadio;->mRetryTimes:I

    .line 193
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mUsePowerButtonOnCommonControl:Z

    .line 196
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mSetUIExistWhenResume:Z

    .line 197
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mActivityOn:Z

    .line 201
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mUseThemeChange:Z

    .line 205
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mUseTaskbar2Label:Z

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMRadio;->mMenuAudioOption:I

    .line 219
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsSeeking:Z

    .line 220
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mScanAfterSeek:Z

    .line 225
    new-instance v0, Lcom/htc/fm/FMRadio$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$1;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPowerButtonTouchEvent:Landroid/view/View$OnTouchListener;

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mDelayCloseHandler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/htc/fm/FMRadio$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$2;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mCloseScaningDlg:Ljava/lang/Runnable;

    .line 1035
    new-instance v0, Lcom/htc/fm/Preset;

    invoke-direct {v0}, Lcom/htc/fm/Preset;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 1200
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsUnbindPlaying:Z

    .line 1369
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1370
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1486
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsScanCancelled:Z

    .line 1488
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    .line 1531
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fm/FMRadio;->mScanPrevAudioPath:I

    .line 1583
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    .line 1674
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mAudioOutInited:Z

    .line 1850
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mOnSetband:Z

    .line 1865
    iput-wide v5, p0, Lcom/htc/fm/FMRadio;->mTimeOnTurnOff:J

    .line 1957
    new-instance v0, Lcom/htc/fm/FMRadio$12;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$12;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    .line 2064
    new-instance v0, Lcom/htc/fm/FMRadio$13;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$13;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mTuneHandler:Landroid/os/Handler;

    .line 2076
    iput-wide v5, p0, Lcom/htc/fm/FMRadio;->mProgressTime:J

    .line 2077
    iput-wide v5, p0, Lcom/htc/fm/FMRadio;->mTurnOnTime:J

    .line 2079
    new-instance v0, Lcom/htc/fm/FMRadio$14;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$14;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    .line 2429
    new-instance v0, Lcom/htc/fm/FMRadio$15;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$15;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekUpClickListener:Landroid/view/View$OnClickListener;

    .line 2493
    new-instance v0, Lcom/htc/fm/FMRadio$16;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$16;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnTuneUpRepeatListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    .line 2517
    new-instance v0, Lcom/htc/fm/FMRadio$17;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$17;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnTuneDownRepeatListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    .line 2541
    new-instance v0, Lcom/htc/fm/FMRadio$18;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$18;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekDownClickListener:Landroid/view/View$OnClickListener;

    .line 2552
    new-instance v0, Lcom/htc/fm/FMRadio$19;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$19;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnTuneUpClickListener:Landroid/view/View$OnClickListener;

    .line 2558
    new-instance v0, Lcom/htc/fm/FMRadio$20;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$20;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnTuneDownClickListener:Landroid/view/View$OnClickListener;

    .line 2729
    new-instance v0, Lcom/htc/fm/FMRadio$21;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$21;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetListClickListener:Landroid/view/View$OnClickListener;

    .line 2768
    new-instance v0, Lcom/htc/fm/FMRadio$22;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$22;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPowerClickListener:Landroid/view/View$OnClickListener;

    .line 2774
    new-instance v0, Lcom/htc/fm/FMRadio$ChannelController;

    invoke-direct {v0, p0, v3}, Lcom/htc/fm/FMRadio$ChannelController;-><init>(Lcom/htc/fm/FMRadio;Lcom/htc/fm/FMRadio$1;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    .line 2880
    new-instance v0, Lcom/htc/fm/FMRadio$23;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$23;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAddClickListener:Landroid/view/View$OnClickListener;

    .line 2966
    new-instance v0, Lcom/htc/fm/FMRadio$25;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$25;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mAirplaneModeHandler:Landroid/os/Handler;

    .line 3001
    new-instance v0, Lcom/htc/fm/FMRadio$26;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$26;-><init>(Lcom/htc/fm/FMRadio;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mHeadsetHandler:Landroid/os/Handler;

    .line 3023
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    .line 3102
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    .line 3103
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    .line 3104
    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mRequestPreset:Lcom/htc/fm/Preset;

    .line 3173
    iput v2, p0, Lcom/htc/fm/FMRadio;->mPreTouchFreq:I

    .line 3175
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPreTouchTitle:Ljava/lang/String;

    .line 3665
    iput v2, p0, Lcom/htc/fm/FMRadio;->mTuneCount:I

    .line 3666
    iput v2, p0, Lcom/htc/fm/FMRadio;->mSeekCount:I

    .line 3704
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnWidth:I

    .line 3705
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnHeight:I

    .line 3706
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginLeft:I

    .line 3707
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginTop:I

    .line 3708
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginRight:I

    .line 3709
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginBottom:I

    .line 3711
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanWidth:I

    .line 3712
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanHeight:I

    .line 3713
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginLeft:I

    .line 3714
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginTop:I

    .line 3715
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginRight:I

    .line 3716
    iput v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginBottom:I

    .line 3781
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsNeedScanSave:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/FMRadio;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mIfTurnOffFromUI:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->doSeekUp(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->doSeekDown(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->processOnScanFinished()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/fm/FMRadio;)Lcom/htc/fm/Preset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/fm/FMRadio;Lcom/htc/fm/Preset;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/fm/FMRadio;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/htc/fm/FMRadio;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/htc/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->doTune(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/fm/FMRadio;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/fm/FMRadio;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/fm/FMRadio;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/htc/fm/FMRadio;->mTurnOnTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/htc/fm/FMRadio;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/htc/fm/FMRadio;->mTurnOnTime:J

    return-wide p1
.end method

.method static synthetic access$2114(Lcom/htc/fm/FMRadio;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/htc/fm/FMRadio;->mTurnOnTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/fm/FMRadio;->mTurnOnTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/htc/fm/FMRadio;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/htc/fm/FMRadio;->mProgressTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/htc/fm/FMRadio;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/htc/fm/FMRadio;->mProgressTime:J

    return-wide p1
.end method

.method static synthetic access$2214(Lcom/htc/fm/FMRadio;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/htc/fm/FMRadio;->mProgressTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/fm/FMRadio;->mProgressTime:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->turnOffFM(Z)V

    return-void
.end method

.method static synthetic access$2402(Lcom/htc/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mReTurnOn:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/fm/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getAudioPath()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUnMute()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->doTuneUp(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->doTuneDown(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/fm/FMRadio;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/fm/FMRadio;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/htc/fm/FMRadio;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/fm/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/fm/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsUseRollingAnimation:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/fm/FMRadio;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/fm/FMRadio;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/FMRadio;->getFreq(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/fm/FMRadio;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->mTune(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/fm/FMRadio;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fm/FMRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->startAirplaneModeHandler()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/fm/FMRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->startHeadsetHandler(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isOnAirplane()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/fm/FMRadio;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mAirplaneModeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    return-void
.end method

.method static synthetic access$4602(Lcom/htc/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/fm/FMRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->seekUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/htc/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mIsScanCancelled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->startScan()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/fm/FMRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->internalTurnOn()V

    return-void
.end method

.method private bindService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3537
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v1, :cond_0

    .line 3546
    :goto_0
    return v0

    .line 3540
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->getServiceState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3541
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][FMTuner] bindService() Service\'s state is not unbinded - return!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3545
    :cond_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner] bindService()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->bindService()Z

    move-result v0

    goto :goto_0
.end method

.method private checkMenu4Mute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3413
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 3423
    :goto_0
    return-void

    .line 3416
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3417
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3418
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 3420
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3421
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private convertFreqenceToProgress(I)I
    .locals 5
    .parameter "freq"

    .prologue
    .line 2346
    iget v1, p0, Lcom/htc/fm/FMRadio;->mBand:I

    if-nez v1, :cond_0

    .line 2347
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->map2Progress(I)I

    move-result v1

    .line 2350
    :goto_0
    return v1

    .line 2349
    :cond_0
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sub-int v0, p1, v1

    .line 2350
    .local v0, offset:I
    int-to-double v1, v0

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    sget v4, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_0
.end method

.method private convertProgressToFrequence(I)I
    .locals 6
    .parameter "progress"

    .prologue
    .line 3170
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createOptionMenu()V
    .locals 7

    .prologue
    const v6, 0x7f02004a

    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1740
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! createOptionMenu"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 1743
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! createOptionMenu return"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! createOptionMenu - 1"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 1749
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! createOptionMenu - 2"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1752
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090015

    invoke-interface {v0, v4, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1758
    :goto_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! createOptionMenu - 4"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStereo:Z

    if-eqz v0, :cond_3

    .line 1761
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090017

    invoke-interface {v0, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1768
    :goto_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getAudioPath()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 1769
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f09001a

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1776
    :goto_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x3

    const v2, 0x7f09001e

    invoke-interface {v0, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020051

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1779
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsShowBandSwitch:Z

    if-eqz v0, :cond_0

    .line 1780
    iget v0, p0, Lcom/htc/fm/FMRadio;->mBand:I

    if-nez v0, :cond_5

    .line 1781
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090018

    invoke-interface {v0, v4, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1755
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090014

    invoke-interface {v0, v4, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1764
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090016

    invoke-interface {v0, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1772
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f09001b

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1783
    :cond_5
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090019

    invoke-interface {v0, v4, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private delayshowNoHeadsetDialog()V
    .locals 7

    .prologue
    .line 3054
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "!!!! delayshowNoHeadsetDialog()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v3, :cond_1

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 3060
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3061
    .local v0, now:J
    const/4 v2, 0x1

    .line 3062
    .local v2, show:Z
    iget-wide v3, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 3064
    const/4 v2, 0x1

    .line 3067
    :cond_2
    iget-wide v3, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 3069
    const/4 v2, 0x0

    .line 3072
    :cond_3
    if-eqz v2, :cond_0

    .line 3075
    iput-wide v0, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    .line 3077
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "DIALOG_NO_HEADSET"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->dismissAllDialogs()V

    .line 3080
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mDelayCloseHandler:Landroid/os/Handler;

    new-instance v4, Lcom/htc/fm/FMRadio$27;

    invoke-direct {v4, p0}, Lcom/htc/fm/FMRadio$27;-><init>(Lcom/htc/fm/FMRadio;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private dialogDismiss(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 908
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isTopActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mDelayCloseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mCloseScaningDlg:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 919
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 913
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/fm/FMRadio;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private dismissAllDialogs()V
    .locals 2

    .prologue
    .line 1525
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->dismissTurnOffDialog()V

    .line 1526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 1527
    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 1526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1529
    :cond_0
    return-void
.end method

.method private dismissTurnOffDialog()V
    .locals 3

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 1522
    :goto_0
    return-void

    .line 1512
    :cond_0
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "+dismiss Turn Off dialog"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->hide()V

    .line 1520
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    .line 1521
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "-dismiss Turn Off dialog"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "dismiss Turn Off dialog exception"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doOnPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1249
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Activity] doOnPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->stopScan()V

    .line 1255
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    .line 1256
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsPaused:Z

    .line 1257
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    .line 1258
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1259
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner][Activity] doOnPause() status is not ON"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :goto_0
    return-void

    .line 1262
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->unbindService()Z

    goto :goto_0
.end method

.method private doSeekDown(Z)V
    .locals 3
    .parameter "need2Seek"

    .prologue
    const/4 v2, 0x1

    .line 2468
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_1

    .line 2469
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 2491
    :cond_0
    :goto_0
    return-void

    .line 2473
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 2474
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! Not ready, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2478
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2479
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Seek up due to CMD status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2483
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2484
    if-eqz p1, :cond_4

    .line 2485
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->seekDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2486
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto :goto_0

    .line 2489
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_0
.end method

.method private doSeekUp(Z)V
    .locals 3
    .parameter "need2Seek"

    .prologue
    const/4 v2, 0x1

    .line 2441
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_1

    .line 2442
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2446
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 2447
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! Not ready, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2451
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2452
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Seek up due to CMD status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2456
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2458
    if-eqz p1, :cond_4

    .line 2459
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->seekUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto :goto_0

    .line 2463
    :cond_4
    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_0
.end method

.method private doTune(Z)V
    .locals 4
    .parameter "needUpdateChannel"

    .prologue
    const/4 v3, 0x1

    .line 2566
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_0

    .line 2567
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 2588
    :goto_0
    return-void

    .line 2571
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 2572
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! Not ready, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2576
    :cond_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@ doTune("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    if-eqz p1, :cond_2

    .line 2585
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v0, v3}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 2586
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadio$ChannelController;->tuneNotChangeUI(I)V

    goto :goto_0
.end method

.method private doTuneDown(Z)V
    .locals 6
    .parameter "need2Tune"

    .prologue
    const/4 v5, 0x1

    .line 2662
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_1

    .line 2663
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 2668
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! Not ready, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2677
    :cond_2
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@@@@ doTuneDown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2683
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    int-to-long v1, v1

    sget-wide v3, Lcom/htc/fm/FMRadio;->TUNE_OFFSET:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 2686
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-ge v0, v1, :cond_3

    .line 2687
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 2689
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le v0, v1, :cond_4

    .line 2690
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 2692
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 2694
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    .line 2697
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v0, v5, p1}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;ZZ)V

    .line 2718
    if-eqz p1, :cond_0

    .line 2719
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 2723
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadio$ChannelController;->tuneNotChangeUI(I)V

    goto/16 :goto_0
.end method

.method private doTuneOnSeekStop()V
    .locals 3

    .prologue
    .line 3231
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_0

    .line 3232
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 3245
    :goto_0
    return-void

    .line 3236
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3237
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! Not ready, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3242
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadio$ChannelController;->tune(I)V

    goto :goto_0
.end method

.method private doTuneUp(Z)V
    .locals 6
    .parameter "need2Tune"

    .prologue
    const/4 v5, 0x1

    .line 2592
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_1

    .line 2593
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 2659
    :cond_0
    :goto_0
    return-void

    .line 2597
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 2598
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! Not ready, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2607
    :cond_2
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] doTuneUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    int-to-long v1, v1

    sget-wide v3, Lcom/htc/fm/FMRadio;->TUNE_OFFSET:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 2617
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-ge v0, v1, :cond_3

    .line 2618
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 2620
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le v0, v1, :cond_4

    .line 2621
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 2623
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 2625
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    .line 2627
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][Tune] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v0, v5, p1}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;ZZ)V

    .line 2651
    if-eqz p1, :cond_0

    .line 2652
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 2653
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/fm/Preset;->rowId:I

    .line 2656
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadio$ChannelController;->tuneNotChangeUI(I)V

    goto/16 :goto_0
.end method

.method private getAudioPath()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 843
    const/4 v0, 0x2

    .line 845
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getAudioPath()I

    move-result v0

    goto :goto_0
.end method

.method private getCmdPrevStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 964
    const-string v0, "Controller Null"

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknow"

    goto :goto_0
.end method

.method private getCmdState()I
    .locals 1

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 2764
    const/4 v0, -0x1

    .line 2765
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getCmdState()I

    move-result v0

    goto :goto_0
.end method

.method private getCmdStateText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    .line 942
    .local v0, cmdState:I
    sparse-switch v0, :sswitch_data_0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 944
    :sswitch_0
    const-string v1, "Ready"

    goto :goto_0

    .line 946
    :sswitch_1
    const-string v1, "Seeking"

    goto :goto_0

    .line 948
    :sswitch_2
    const-string v1, "Tuning"

    goto :goto_0

    .line 950
    :sswitch_3
    const-string v1, "Rssi turning on"

    goto :goto_0

    .line 952
    :sswitch_4
    const-string v1, "Rssi turning off"

    goto :goto_0

    .line 954
    :sswitch_5
    const-string v1, "RDS turning on"

    goto :goto_0

    .line 956
    :sswitch_6
    const-string v1, "RDS turning off"

    goto :goto_0

    .line 942
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private getFreq(J)Ljava/lang/String;
    .locals 10
    .parameter "freq"

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v8, 0x64

    .line 1360
    div-long v0, p1, v4

    .line 1361
    .local v0, p1:J
    rem-long v2, p1, v4

    .line 1362
    .local v2, r:J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v2, v8

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1365
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v2, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getFrequency()I
    .locals 1

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3910
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 3911
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v0

    goto :goto_0
.end method

.method private getMediaProvider()Landroid/content/IContentProvider;
    .locals 2

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method private getNowPlaying()V
    .locals 0

    .prologue
    .line 2168
    return-void
.end method

.method private getNowPreset()Lcom/htc/fm/Preset;
    .locals 3

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    if-nez v1, :cond_0

    .line 1038
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/htc/fm/FMUtils;->getNowPlaying(Landroid/content/Context;IZ)Lcom/htc/fm/Preset;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->isFMReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    iput v2, v1, Lcom/htc/fm/Preset;->rowId:I

    .line 1043
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getFrequency()I

    move-result v2

    iput v2, v1, Lcom/htc/fm/Preset;->freq:I

    .line 1044
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getRds()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 1045
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lcom/htc/fm/FMUtils;->getPresetByFreq(Landroid/content/Context;J)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1046
    .local v0, preset:Lcom/htc/fm/Preset;
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    :goto_0
    iput-object v1, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 1049
    .end local v0           #preset:Lcom/htc/fm/Preset;
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    return-object v1

    .line 1046
    .restart local v0       #preset:Lcom/htc/fm/Preset;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getOneLineInfo(I)Ljava/lang/String;
    .locals 7
    .parameter "level"

    .prologue
    .line 2305
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 2306
    .local v3, ste:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 2308
    .local v2, result:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2325
    :cond_0
    return-object v2

    .line 2311
    :cond_1
    array-length v0, v3

    .line 2313
    .local v0, deep:I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 2318
    if-lt v0, p0, :cond_2

    .line 2319
    move v0, p0

    .line 2321
    :cond_2
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2322
    sget-object v4, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    [FMRadio]!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(), Line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOrientation()I
    .locals 3

    .prologue
    .line 416
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 417
    .local v1, mgr:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 418
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    return v2
.end method

.method private getRawRssi()I
    .locals 1

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3388
    const/4 v0, 0x0

    .line 3389
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getRawRssi()I

    move-result v0

    goto :goto_0
.end method

.method private getRds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3916
    const-string v0, ""

    .line 3917
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getRds()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getServiceState()I
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 2752
    const/4 v0, -0x1

    .line 2753
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getServiceState()I

    move-result v0

    goto :goto_0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 2758
    const/4 v0, -0x1

    .line 2759
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getState()I

    move-result v0

    goto :goto_0
.end method

.method private getStatusText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    .line 925
    .local v0, state:I
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 927
    :pswitch_0
    const-string v1, "Turning on"

    goto :goto_0

    .line 929
    :pswitch_1
    const-string v1, "Turning off"

    goto :goto_0

    .line 931
    :pswitch_2
    const-string v1, "On"

    goto :goto_0

    .line 933
    :pswitch_3
    const-string v1, "Off"

    goto :goto_0

    .line 925
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideNoHeadsetDialog()V
    .locals 1

    .prologue
    .line 3090
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 3091
    return-void
.end method

.method private initAudioOut()V
    .locals 2

    .prologue
    .line 1677
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mAudioOutInited:Z

    if-eqz v0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1680
    :cond_0
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ initAudioOut() - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mAudioOutInited:Z

    .line 1684
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ initAudioOut - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPowerButton()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mBtnPowerClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p0, v0, v1}, Lcom/htc/fm/CommonControlWrapper;->initPowerButton(Landroid/app/Activity;Lcom/htc/widget/HeaderBarImage;Landroid/view/View$OnClickListener;)V

    .line 425
    return-void
.end method

.method private initUi()V
    .locals 12

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->removeReference()V

    .line 430
    const v7, 0x7f04000a

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mImgBg:Landroid/widget/ImageView;

    .line 431
    const v7, 0x7f04000c

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    .line 433
    const v7, 0x7f040005

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarMiddle;

    .line 434
    .local v4, hBar:Lcom/htc/widget/HeaderBarMiddle;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 437
    iget-boolean v7, p0, Lcom/htc/fm/FMRadio;->mUsePowerButtonOnCommonControl:Z

    if-eqz v7, :cond_9

    .line 439
    const v7, 0x7f090011

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, title:Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/htc/fm/CommonControlWrapper;->setTitle(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 441
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initPowerButton()V

    .line 461
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v7, p0, Lcom/htc/fm/FMRadio;->mBand:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 463
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mImgBg:Landroid/widget/ImageView;

    const v8, 0x7f02001f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    :cond_1
    const v7, 0x7f040004

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    .line 467
    const v7, 0x7f040006

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HeaderBarText;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    .line 468
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const v8, 0x7f090011

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 469
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 471
    const v7, 0x7f040009

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    .line 472
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 473
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    const v8, 0x7f090003

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 474
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnPresetListClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    const v7, 0x7f040007

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    .line 478
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 479
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    const-string v8, "common_icon_glance_power_off"

    const v9, 0x208092b

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 480
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    const v8, 0x7f090008

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 481
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 482
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnPowerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v7, 0x7f040008

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    .line 485
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 486
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    const/high16 v8, 0x7f09

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 487
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnAddClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    sget-boolean v7, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/fm/FMRadio;->mUsePowerButtonOnCommonControl:Z

    if-eqz v7, :cond_3

    .line 495
    :cond_2
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HeaderBarText;->setVisibility(I)V

    .line 499
    :cond_3
    const v7, 0x7f04000f

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    .line 500
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 501
    const v7, 0x7f04000e

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    .line 502
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    const v7, 0x7f040027

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    .line 505
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnSeekDownClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    const-string v8, "common_transport_prev"

    const v9, 0x7f02000c

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 508
    const v7, 0x7f040028

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 509
    .local v1, btnSeekBack:Landroid/widget/ImageView;
    const-string v7, "common_icon_glance_rewind_rest"

    const v8, 0x208094c

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    const v7, 0x7f040029

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    .line 512
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnSeekUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    const-string v8, "common_transport_next"

    const v9, 0x7f020008

    invoke-static {p0, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 515
    const v7, 0x7f04002a

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 516
    .local v2, btnSeekNext:Landroid/widget/ImageView;
    const-string v7, "common_icon_glance_forward_rest"

    const v8, 0x20808d4

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    const v7, 0x7f040025

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/FMRepeatingImageButton;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    .line 519
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnTuneUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMRepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnTuneUpRepeatListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FMRepeatingImageButton;->setRepeatListener(Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;J)V

    .line 521
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMRepeatingImageButton;->setFastEnabled(Z)V

    .line 523
    const v7, 0x7f040024

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/FMRepeatingImageButton;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    .line 524
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnTuneDownClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMRepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnTuneDownRepeatListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FMRepeatingImageButton;->setRepeatListener(Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;J)V

    .line 526
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMRepeatingImageButton;->setFastEnabled(Z)V

    .line 528
    const v7, 0x7f040026

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/FMSeekBar;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    .line 529
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v7, p0}, Lcom/htc/fm/FMSeekBar;->setTouchListener(Lcom/htc/fm/FMSeekBarTouchListener;)V

    .line 530
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 531
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 534
    const v7, 0x7f040017

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/SignalBar;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    .line 535
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fm/SignalBar;->setFocusable(Z)V

    .line 537
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    const-string v10, "fm_tune_down"

    const v11, 0x7f02001c

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMRepeatingImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    const-string v10, "fm_tune_up"

    const v11, 0x7f02001d

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMRepeatingImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    const v7, 0x7f040021

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    .line 543
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    .line 545
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 549
    :cond_4
    const v7, 0x7f040020

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    .line 550
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 552
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 556
    :cond_5
    const v7, 0x7f040023

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    .line 558
    iget v7, p0, Lcom/htc/fm/FMRadio;->mBand:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 560
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    const v8, 0x7f020075

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    :cond_6
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 565
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    :cond_7
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 569
    .local v5, manager:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 571
    .local v3, display:Landroid/view/Display;
    sget-object v7, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[FMRadio][FMTuner] width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v8, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/htc/fm/FMUtils;->getNowPlaying(Landroid/content/Context;IZ)Lcom/htc/fm/Preset;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 576
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 578
    .local v0, RotationAngle:I
    sget-object v7, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[FMRadio]RotationAngle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    if-eqz v0, :cond_8

    const/4 v7, 0x2

    if-ne v0, v7, :cond_a

    .line 586
    :cond_8
    const v7, 0x7f040010

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/FreqRollBar;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    .line 587
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x3f19999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 588
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x3f19999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 589
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const v10, 0x3f19999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 590
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const v10, 0x3f19999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 591
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v9, v9, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v7, v8, v9}, Lcom/htc/fm/FreqRollBar;->OnCreate(ZI)V

    .line 592
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Lcom/htc/fm/FreqRollBar;->setHandler(Landroid/os/Handler;)V

    .line 594
    const v7, 0x7f040019

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/MirrorFace;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    .line 595
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 596
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 597
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 598
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 599
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v9, v9, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v7, v8, v9}, Lcom/htc/fm/MirrorFace;->OnCreate(ZI)V

    .line 601
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v7, v8}, Lcom/htc/fm/FreqRollBar;->setMirror(Lcom/htc/fm/MirrorFace;)V

    .line 628
    :goto_1
    return-void

    .line 445
    .end local v0           #RotationAngle:I
    .end local v1           #btnSeekBack:Landroid/widget/ImageView;
    .end local v2           #btnSeekNext:Landroid/widget/ImageView;
    .end local v3           #display:Landroid/view/Display;
    .end local v5           #manager:Landroid/view/WindowManager;
    :cond_9
    iget-boolean v7, p0, Lcom/htc/fm/FMRadio;->m_bSenceLandScape:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 447
    const v7, 0x7f040007

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    .line 448
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mBtnPowerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mPowerButtonTouchEvent:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 610
    .restart local v0       #RotationAngle:I
    .restart local v1       #btnSeekBack:Landroid/widget/ImageView;
    .restart local v2       #btnSeekNext:Landroid/widget/ImageView;
    .restart local v3       #display:Landroid/view/Display;
    .restart local v5       #manager:Landroid/view/WindowManager;
    :cond_a
    const v7, 0x7f040010

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/FreqRollBar;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    .line 611
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x3f4ccccd

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 612
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x3f4ccccd

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 613
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const v10, 0x3f19999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 614
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const v10, 0x3f19999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/FreqRollBar;->SetXasisRotationAngle(IFF)V

    .line 615
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v9, v9, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v7, v8, v9}, Lcom/htc/fm/FreqRollBar;->OnCreate(ZI)V

    .line 616
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Lcom/htc/fm/FreqRollBar;->setHandler(Landroid/os/Handler;)V

    .line 618
    const v7, 0x7f040019

    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/MirrorFace;

    iput-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    .line 619
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v9, v9, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v7, v8, v9}, Lcom/htc/fm/MirrorFace;->OnCreate(ZI)V

    .line 620
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x3e99999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 621
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f00

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 622
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/high16 v10, 0x3f00

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 623
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const v10, 0x3e99999a

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/fm/MirrorFace;->SetXasisRotationAngle(IFF)V

    .line 625
    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v7, v8}, Lcom/htc/fm/FreqRollBar;->setMirror(Lcom/htc/fm/MirrorFace;)V

    goto/16 :goto_1
.end method

.method private internalTurnOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1908
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio] turnOn() - start"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1911
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][FMTuner] turnOn() No headset plugged! return!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v1, :cond_0

    .line 1919
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    if-nez v1, :cond_2

    .line 1920
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio] getNowPlaying() - turnOn mIsFromEditCancelled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bindService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1922
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPlaying()V

    .line 1926
    :cond_2
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1927
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    .line 1929
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1, v4}, Lcom/htc/fm/FMController;->setAutoPreScanEnabled(Z)V

    .line 1932
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le v1, v2, :cond_4

    .line 1933
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getFirstPresetId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;I)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1934
    .local v0, firstPreset:Lcom/htc/fm/Preset;
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio] found scan failed case, reset the freq"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    if-eqz v0, :cond_4

    .line 1937
    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    if-lez v1, :cond_5

    .line 1939
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v0, Lcom/htc/fm/Preset;->freq:I

    iput v2, v1, Lcom/htc/fm/Preset;->freq:I

    .line 1940
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v2, v0, Lcom/htc/fm/Preset;->freq:I

    iput v2, v1, Lcom/htc/fm/Preset;->freq:I

    .line 1951
    .end local v0           #firstPreset:Lcom/htc/fm/Preset;
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v1, v4}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 1952
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/fm/FMRadio;->mTimeOnTurnOff:J

    .line 1953
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMController;->turnOn(I)Z

    .line 1954
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio] turnOn() - end"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1944
    .restart local v0       #firstPreset:Lcom/htc/fm/Preset;
    :cond_5
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    iput v2, v1, Lcom/htc/fm/Preset;->freq:I

    .line 1945
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    iput v2, v1, Lcom/htc/fm/Preset;->freq:I

    goto :goto_1
.end method

.method private isFMPlaying()Z
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3571
    const/4 v0, 0x0

    .line 3573
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->isFMPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method private isFMReady()Z
    .locals 1

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3564
    const/4 v0, 0x0

    .line 3566
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->isFMReady()Z

    move-result v0

    goto :goto_0
.end method

.method private isMute()Z
    .locals 2

    .prologue
    .line 3094
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3095
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-gtz v1, :cond_0

    .line 3096
    const/4 v1, 0x1

    .line 3098
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOnAirplane()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2913
    .local v3, st:J
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 2915
    .local v2, ret:Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2916
    .local v0, et:J
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!! @@@@ isOnAirplane?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    return v2
.end method

.method private isRdsOn()Z
    .locals 1

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3585
    const/4 v0, 0x0

    .line 3587
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->isRdsOn()Z

    move-result v0

    goto :goto_0
.end method

.method private isRssiOn()Z
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3578
    const/4 v0, 0x0

    .line 3580
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->isRssiOn()Z

    move-result v0

    goto :goto_0
.end method

.method private isScanning()Z
    .locals 1

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3528
    const/4 v0, 0x0

    .line 3529
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->isScanning()Z

    move-result v0

    goto :goto_0
.end method

.method private isServiceBinded()Z
    .locals 1

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3558
    const/4 v0, 0x0

    .line 3559
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->serviceBinded()Z

    move-result v0

    goto :goto_0
.end method

.method private isTopActivity()Z
    .locals 8

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, isTop:Z
    const-class v6, Lcom/htc/fm/FMRadio;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, thisClassName:Ljava/lang/String;
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/htc/fm/FMRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 265
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v6, 0xa

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 268
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 269
    .local v4, taskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 271
    const/4 v2, 0x1

    .line 273
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #taskInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    return v2
.end method

.method private mTune(I)Z
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v2, 0x0

    .line 972
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 973
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][Tune] Cannot tune to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 990
    :goto_0
    return v1

    .line 977
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 978
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][Tune] Cannot tune to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CMD status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 979
    goto :goto_0

    .line 982
    :cond_1
    const/4 v1, 0x0

    .line 984
    .local v1, ret:Z
    :try_start_0
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][Tune] tuning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3, p1}, Lcom/htc/fm/FMController;->tune(I)Z

    move-result v1

    .line 986
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][Tune] tune "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sent!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 987
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move v1, v2

    .line 988
    goto :goto_0
.end method

.method private map2Progress(I)I
    .locals 10
    .parameter "freq"

    .prologue
    const v9, 0x185d8

    const v8, 0x173e0

    const v7, 0x17250

    const v6, 0x16058

    const v5, 0x15ec8

    .line 2355
    sget v4, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sub-int v0, p1, v4

    .line 2356
    .local v0, a:I
    rem-int/lit16 v1, v0, 0x3e8

    .line 2357
    .local v1, b:I
    const/4 v2, 0x0

    .line 2358
    .local v2, index:I
    const/16 v4, 0x12c

    if-lt v1, v4, :cond_3

    const/16 v4, 0x2bc

    if-gt v1, v4, :cond_3

    .line 2359
    const/16 v4, 0x1f4

    if-ge v1, v4, :cond_2

    .line 2360
    div-int/lit16 v4, v0, 0x1f4

    add-int/lit8 v2, v4, 0x1

    .line 2370
    :goto_0
    const/4 v3, 0x0

    .line 2371
    .local v3, progress:I
    if-nez v2, :cond_0

    .line 2372
    const/4 v3, 0x0

    .line 2374
    :cond_0
    if-ge p1, v5, :cond_5

    .line 2375
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x17

    add-int/lit8 v3, v4, 0x16

    .line 2400
    :cond_1
    :goto_1
    return v3

    .line 2362
    .end local v3           #progress:I
    :cond_2
    div-int/lit16 v2, v0, 0x1f4

    goto :goto_0

    .line 2364
    :cond_3
    const/16 v4, 0x320

    if-lt v1, v4, :cond_4

    .line 2365
    div-int/lit16 v4, v0, 0x1f4

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    .line 2367
    :cond_4
    div-int/lit16 v2, v0, 0x1f4

    goto :goto_0

    .line 2376
    .restart local v3       #progress:I
    :cond_5
    if-le p1, v6, :cond_6

    if-ge p1, v7, :cond_6

    .line 2377
    add-int/lit8 v2, v2, -0x5

    .line 2378
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x17

    add-int/lit16 v3, v4, 0x9b

    goto :goto_1

    .line 2379
    :cond_6
    if-le p1, v8, :cond_7

    if-ge p1, v9, :cond_7

    .line 2380
    add-int/lit8 v2, v2, -0xf

    .line 2381
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x17

    add-int/lit16 v3, v4, 0x192

    goto :goto_1

    .line 2382
    :cond_7
    const v4, 0x18768

    if-le p1, v4, :cond_8

    const v4, 0x19960

    if-ge p1, v4, :cond_8

    .line 2383
    add-int/lit8 v2, v2, -0x19

    .line 2384
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x17

    add-int/lit16 v3, v4, 0x289

    goto :goto_1

    .line 2385
    :cond_8
    const v4, 0x19af0

    if-le p1, v4, :cond_9

    .line 2386
    add-int/lit8 v2, v2, -0x23

    .line 2387
    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x17

    add-int/lit16 v3, v4, 0x380

    goto :goto_1

    .line 2389
    :cond_9
    if-lt p1, v5, :cond_a

    if-gt p1, v6, :cond_a

    .line 2390
    const/16 v3, 0x7b

    goto :goto_1

    .line 2391
    :cond_a
    if-lt p1, v7, :cond_b

    if-gt p1, v8, :cond_b

    .line 2392
    const/16 v3, 0x172

    goto :goto_1

    .line 2393
    :cond_b
    if-lt p1, v9, :cond_c

    const v4, 0x18e70

    if-gt p1, v4, :cond_c

    .line 2394
    const/16 v3, 0x269

    goto :goto_1

    .line 2395
    :cond_c
    const v4, 0x19960

    if-lt p1, v4, :cond_1

    const v4, 0x19af0

    if-gt p1, v4, :cond_1

    .line 2396
    const/16 v3, 0x361

    goto :goto_1
.end method

.method private notifyPresetDataChanged()V
    .locals 3

    .prologue
    .line 1575
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "notifyPresetDataChanged"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "preset_data_changed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->sendBroadcast(Landroid/content/Intent;)V

    .line 1580
    return-void
.end method

.method private onSeekComplete(I)V
    .locals 5
    .parameter "freq"

    .prologue
    const/4 v2, -0x1

    .line 3784
    iget v1, p0, Lcom/htc/fm/FMRadio;->mMenuAudioOption:I

    if-eq v1, v2, :cond_0

    .line 3785
    iget v1, p0, Lcom/htc/fm/FMRadio;->mMenuAudioOption:I

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->setAudioOut(I)V

    .line 3786
    iput v2, p0, Lcom/htc/fm/FMRadio;->mMenuAudioOption:I

    .line 3789
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 3791
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v1, v2}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 3793
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner] onSeekComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Scanning?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3795
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_1

    .line 3796
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    sget v4, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 3797
    .local v0, progress:I
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v0}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 3804
    .end local v0           #progress:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3816
    :cond_2
    :goto_0
    return-void

    .line 3807
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/htc/fm/FMRadio;->updateChannelBySeek(Lcom/htc/fm/Preset;Z)V

    .line 3811
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsSeeking:Z

    .line 3813
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mScanAfterSeek:Z

    if-eqz v1, :cond_2

    .line 3814
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->startScan()V

    goto :goto_0
.end method

.method private processOnScanFinished()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3449
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][ScanSave] processOnScanFinished() - start"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    const/4 v1, 0x0

    .line 3453
    .local v1, size:I
    if-lt v1, v4, :cond_2

    .line 3454
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 3455
    .local v0, preset:Lcom/htc/fm/Preset;
    if-ne v1, v4, :cond_3

    .line 3456
    iget v2, v0, Lcom/htc/fm/Preset;->freq:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-ne v2, v3, :cond_1

    .line 3457
    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsScanCancelled:Z

    if-nez v2, :cond_0

    .line 3458
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 3460
    :cond_0
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsScanCancelled:Z

    .line 3467
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->tuneToPreset(Lcom/htc/fm/Preset;)Z

    .line 3470
    .end local v0           #preset:Lcom/htc/fm/Preset;
    :cond_2
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio][ScanSave] isScanning()("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    iget v2, p0, Lcom/htc/fm/FMRadio;->mScanPrevAudioPath:I

    if-ne v2, v6, :cond_4

    .line 3472
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMTuner][ScanSave] setAudioPath(FMDef.AUDIO_PATH_HEADSET)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 3478
    :goto_1
    iput v6, p0, Lcom/htc/fm/FMRadio;->mScanPrevAudioPath:I

    .line 3479
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 3480
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][ScanSave] processOnScanFinished() - end"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    return-void

    .line 3463
    .restart local v0       #preset:Lcom/htc/fm/Preset;
    :cond_3
    iget v2, v0, Lcom/htc/fm/Preset;->freq:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 3475
    .end local v0           #preset:Lcom/htc/fm/Preset;
    :cond_4
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio][ScanSave] setAudioPath("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMRadio;->mScanPrevAudioPath:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3476
    iget v2, p0, Lcom/htc/fm/FMRadio;->mScanPrevAudioPath:I

    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    goto :goto_1
.end method

.method private removeReference()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 829
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    .line 830
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    .line 831
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    .line 832
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    .line 833
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    .line 834
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    .line 835
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    .line 836
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    .line 837
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    .line 838
    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    .line 839
    return-void
.end method

.method private requesetPreset()V
    .locals 4

    .prologue
    .line 3968
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v1, :cond_1

    .line 3982
    :cond_0
    :goto_0
    return-void

    .line 3971
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->isRssiOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->isRdsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3974
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    if-eqz v1, :cond_0

    .line 3975
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 3976
    .local v0, preset:Lcom/htc/fm/Preset;
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][FMTuner] mChannelRequested=true"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->tuneToPreset(Lcom/htc/fm/Preset;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3978
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner] tuneToPreset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    goto :goto_0
.end method

.method private requestTune2Preset(I)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3108
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] requestTune2Preset(id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    invoke-static {p0, p1}, Lcom/htc/fm/FMUtils;->getPresetCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 3110
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 3139
    :cond_0
    :goto_0
    return v3

    .line 3113
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3116
    const/4 v0, 0x0

    .line 3117
    goto :goto_0

    .line 3120
    :cond_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3121
    .local v2, rowId:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3123
    .local v1, freq:I
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    .line 3124
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput v2, v5, Lcom/htc/fm/Preset;->rowId:I

    .line 3125
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput v1, v5, Lcom/htc/fm/Preset;->freq:I

    .line 3126
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 3127
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 3128
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput v3, v5, Lcom/htc/fm/Preset;->rssi:I

    .line 3129
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 3130
    invoke-static {p0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 3131
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-static {p0, v3}, Lcom/htc/fm/FMBtsUtils;->updateStatusBar(Landroid/content/Context;Lcom/htc/fm/Preset;)V

    .line 3132
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mRequestPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v3, v4}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 3134
    if-eqz v0, :cond_3

    .line 3136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3137
    const/4 v0, 0x0

    :cond_3
    move v3, v4

    .line 3139
    goto :goto_0
.end method

.method private requestTune2Preset(Lcom/htc/fm/Preset;)Z
    .locals 6
    .parameter "Preset"

    .prologue
    const/4 v5, 0x1

    .line 3145
    const/4 v1, 0x1

    .line 3146
    .local v1, ret:Z
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio][FMTuner] requestTune2Preset(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/fm/Preset;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    iget v2, p1, Lcom/htc/fm/Preset;->id:I

    invoke-static {p0, v2}, Lcom/htc/fm/FMUtils;->getPresetCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 3148
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 3150
    :cond_0
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    .line 3151
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v3, p1, Lcom/htc/fm/Preset;->rowId:I

    iput v3, v2, Lcom/htc/fm/Preset;->rowId:I

    .line 3152
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v3, p1, Lcom/htc/fm/Preset;->freq:I

    iput v3, v2, Lcom/htc/fm/Preset;->freq:I

    .line 3153
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v3, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 3154
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v3, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 3155
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/fm/Preset;->rssi:I

    .line 3156
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-static {v2}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 3157
    invoke-static {p0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 3158
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-static {p0, v2}, Lcom/htc/fm/FMBtsUtils;->updateStatusBar(Landroid/content/Context;Lcom/htc/fm/Preset;)V

    .line 3159
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mRequestPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v2, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 3165
    :goto_0
    return v1

    .line 3163
    :cond_1
    iget v2, p1, Lcom/htc/fm/Preset;->id:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->requestTune2Preset(I)Z

    move-result v1

    goto :goto_0
.end method

.method private resetScanProgressDialog()V
    .locals 4

    .prologue
    .line 889
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x1020244

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 891
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 892
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 894
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 895
    if-eqz v1, :cond_1

    .line 896
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanWidth:I

    iget v3, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 897
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginLeft:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 898
    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginRight:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 899
    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginBottom:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 900
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private resetTurnOnProgress()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 861
    iput-wide v2, p0, Lcom/htc/fm/FMRadio;->mProgressTime:J

    .line 862
    iput-wide v2, p0, Lcom/htc/fm/FMRadio;->mTurnOnTime:J

    .line 863
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_1

    .line 864
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x1020244

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 865
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 866
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 867
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 868
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 869
    if-eqz v1, :cond_1

    .line 870
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnWidth:I

    iget v3, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 871
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginLeft:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 872
    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginRight:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 873
    iget v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginBottom:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 874
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private seekDown()Z
    .locals 3

    .prologue
    .line 3332
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v1, :cond_0

    .line 3333
    const/4 v0, 0x0

    .line 3339
    :goto_0
    return v0

    .line 3334
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->seekDown()Z

    move-result v0

    .line 3335
    .local v0, ret:Z
    if-eqz v0, :cond_1

    .line 3336
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "!!!! FM seek down ok"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3338
    :cond_1
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "!!!! FM seek down failed!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private seekUp()Z
    .locals 3

    .prologue
    .line 3321
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v1, :cond_0

    .line 3322
    const/4 v0, 0x0

    .line 3328
    :goto_0
    return v0

    .line 3323
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->seekUp()Z

    move-result v0

    .line 3324
    .local v0, ret:Z
    if-eqz v0, :cond_1

    .line 3325
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "!!!! FM seek up ok"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3327
    :cond_1
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "!!!! FM seek up failed!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAudioOut(I)V
    .locals 1
    .parameter "outPath"

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 1700
    :goto_0
    return-void

    .line 1692
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1697
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->setHeadsetOut()Z

    goto :goto_0

    .line 1694
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->setSpeakerOut()Z

    goto :goto_0

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCommonButtonText(Landroid/widget/Button;II)V
    .locals 1
    .parameter "button"
    .parameter "resID"
    .parameter "textID"

    .prologue
    const/4 v0, 0x0

    .line 369
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 372
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    .line 373
    const/16 v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 375
    :cond_0
    return-void
.end method

.method private setIntentReceiver()V
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v1, Lcom/htc/fm/FMRadio$AppBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/fm/FMRadio$AppBroadcastReceiver;-><init>(Lcom/htc/fm/FMRadio;Lcom/htc/fm/FMRadio$1;)V

    iput-object v1, p0, Lcom/htc/fm/FMRadio;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/fm/FMRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setMono()V
    .locals 3

    .prologue
    .line 1009
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "set mono - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1011
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set mono, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    sget-boolean v0, Lcom/htc/fm/FMTunerController;->mIsVolumeSetting:Z

    if-eqz v0, :cond_2

    .line 1016
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] Cannot set Mono on, mIsVolumeSetting is true"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->setMono()Z

    .line 1025
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "set mono - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMute()V
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->setMute()V

    .line 1705
    :cond_0
    return-void
.end method

.method private setStereo()V
    .locals 3

    .prologue
    .line 994
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "set stereo - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 996
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set stereo, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->setStereo()Z

    .line 1005
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "set stereo - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUIDisable()V
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/high16 v5, 0x3f80

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 632
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] setUIDisable()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/SignalBar;->setEnabled(Z)V

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 658
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 659
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080874

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 662
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    if-eqz v0, :cond_5

    .line 664
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setFocusable(Z)V

    .line 668
    :cond_5
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    if-eqz v0, :cond_6

    .line 670
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setFocusable(Z)V

    .line 674
    :cond_6
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 676
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 677
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 678
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const v1, 0x20808e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 681
    :cond_7
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 683
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 687
    :cond_8
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 689
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 690
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 693
    :cond_9
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 695
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 699
    :cond_a
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 701
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 705
    :cond_b
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 707
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    :cond_c
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 714
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    :cond_d
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_e

    .line 721
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 725
    :cond_e
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 726
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const-string v1, "#DCDCDC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 728
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v1, "#DCDCDC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 729
    return-void
.end method

.method private setUIEnable()V
    .locals 7

    .prologue
    const/high16 v6, 0x4020

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 732
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] setUIEnable()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_1

    .line 735
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] setUIEnable() no headset plugged - return!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    if-eqz v0, :cond_4

    .line 749
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/SignalBar;->setEnabled(Z)V

    .line 750
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    invoke-virtual {v0, v5}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    .line 753
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 755
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 758
    :cond_5
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 760
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 761
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnAdd:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208087c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 764
    :cond_6
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    if-eqz v0, :cond_7

    .line 765
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setEnabled(Z)V

    .line 766
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnBack:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setFocusable(Z)V

    .line 769
    :cond_7
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    if-eqz v0, :cond_8

    .line 770
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnNext:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setFocusable(Z)V

    .line 774
    :cond_8
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 775
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 777
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnPresetList:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    const v1, 0x20808ea

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 780
    :cond_9
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 781
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 782
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekBack:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 785
    :cond_a
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 786
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mBtnSeekNext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 790
    :cond_b
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 792
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayerOff:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 796
    :cond_c
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 798
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mNumberCoverLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 802
    :cond_d
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 804
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTunerpanel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    :cond_e
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 811
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    :cond_f
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 816
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 817
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v1, "#DCDCDC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 818
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const-string v1, "#DCDCDC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 820
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] setUIEnable() ScanDialog Still on the screen. CLose it"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    goto/16 :goto_0
.end method

.method private setUnMute()V
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->setUnMute()V

    .line 1710
    :cond_0
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1713
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showNoHeadsetDialog()V
    .locals 7

    .prologue
    .line 3025
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "!!!! showNoHeadsetDialog()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v3, :cond_1

    .line 3050
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3032
    .local v0, now:J
    const/4 v2, 0x1

    .line 3033
    .local v2, show:Z
    iget-wide v3, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 3034
    const/4 v2, 0x1

    .line 3037
    :cond_2
    iget-wide v3, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 3038
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "!!!! showNoHeadsetDialog() - return"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    const/4 v2, 0x0

    .line 3042
    :cond_3
    if-eqz v2, :cond_0

    .line 3045
    iput-wide v0, p0, Lcom/htc/fm/FMRadio;->mPreShowTime:J

    .line 3047
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "DIALOG_NO_HEADSET"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->dismissAllDialogs()V

    .line 3049
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    goto :goto_0
.end method

.method private showScanProgressDialog()V
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v0, :cond_0

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 885
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->resetScanProgressDialog()V

    goto :goto_0
.end method

.method private showTurnOffDialog()V
    .locals 3

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v0, :cond_1

    .line 1497
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 1499
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "+show Turn Off dialog"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    .line 1501
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1502
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1503
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1504
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mDialogTurnOff:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1505
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "-show Turn Off dialog"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showTurnOnProgress()V
    .locals 2

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v0, :cond_0

    .line 858
    :goto_0
    return-void

    .line 855
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 856
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->resetTurnOnProgress()V

    .line 857
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startAirplaneModeHandler()V
    .locals 2

    .prologue
    .line 2945
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] startAirplaneModeHandler begin"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    new-instance v0, Lcom/htc/fm/FMRadio$24;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRadio$24;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v0}, Lcom/htc/fm/FMRadio$24;->start()V

    .line 2963
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] startAirplaneModeHandler start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    return-void
.end method

.method private startHeadsetHandler(Z)V
    .locals 2
    .parameter "isPluged"

    .prologue
    .line 2992
    if-eqz p1, :cond_0

    .line 2993
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] mHeadsetHandler WHAT_FM_HEADSET_PLUG"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mHeadsetHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2999
    :goto_0
    return-void

    .line 2996
    :cond_0
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] mHeadsetHandler WHAT_FM_HEADSET_UNPLUG"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mHeadsetHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startScan()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1534
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 1571
    :goto_0
    return-void

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getState()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1538
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ can not startScan() - Status not ON"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :cond_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@@@ startScan() mFromManul? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1544
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@ startScan() - isScanning()? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1547
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mScanAfterSeek:Z

    .line 1548
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsSeeking:Z

    if-eqz v0, :cond_3

    .line 1549
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mScanAfterSeek:Z

    goto :goto_0

    .line 1553
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1555
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->getAudioPath(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mScanPrevAudioPath:I

    .line 1556
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showScanProgressDialog()V

    .line 1557
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 1560
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 1561
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 1562
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v0, v3}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 1564
    const-string v0, "search_channel"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->scan()V

    goto/16 :goto_0
.end method

.method private switchContentView()V
    .locals 5

    .prologue
    const v4, 0x7f030003

    .line 392
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->m_bSenceLandScape:Z

    if-eqz v1, :cond_0

    .line 394
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][Activity] use mdpi Sense land scape mode"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v4}, Lcom/htc/fm/FMRadio;->setContentView(I)V

    .line 396
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initUi()V

    .line 397
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateProgressDialogLayoutParams4Landscape()V

    .line 413
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getOrientation()I

    move-result v0

    .line 402
    .local v0, dir:I
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][Activity] Orientation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    if-nez v0, :cond_1

    .line 404
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMRadio;->setContentView(I)V

    .line 405
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initUi()V

    .line 406
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateProgressDialogLayoutParams()V

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/fm/FMRadio;->setContentView(I)V

    .line 409
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initUi()V

    .line 410
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateProgressDialogLayoutParams4Landscape()V

    goto :goto_0
.end method

.method private tuneToPreset(Lcom/htc/fm/Preset;)Z
    .locals 7
    .parameter "preset"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x1f4

    const/16 v4, 0x154

    .line 2405
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio] tuneToPreset["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    if-nez p1, :cond_1

    .line 2407
    const/4 v0, 0x0

    .line 2426
    :cond_0
    :goto_0
    return v0

    .line 2409
    :cond_1
    const/4 v0, 0x0

    .line 2410
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v1

    if-ne v1, v6, :cond_0

    iget v1, p1, Lcom/htc/fm/Preset;->freq:I

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/htc/fm/Preset;->freq:I

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-gt v1, v2, :cond_0

    .line 2413
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v1, p1}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 2415
    iget v1, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->mTune(I)Z

    move-result v0

    .line 2417
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 2418
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    .line 2420
    invoke-direct {p0, p1, v6}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 2422
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 2423
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    goto :goto_0
.end method

.method private turnOff()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 4384
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4385
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4386
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4387
    return-void
.end method

.method private turnOffFM(Z)V
    .locals 2
    .parameter "needFinish"

    .prologue
    .line 1869
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner] turnOffFM() - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_1

    .line 1872
    if-eqz p1, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1882
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    iput-boolean p1, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    .line 1878
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOff()V

    .line 1879
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showTurnOffDialog()V

    .line 1880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/FMRadio;->mTimeOnTurnOff:J

    .line 1881
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner] turnOffFM() - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private turnOn()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 1902
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1903
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1904
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1905
    return-void
.end method

.method private unbindService()Z
    .locals 2

    .prologue
    .line 3550
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-nez v0, :cond_0

    .line 3551
    const/4 v0, 0x0

    .line 3553
    :goto_0
    return v0

    .line 3552
    :cond_0
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner][Service] unbindService()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->unbindService()Z

    move-result v0

    goto :goto_0
.end method

.method private updateBand()V
    .locals 2

    .prologue
    .line 1852
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->setContentView(I)V

    .line 1853
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initUi()V

    .line 1854
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    iget v1, p0, Lcom/htc/fm/FMRadio;->mBand:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMController;->setBand(I)V

    .line 1855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mOnSetband:Z

    .line 1857
    invoke-static {p0}, Lcom/htc/fm/FMUtils;->clearAllPresets(Landroid/content/Context;)V

    .line 1858
    invoke-static {}, Lcom/htc/fm/FMUtils;->clearNowPlaying()V

    .line 1861
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ ####### updateBand() - ACTION_TOGGLE_POWER!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1863
    return-void
.end method

.method private updateChannel(Lcom/htc/fm/Preset;Z)V
    .locals 1
    .parameter "preset"
    .parameter "updateSeekbar"

    .prologue
    .line 2259
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;ZZ)V

    .line 2260
    return-void
.end method

.method private updateChannel(Lcom/htc/fm/Preset;ZZ)V
    .locals 5
    .parameter "preset"
    .parameter "updateSeekbar"
    .parameter "useAnimation"

    .prologue
    const/4 v4, 0x4

    .line 2265
    if-nez p1, :cond_0

    .line 2301
    :goto_0
    return-void

    .line 2268
    :cond_0
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner] updateChannel("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    if-eqz p2, :cond_1

    .line 2270
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 2271
    :cond_1
    iget v1, p1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/htc/fm/FMRadio;->getFreq(J)Ljava/lang/String;

    move-result-object v0

    .line 2274
    .local v0, freq:Ljava/lang/String;
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner] updateChannel("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsUseRollingAnimation:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 2277
    sget-boolean v1, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v1, :cond_2

    .line 2278
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2294
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    iget v2, p1, Lcom/htc/fm/Preset;->id:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2295
    iget v1, p1, Lcom/htc/fm/Preset;->rowId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 2296
    iget-object v1, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto :goto_0

    .line 2280
    :cond_2
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2283
    :cond_3
    sget-boolean v1, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v1, :cond_4

    .line 2285
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2286
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v1, v4}, Lcom/htc/fm/MirrorFace;->setVisibility(I)V

    goto :goto_1

    .line 2290
    :cond_4
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2, p3}, Lcom/htc/fm/FreqRollBar;->setFreq(IZ)V

    goto :goto_1

    .line 2298
    :cond_5
    iget-object v1, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateChannel(Z)V
    .locals 6
    .parameter "needUpdateProgress"

    .prologue
    const/4 v5, 0x4

    .line 2174
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    .line 2177
    .local v1, preset:Lcom/htc/fm/Preset;
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] updateChannel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") title("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    if-eqz p1, :cond_0

    .line 2179
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] progress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    iget v3, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 2184
    :cond_0
    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsUseRollingAnimation:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 2186
    iget v2, v1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/htc/fm/FMRadio;->getFreq(J)Ljava/lang/String;

    move-result-object v0

    .line 2187
    .local v0, freq:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v2, :cond_1

    .line 2188
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    .end local v0           #freq:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    iget v3, v1, Lcom/htc/fm/Preset;->id:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2210
    iget v2, v1, Lcom/htc/fm/Preset;->rowId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 2211
    iget-object v2, v1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    .line 2215
    :goto_1
    return-void

    .line 2190
    .restart local v0       #freq:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2193
    .end local v0           #freq:Ljava/lang/String;
    :cond_2
    sget-boolean v2, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v2, :cond_3

    .line 2195
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2196
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v2, v5}, Lcom/htc/fm/MirrorFace;->setVisibility(I)V

    goto :goto_0

    .line 2201
    :cond_3
    iget v2, v1, Lcom/htc/fm/Preset;->freq:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-lt v2, v3, :cond_4

    .line 2202
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget v3, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v3}, Lcom/htc/fm/FreqRollBar;->setFreq(I)V

    goto :goto_0

    .line 2204
    :cond_4
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "freq value is invaild, do not show it "

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2213
    :cond_5
    iget-object v2, v1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateChannelBySeek(Lcom/htc/fm/Preset;Z)V
    .locals 5
    .parameter "preset"
    .parameter "updateSeekbar"

    .prologue
    const/4 v4, 0x4

    .line 2220
    if-nez p1, :cond_0

    .line 2255
    :goto_0
    return-void

    .line 2223
    :cond_0
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner] updateChannelBySeek("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    if-eqz p2, :cond_1

    .line 2225
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 2226
    :cond_1
    iget v1, p1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/htc/fm/FMRadio;->getFreq(J)Ljava/lang/String;

    move-result-object v0

    .line 2228
    .local v0, freq:Ljava/lang/String;
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner] updateChannelBySeek("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsUseRollingAnimation:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 2231
    sget-boolean v1, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v1, :cond_2

    .line 2232
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    iget v2, p1, Lcom/htc/fm/Preset;->id:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2249
    iget v1, p1, Lcom/htc/fm/Preset;->rowId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 2250
    iget-object v1, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto :goto_0

    .line 2234
    :cond_2
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2237
    :cond_3
    sget-boolean v1, Lcom/htc/fm/FMDef;->ISFAKE:Z

    if-eqz v1, :cond_4

    .line 2239
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2240
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v1, v4}, Lcom/htc/fm/MirrorFace;->setVisibility(I)V

    goto :goto_1

    .line 2244
    :cond_4
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FreqRollBar;->setFreqbySeek(I)V

    goto :goto_1

    .line 2252
    :cond_5
    iget-object v1, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateContentView(I)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 3695
    invoke-virtual {p0, p1}, Lcom/htc/fm/FMRadio;->setContentView(I)V

    .line 3696
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initUi()V

    .line 3697
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->UpdateScreen()V

    .line 3698
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateProgressDialogLayoutParams()V

    .line 3699
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3700
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIEnable()V

    .line 3702
    :cond_0
    return-void
.end method

.method private updateMuteMenuItem()V
    .locals 3

    .prologue
    .line 1340
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-nez v1, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1345
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1349
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isMute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1350
    const v1, 0x7f090015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1351
    const v1, 0x7f020054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1354
    :cond_2
    const v1, 0x7f090014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1355
    const v1, 0x7f02004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2331
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] updateName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mLastName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isScanning()("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    if-nez p1, :cond_1

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2334
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mLastName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2337
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2340
    :cond_3
    iput-object p1, p0, Lcom/htc/fm/FMRadio;->mLastName:Ljava/lang/String;

    .line 2341
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePresetByProgress(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 3276
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/FMRadio;->updatePresetByProgress(IZ)V

    .line 3277
    return-void
.end method

.method private updatePresetByProgress(IZ)V
    .locals 7
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    const/16 v6, 0x1f4

    const/16 v5, 0x154

    const/4 v4, 0x0

    .line 3280
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput p1, v2, Lcom/htc/fm/Preset;->freq:I

    .line 3281
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->freq:I

    rem-int/lit8 v0, v2, 0x64

    .line 3282
    .local v0, val:I
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->freq:I

    div-int/lit8 v1, v2, 0x64

    .line 3284
    .local v1, val2:I
    if-eqz v0, :cond_0

    .line 3285
    const/16 v2, 0x32

    if-lt v0, v2, :cond_1

    .line 3286
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x64

    iput v3, v2, Lcom/htc/fm/Preset;->freq:I

    .line 3291
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v2, v3}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 3292
    if-eqz p2, :cond_2

    .line 3294
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 3295
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    .line 3303
    :goto_1
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v2, v4, p2}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;ZZ)V

    .line 3304
    if-eqz p2, :cond_3

    .line 3306
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 3307
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    .line 3317
    :goto_2
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3318
    return-void

    .line 3288
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    mul-int/lit8 v3, v1, 0x64

    iput v3, v2, Lcom/htc/fm/Preset;->freq:I

    goto :goto_0

    .line 3299
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 3300
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    goto :goto_1

    .line 3311
    :cond_3
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mrollbar:Lcom/htc/fm/FreqRollBar;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/fm/FreqRollBar;->setRotateTime(IIII)V

    .line 3312
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mmirrorface:Lcom/htc/fm/MirrorFace;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/htc/fm/MirrorFace;->setRotateTime(IIII)V

    goto :goto_2
.end method

.method private updateProgressDialogLayoutParams()V
    .locals 2

    .prologue
    .line 3719
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnWidth:I

    .line 3720
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnHeight:I

    .line 3721
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginLeft:I

    .line 3722
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginTop:I

    .line 3723
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginRight:I

    .line 3724
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginBottom:I

    .line 3725
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanWidth:I

    .line 3726
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanHeight:I

    .line 3727
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginLeft:I

    .line 3728
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginTop:I

    .line 3729
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginRight:I

    .line 3730
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginBottom:I

    .line 3731
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    .line 3732
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    invoke-virtual {v0}, Lcom/htc/fm/SignalBar;->invalidate()V

    .line 3733
    return-void
.end method

.method private updateProgressDialogLayoutParams4Landscape()V
    .locals 2

    .prologue
    .line 3736
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnWidth:I

    .line 3737
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnHeight:I

    .line 3738
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginLeft:I

    .line 3739
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginTop:I

    .line 3740
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginRight:I

    .line 3741
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogTurnOnMarginBottom:I

    .line 3743
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanWidth:I

    .line 3744
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanHeight:I

    .line 3745
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginLeft:I

    .line 3746
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginTop:I

    .line 3747
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginRight:I

    .line 3748
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMRadio;->mProgressDialogScanMarginBottom:I

    .line 3749
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    .line 3750
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    invoke-virtual {v0}, Lcom/htc/fm/SignalBar;->invalidate()V

    .line 3751
    return-void
.end method

.method private updateSeekingTitle()V
    .locals 2

    .prologue
    .line 3831
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    .line 3834
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mLabelSeeking:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3835
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mLabelSeeking:Ljava/lang/String;

    .line 3837
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getStateMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    .line 3838
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3839
    return-void
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1145
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getServiceState()I

    move-result v0

    .line 1146
    .local v0, serviceState:I
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] updateUi() serviceState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    packed-switch v0, :pswitch_data_0

    .line 1177
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v1

    .line 1178
    .local v1, state:I
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] updateUi() state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    packed-switch v1, :pswitch_data_1

    .line 1198
    :goto_1
    return-void

    .line 1149
    .end local v1           #state:I
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1150
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_0

    .line 1153
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1154
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_0

    .line 1157
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1158
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_0

    .line 1161
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1162
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    .line 1164
    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mSetUIExistWhenResume:Z

    if-ne v2, v5, :cond_1

    .line 1166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mSetUIExistWhenResume:Z

    .line 1167
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v2, :cond_1

    .line 1168
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v2, v5}, Lcom/htc/fm/FMController;->SetUIExist(Z)V

    .line 1171
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1172
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsUnbindPlaying:Z

    goto :goto_0

    .line 1181
    .restart local v1       #state:I
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1182
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_1

    .line 1185
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1186
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_1

    .line 1189
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1190
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_1

    .line 1193
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIEnable()V

    .line 1194
    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    goto :goto_1

    .line 1147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public UpdateScreen()V
    .locals 2

    .prologue
    .line 4423
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4424
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4426
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4429
    :cond_0
    return-void
.end method

.method public getFirstPresetId()I
    .locals 2

    .prologue
    .line 4331
    invoke-static {p0}, Lcom/htc/fm/FMUtils;->getPresetList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4332
    .local v0, presets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fm/Preset;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->rowId:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public nextPreset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3594
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    invoke-static {p0, v1, v2}, Lcom/htc/fm/FMUtils;->getNowPlaying(Landroid/content/Context;IZ)Lcom/htc/fm/Preset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 3595
    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    .line 3608
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 1588
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() Request Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() Result Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() ServiceBinded? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isServiceBinded()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    .line 1593
    if-eq p2, v8, :cond_1

    .line 1595
    const/16 v5, 0x6f

    if-ne p1, v5, :cond_0

    .line 1597
    iput-boolean v9, p0, Lcom/htc/fm/FMRadio;->mIsFromEditCancelled:Z

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    const-string v5, "fm_mode"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1603
    .local v1, mode:I
    const-string v5, "fm_rowid"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1604
    .local v4, rowid:I
    const-string v5, "fm_freq"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1606
    .local v0, freq:I
    const-string v5, "fm_rds"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, rds:Ljava/lang/String;
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iput-boolean v9, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 1611
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1614
    :pswitch_0
    int-to-long v5, v0

    invoke-static {p0, v5, v6}, Lcom/htc/fm/FMUtils;->getPresetByFreq(Landroid/content/Context;J)Lcom/htc/fm/Preset;

    move-result-object v2

    .line 1615
    .local v2, preset:Lcom/htc/fm/Preset;
    if-nez v2, :cond_2

    .line 1617
    new-instance v2, Lcom/htc/fm/Preset;

    .end local v2           #preset:Lcom/htc/fm/Preset;
    invoke-direct {v2}, Lcom/htc/fm/Preset;-><init>()V

    .line 1618
    .restart local v2       #preset:Lcom/htc/fm/Preset;
    iput v8, v2, Lcom/htc/fm/Preset;->rowId:I

    .line 1619
    const-string v5, ""

    iput-object v5, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 1621
    :cond_2
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() Preset edit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    iput-boolean v9, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    .line 1627
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v5, v2}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 1629
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() Save preset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to DB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-direct {p0, v2, v9}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 1631
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() saveNowPlaying("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - PRESET_EDIT_REQUEST_CODE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-static {v2}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 1633
    invoke-static {p0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 1634
    invoke-static {p0, v2}, Lcom/htc/fm/FMBtsUtils;->updateStatusBar(Landroid/content/Context;Lcom/htc/fm/Preset;)V

    .line 1637
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->notifyPresetDataChanged()V

    goto/16 :goto_0

    .line 1640
    .end local v2           #preset:Lcom/htc/fm/Preset;
    :pswitch_1
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() PRESET_LIST_REQUEST_CODE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    if-ne v1, v9, :cond_3

    sget v5, Lcom/htc/fm/FMDef;->Frequency:I

    if-ne v5, v0, :cond_3

    .line 1644
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() PRESET_LIST_REQUEST_CODE - I Request mPreset.rowId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v7, v7, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v5, v5, Lcom/htc/fm/Preset;->rowId:I

    if-eq v5, v8, :cond_0

    .line 1652
    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v5}, Lcom/htc/fm/FMRadio;->requestTune2Preset(Lcom/htc/fm/Preset;)Z

    goto/16 :goto_0

    .line 1657
    :cond_3
    sget-object v5, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner] onActivityResult() PRESET_LIST_REQUEST_CODE - II Request rowId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    if-eq v4, v8, :cond_0

    .line 1660
    invoke-direct {p0, v4}, Lcom/htc/fm/FMRadio;->requestTune2Preset(I)Z

    goto/16 :goto_0

    .line 1611
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCmdStateChanged(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 3756
    return-void
.end method

.method public onCmdStateChanged(II)V
    .locals 2
    .parameter "status"
    .parameter "prevStatus"

    .prologue
    .line 3355
    sparse-switch p1, :sswitch_data_0

    .line 3383
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3384
    return-void

    .line 3357
    :sswitch_0
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ onCmdStatusChanged(): STATUS_READY"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3358
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIEnable()V

    goto :goto_0

    .line 3363
    :sswitch_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ onCmdStatusChanged(): STATUS_SEEKING"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3368
    :sswitch_2
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ onCmdStatusChanged(): STATUS_TUNING"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3373
    :sswitch_3
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ onCmdStatusChanged(): CMD_STATUS_RSSI_TURNING_ON"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3378
    :sswitch_4
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ onCmdStatusChanged(): CMD_STATUS_RSSI_TURNING_OFF"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 3669
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3670
    .local v2, title:Ljava/lang/String;
    const-string v1, "PORTRAIT"

    .line 3671
    .local v1, orientation:Ljava/lang/String;
    const v0, 0x7f030002

    .line 3673
    .local v0, layout:I
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    .line 3680
    const-string v1, "OTHER"

    .line 3684
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][Activity] onConfigurationChanged() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateContentView(I)V

    .line 3688
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    .line 3689
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3691
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3692
    return-void

    .line 3677
    :pswitch_1
    const-string v1, "LANDSCAPE"

    .line 3678
    goto :goto_0

    .line 3673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 283
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "[FMRadio][Activity] onCreate()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 285
    iput-object p0, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    .line 287
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 288
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 290
    const-string v3, "rssi_shown"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/fm/FMDef;->RSSI_SHOWN:Z

    .line 293
    :cond_0
    sput-boolean v5, Lcom/htc/fm/FMLog;->mIsDebug:Z

    .line 297
    iput-boolean v6, p0, Lcom/htc/fm/FMRadio;->mIsShowBandSwitch:Z

    .line 298
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v3, v7, :cond_1

    .line 301
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsShowBandSwitch:Z

    .line 308
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd1

    if-ne v3, v4, :cond_2

    .line 310
    const-string v3, "/data/data/com.htc.fm/band"

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 312
    invoke-static {v5}, Lcom/htc/fm/FMUtils;->setBand(I)V

    .line 316
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/fm/FMRadio;->requestWindowFeature(I)Z

    .line 319
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x95

    if-ne v3, v4, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_3

    .line 322
    invoke-static {v5}, Lcom/htc/fm/FMUtils;->setBand(I)V

    .line 327
    :cond_3
    invoke-static {}, Lcom/htc/fm/FMUtils;->getBand()I

    move-result v3

    iput v3, p0, Lcom/htc/fm/FMRadio;->mBand:I

    .line 330
    new-instance v3, Lcom/htc/fm/FMController;

    iget-object v4, p0, Lcom/htc/fm/FMRadio;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/fm/FMController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    .line 331
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    iget v4, p0, Lcom/htc/fm/FMRadio;->mBand:I

    invoke-virtual {v3, v4}, Lcom/htc/fm/FMController;->setBand(I)V

    .line 332
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3, p0}, Lcom/htc/fm/FMController;->setOnServiceStateChangedListener(Lcom/htc/fm/OnServiceStateChangedListener;)V

    .line 333
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3, p0}, Lcom/htc/fm/FMController;->setOnStateChangedListener(Lcom/htc/fm/OnStateChangedListener;)V

    .line 334
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3, p0}, Lcom/htc/fm/FMController;->setOnEventChangedListener(Lcom/htc/fm/OnEventChangedListener;)V

    .line 335
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3, p0}, Lcom/htc/fm/FMController;->setOnRemoteEventControlListener(Lcom/htc/fm/OnRemoteEventControlListener;)V

    .line 336
    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->setVolumeControlStream(I)V

    .line 337
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setIntentReceiver()V

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 344
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->m_bSenceLandScape:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 354
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/htc/fm/FMUtils;->useCommonPowerButton(Landroid/content/res/Resources;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mUsePowerButtonOnCommonControl:Z

    .line 355
    invoke-static {v2}, Lcom/htc/fm/FMUtils;->useTaskbar2Label(Landroid/content/res/Resources;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mUseTaskbar2Label:Z

    .line 357
    invoke-static {v2}, Lcom/htc/fm/FMUtils;->useThemeChange(Landroid/content/res/Resources;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mUseThemeChange:Z

    .line 359
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->switchContentView()V

    .line 360
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v3, v6}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 361
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput v6, v3, Lcom/htc/fm/Preset;->freq:I

    .line 362
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 363
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][FMTuner] onCreate - preset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 346
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->m_bSenceLandScape:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v6, p0, Lcom/htc/fm/FMRadio;->m_bSenceLandScape:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x1040009

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v3, 0x7f090011

    const v4, 0x1040013

    .line 1372
    const/4 v0, 0x0

    .line 1373
    .local v0, d:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    .line 1483
    :goto_0
    return-object v1

    .line 1376
    :pswitch_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$3;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$3;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1386
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$4;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$4;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1397
    :pswitch_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$6;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$6;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$5;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$5;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1413
    :pswitch_3
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1414
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 1415
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 1416
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1417
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 1418
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1419
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 1423
    :pswitch_4
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1424
    .local v1, dialog:Lcom/htc/app/HtcProgressDialog;
    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 1425
    invoke-virtual {v1, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1426
    invoke-virtual {v1, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 1431
    .end local v1           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_5
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1432
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 1433
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1434
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 1435
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 1436
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1437
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/fm/FMRadio$7;

    invoke-direct {v5, p0}, Lcom/htc/fm/FMRadio$7;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1449
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/htc/fm/FMRadio$8;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$8;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1457
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 1460
    :pswitch_6
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$9;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$9;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1469
    :pswitch_7
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$11;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$11;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/fm/FMRadio$10;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMRadio$10;-><init>(Lcom/htc/fm/FMRadio;)V

    invoke-virtual {v2, v7, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    .line 1725
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1726
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->createOptionMenu()V

    .line 1727
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1286
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Activity] onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsDestroyed:Z

    .line 1288
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][FMTuner]onDestroy - preset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->destroy()V

    .line 1295
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1296
    return-void
.end method

.method public onDpadChanged(ZZ)V
    .locals 4
    .parameter "isNext"
    .parameter "needTune"

    .prologue
    const/4 v3, 0x0

    .line 3259
    if-eqz p2, :cond_0

    .line 3260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 3261
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTuneHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3262
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTuneHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3272
    :goto_0
    return-void

    .line 3266
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTuneHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3267
    if-eqz p1, :cond_1

    .line 3268
    invoke-direct {p0, v3}, Lcom/htc/fm/FMRadio;->doTuneUp(Z)V

    goto :goto_0

    .line 3270
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/fm/FMRadio;->doTuneDown(Z)V

    goto :goto_0
.end method

.method public onFrequencyChanged(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 3444
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] onFrequenceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    return-void
.end method

.method public onHeadsetPlugged()V
    .locals 6

    .prologue
    .line 4341
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][Headset] onHeadsetPlugged() - start"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v2, :cond_2

    .line 4343
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][Headset] onHeadsetPlugged() - plugged - 1"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4344
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isFMReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isFMPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4345
    :cond_0
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset][Service] onHeadsetPlugged() - plugged - 2"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->unbindService()Z

    .line 4381
    :cond_1
    :goto_0
    return-void

    .line 4350
    :cond_2
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 3"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4351
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->hideNoHeadsetDialog()V

    .line 4352
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isFMReady()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isFMPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4353
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIEnable()V

    .line 4354
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 4"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4358
    :cond_3
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 5"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isServiceBinded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4360
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 6"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    .line 4364
    :cond_4
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 7"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 4366
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 8"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    :cond_5
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - 9"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isServiceBinded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4374
    .local v0, now:J
    iget-wide v2, p0, Lcom/htc/fm/FMRadio;->mTimeOnTurnOff:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 4376
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][FMTuner][Headset] onHeadsetPlugged() - plugged - turnOn() "

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    goto :goto_0
.end method

.method public onHeadsetUnPlugged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4390
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Headset] onHeadsetUnPlugged()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4393
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-nez v0, :cond_1

    .line 4394
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4398
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4399
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_2

    .line 4400
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->stopScan()V

    .line 4404
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isServiceBinded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4405
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] Not bind service"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    :goto_0
    return-void

    .line 4409
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    .line 4410
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOff()V

    .line 4412
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Headset] onHeadsetUnPlugged() - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x52

    const/4 v5, 0x4

    const/4 v1, 0x1

    .line 1301
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    .line 1302
    .local v0, status:I
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!! onKeyDown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    .line 1305
    if-ne p1, v6, :cond_1

    sget-boolean v2, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v2, :cond_1

    .line 1306
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 1336
    :cond_0
    :goto_0
    return v1

    .line 1310
    :cond_1
    if-ne p1, v6, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1316
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v2, :cond_3

    .line 1317
    if-ne p1, v5, :cond_3

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v2}, Lcom/htc/fm/FMController;->getState()I

    move-result v2

    if-nez v2, :cond_3

    .line 1318
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->finish()V

    goto :goto_0

    .line 1323
    :cond_3
    if-ne p1, v5, :cond_4

    sget-boolean v2, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v2, :cond_4

    .line 1324
    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->turnOffFM(Z)V

    goto :goto_0

    .line 1328
    :cond_4
    if-ne p1, v5, :cond_6

    .line 1329
    iput-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    .line 1330
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v2, :cond_5

    .line 1331
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMController;->SetUIExist(Z)V

    .line 1332
    :cond_5
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->doOnPause()V

    goto :goto_0

    .line 1336
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMoveEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3248
    const-string v0, "SeekBar"

    const-string v1, "[FMRadio]!!!! @@@@ onMoveEnd()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    .line 3250
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 3251
    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->doTune(Z)V

    .line 3256
    return-void
.end method

.method public onNopresetScanned()V
    .locals 2

    .prologue
    .line 4416
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] onNopresetScanned()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4417
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 4418
    return-void
.end method

.method public onNotifyUiChange(I)V
    .locals 2
    .parameter "uiStatus"

    .prologue
    .line 3343
    packed-switch p1, :pswitch_data_0

    .line 3349
    :goto_0
    return-void

    .line 3345
    :pswitch_0
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! UI update First ON!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const v6, 0x7f090016

    const v5, 0x7f090015

    const v4, 0x7f090014

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1789
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1847
    :cond_0
    :goto_0
    return v3

    .line 1791
    :pswitch_0
    const-string v0, "ANALYTIC_FMRadio"

    const-string v1, "[FMRadio] Mute"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isMute()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 1793
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setMute()V

    .line 1794
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1795
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1798
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1799
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUnMute()V

    .line 1800
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1801
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1807
    :pswitch_1
    const-string v0, "ANALYTIC_FMRadio"

    const-string v1, "[FMRadio] Stereo"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStereo:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 1809
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mIsStereo:Z

    .line 1810
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setStereo()V

    .line 1811
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1812
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1814
    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsStereo:Z

    .line 1815
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setMono()V

    .line 1816
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1817
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1822
    :pswitch_2
    const-string v0, "ANALYTIC_FMRadio"

    const-string v1, "[FMRadio] Speaker Audio Path"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getAudioPath()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 1824
    invoke-direct {p0, v3}, Lcom/htc/fm/FMRadio;->setAudioOut(I)V

    .line 1825
    iput v3, p0, Lcom/htc/fm/FMRadio;->mMenuAudioOption:I

    .line 1826
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1828
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->setAudioOut(I)V

    .line 1829
    iput v2, p0, Lcom/htc/fm/FMRadio;->mMenuAudioOption:I

    .line 1830
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1835
    :pswitch_3
    const-string v0, "ANALYTIC_FMRadio"

    const-string v1, "[FMRadio] Scan Save"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    goto/16 :goto_0

    .line 1840
    :pswitch_4
    iget v0, p0, Lcom/htc/fm/FMRadio;->mBand:I

    if-nez v0, :cond_4

    .line 1841
    iput v3, p0, Lcom/htc/fm/FMRadio;->mBand:I

    .line 1844
    :goto_1
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateBand()V

    goto/16 :goto_0

    .line 1843
    :cond_4
    iput v2, p0, Lcom/htc/fm/FMRadio;->mBand:I

    goto :goto_1

    .line 1789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1212
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][Activity] onPause()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio] onPause - preset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isTopActivity()Z

    move-result v0

    .line 1221
    .local v0, isTopActivity:Z
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v1, :cond_0

    .line 1222
    if-nez v0, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1, v4}, Lcom/htc/fm/FMController;->SetUIExist(Z)V

    .line 1228
    :cond_0
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    .line 1229
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsPaused:Z

    .line 1230
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1}, Lcom/htc/fm/FMController;->getState()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1231
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][FMTuner][Service][Activity] onPause() - setSignalOff"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->unbindService()Z

    .line 1241
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v1, :cond_2

    .line 1242
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v1, v4}, Lcom/htc/fm/FMController;->setUIActive(Z)V

    .line 1245
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1246
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/htc/fm/FMRadio;->mMenu:Landroid/view/Menu;

    .line 1733
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1734
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->createOptionMenu()V

    .line 1735
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 3188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/FMRadio;->updatePresetByProgress(IZ)V

    .line 3189
    return-void
.end method

.method public onRdsChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "rds"

    .prologue
    .line 3427
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@ onRdsChanged() RDS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rssi on?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isRssiOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rds on?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isRdsOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 3432
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 3433
    return-void
.end method

.method public onRdsDataChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "rds"

    .prologue
    .line 3759
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput-object p1, v0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 3760
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v0, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v0, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3761
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput-object p1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 3763
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 3764
    return-void
.end method

.method public onRdsEnabledChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 3441
    return-void
.end method

.method public onRdsPTYDataChanged(I)V
    .locals 0
    .parameter "nCode"

    .prologue
    .line 3770
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 1030
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Activity] onRestart()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    .line 1033
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1055
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio][Activity] onResume()"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1058
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v2, :cond_0

    .line 1059
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v2, v6}, Lcom/htc/fm/FMController;->setUIActive(Z)V

    .line 1062
    :cond_0
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] onResume() mIsRestarted? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isRssiOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isRssiOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") isRdsOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isRdsOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] onResume() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - preset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsPaused:Z

    .line 1066
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    .line 1072
    iput-boolean v6, p0, Lcom/htc/fm/FMRadio;->mSetUIExistWhenResume:Z

    .line 1079
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/fm/FMRadio;->TimeStampOfUIStartingAdjust:J

    .line 1082
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1084
    .local v0, preset:Lcom/htc/fm/Preset;
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isOnAirplane()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1085
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v2, :cond_1

    .line 1086
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    iget v3, v0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 1087
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v2, v5}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 1088
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v2, v5}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 1090
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    if-eqz v2, :cond_2

    .line 1091
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    .line 1093
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 1094
    invoke-virtual {p0, v7}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 1141
    :goto_0
    return-void

    .line 1098
    :cond_3
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1101
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    .line 1103
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateUI()V

    .line 1106
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 1107
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->delayshowNoHeadsetDialog()V

    goto :goto_0

    .line 1109
    :cond_4
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showTurnOffDialog()V

    goto :goto_0

    .line 1112
    :cond_5
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->hideNoHeadsetDialog()V

    .line 1113
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1114
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio] onResume() Do not need to bindService"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    if-eqz v2, :cond_6

    .line 1117
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1118
    sput-boolean v6, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 1119
    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->tuneToPreset(Lcom/htc/fm/Preset;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1120
    iput-boolean v5, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    .line 1124
    :cond_6
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v1

    .line 1126
    .local v1, state:I
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] onResume() current state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    if-ne v1, v6, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    .line 1129
    :cond_7
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    .line 1132
    :cond_8
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio] onResume() bindService ok!!! FM Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    if-nez v2, :cond_9

    .line 1134
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "[FMRadio] onResume() return! activity not restarted!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1137
    :cond_9
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v2, v0}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 1138
    invoke-direct {p0, v0, v6}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 1139
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateUI()V

    goto/16 :goto_0
.end method

.method public onRssiChanged(II)V
    .locals 3
    .parameter "rssi"
    .parameter "rawRssi"

    .prologue
    .line 3394
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ onRssiChanged() rssi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rssi on?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isRssiOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Rds on?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isRdsOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->checkMenu4Mute()V

    .line 3401
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getRawRssi()I

    move-result v0

    sput v0, Lcom/htc/fm/FMDef;->RAW_RSSI_VALUE:I

    .line 3402
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput p1, v0, Lcom/htc/fm/Preset;->rssi:I

    .line 3404
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    .line 3409
    :goto_0
    return-void

    .line 3407
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->rssi:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    goto :goto_0
.end method

.method public onRssiEnabledChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 3437
    return-void
.end method

.method public onScanComplete()V
    .locals 5

    .prologue
    .line 4294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsSeeking:Z

    .line 4296
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_0

    .line 4297
    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mScanProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 4301
    :cond_0
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 4302
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getFirstPresetId()I

    move-result v0

    .line 4305
    .local v0, firstPresetId:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsCompleteScan:Z

    .line 4306
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadio][FMTuner][onScanComplete()] 1st PresetId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4308
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 4310
    :cond_1
    const-string v2, "search_channel"

    const-string v3, "complete"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    if-gez v0, :cond_3

    .line 4317
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "1st PresetID < 0, check the database!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4318
    invoke-static {p0}, Lcom/htc/fm/FMUtils;->getPresetList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4319
    .local v1, presetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fm/Preset;>;"
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 4321
    :cond_2
    sget-object v2, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v3, "Cannot find any presets in database"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 4328
    .end local v1           #presetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fm/Preset;>;"
    :cond_3
    return-void
.end method

.method public onSeekDownComplete(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 3774
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->onSeekComplete(I)V

    .line 3775
    return-void
.end method

.method public onSeekUpComplete(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 3778
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->onSeekComplete(I)V

    .line 3779
    return-void
.end method

.method public onSeekingDown()V
    .locals 2

    .prologue
    .line 3819
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] FM - onSeekingDown()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateSeekingTitle()V

    .line 3821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsSeeking:Z

    .line 3822
    return-void
.end method

.method public onSeekingUp()V
    .locals 2

    .prologue
    .line 3825
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] FM - onSeekingUp()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3826
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateSeekingTitle()V

    .line 3827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsSeeking:Z

    .line 3828
    return-void
.end method

.method public onServiceBinded()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3842
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "[FMRadio][FMTuner][Service] onServiceBinded()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateUI()V

    .line 3845
    const/4 v0, 0x1

    .line 3846
    .local v0, mIsStatusOn:Z
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v3, :cond_0

    .line 3847
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3}, Lcom/htc/fm/FMController;->getState()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 3848
    const/4 v0, 0x0

    .line 3851
    :cond_0
    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mIsFromRestarted:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 3852
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "[FMRadio][FMTuner][Service] onServiceBinded() ServiceBinded return! activity not restarted!"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3854
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 3855
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3906
    :cond_1
    :goto_0
    return-void

    .line 3861
    :cond_2
    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    if-eqz v3, :cond_3

    .line 3862
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v4, "[FMRadio][FMTuner][Service] onServiceBinded() mChannelRequested=true"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v1

    .line 3864
    .local v1, preset:Lcom/htc/fm/Preset;
    sput-boolean v7, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 3865
    invoke-direct {p0, v1}, Lcom/htc/fm/FMRadio;->tuneToPreset(Lcom/htc/fm/Preset;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3866
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][FMTuner][Service] onServiceBinded() tuneToPreset("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    iput-boolean v6, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    goto :goto_0

    .line 3872
    .end local v1           #preset:Lcom/htc/fm/Preset;
    :cond_3
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v3}, Lcom/htc/fm/FMController;->isFMPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3873
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][FMTuner][Service] onServiceBinded() is broadcasting mPresetUpdated("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3875
    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v3, :cond_4

    .line 3876
    new-instance v2, Lcom/htc/fm/FMRadio$28;

    invoke-direct {v2, p0}, Lcom/htc/fm/FMRadio$28;-><init>(Lcom/htc/fm/FMRadio;)V

    .line 3890
    .local v2, runner:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3894
    .end local v2           #runner:Ljava/lang/Thread;
    :cond_4
    iget-boolean v3, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    if-eqz v3, :cond_5

    .line 3895
    iput-boolean v6, p0, Lcom/htc/fm/FMRadio;->mPresetUpdated:Z

    .line 3897
    :cond_5
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3901
    :cond_6
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 3902
    sget-object v3, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadio][FMTuner][Service] onServiceBinded() State off "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    iget-object v3, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v3, v7}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 3904
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    goto/16 :goto_0
.end method

.method public onServiceBinding()V
    .locals 0

    .prologue
    .line 3921
    return-void
.end method

.method public onServiceUnBinded()V
    .locals 2

    .prologue
    .line 3924
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner][Service] onServiceStatusChanged(): STATUS_SERVICE_UNBINDED"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    if-eqz v0, :cond_1

    .line 3926
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->finish()V

    .line 3935
    :cond_0
    :goto_0
    return-void

    .line 3930
    :cond_1
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-nez v0, :cond_0

    .line 3931
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMTuner][Service] onServiceUnBinded() - bindService()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->bindService()Z

    goto :goto_0
.end method

.method public onServiceUnBinding()V
    .locals 0

    .prologue
    .line 3940
    return-void
.end method

.method public onSetBandComplete(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 4258
    return-void
.end method

.method public onSetHeadsetOutComplete()V
    .locals 0

    .prologue
    .line 3945
    return-void
.end method

.method public onSetMonoComplete()V
    .locals 0

    .prologue
    .line 3950
    return-void
.end method

.method public onSetMuteComplete()V
    .locals 0

    .prologue
    .line 3955
    return-void
.end method

.method public onSetRdsOffComplete()V
    .locals 2

    .prologue
    .line 3958
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMServiceBind] onSetRdsOffComplete"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    return-void
.end method

.method public onSetRdsOnComplete()V
    .locals 2

    .prologue
    .line 3962
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMServiceBind] onSetRdsOnComplete"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->requesetPreset()V

    .line 3965
    return-void
.end method

.method public onSetRssiOffComplete()V
    .locals 2

    .prologue
    .line 3985
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMServiceBind] onSetRssiOffComplete"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    return-void
.end method

.method public onSetRssiOnComplete()V
    .locals 2

    .prologue
    .line 3989
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][FMServiceBind] onSetRssiOnComplete"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->requesetPreset()V

    .line 3991
    return-void
.end method

.method public onSetSpeadkerOutComplete()V
    .locals 0

    .prologue
    .line 3996
    return-void
.end method

.method public onSetSpeakerOutComplete()V
    .locals 0

    .prologue
    .line 4268
    return-void
.end method

.method public onSetStereoComplete()V
    .locals 0

    .prologue
    .line 4001
    return-void
.end method

.method public onSetUnMuteComplete()V
    .locals 0

    .prologue
    .line 4006
    return-void
.end method

.method public onSetVolumeComplete(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 4273
    return-void
.end method

.method public onSettingBand(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 4278
    return-void
.end method

.method public onSettingBandComplete(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 4263
    return-void
.end method

.method public onSettingHeadsetOut()V
    .locals 0

    .prologue
    .line 4011
    return-void
.end method

.method public onSettingMono()V
    .locals 0

    .prologue
    .line 4016
    return-void
.end method

.method public onSettingMute()V
    .locals 0

    .prologue
    .line 4021
    return-void
.end method

.method public onSettingRdsOff()V
    .locals 0

    .prologue
    .line 4026
    return-void
.end method

.method public onSettingRdsOn()V
    .locals 0

    .prologue
    .line 4031
    return-void
.end method

.method public onSettingRssiOff()V
    .locals 0

    .prologue
    .line 4036
    return-void
.end method

.method public onSettingRssiOn()V
    .locals 0

    .prologue
    .line 4041
    return-void
.end method

.method public onSettingSpeakerOut()V
    .locals 0

    .prologue
    .line 4046
    return-void
.end method

.method public onSettingStereo()V
    .locals 0

    .prologue
    .line 4051
    return-void
.end method

.method public onSettingUnMute()V
    .locals 0

    .prologue
    .line 4056
    return-void
.end method

.method public onSettingVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 4283
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1204
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Activity] onStart()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@@@@@@ onStart"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mActivityOn:Z

    .line 1207
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1208
    return-void
.end method

.method public onStartScan()V
    .locals 2

    .prologue
    .line 4286
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreScanPreset:Lcom/htc/fm/Preset;

    if-nez v0, :cond_0

    .line 4287
    new-instance v0, Lcom/htc/fm/Preset;

    invoke-direct {v0}, Lcom/htc/fm/Preset;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPreScanPreset:Lcom/htc/fm/Preset;

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreScanPreset:Lcom/htc/fm/Preset;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v0, v1}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 4290
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showScanProgressDialog()V

    .line 4291
    return-void
.end method

.method public onStartTrackingTouch(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 3178
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    iput v0, p0, Lcom/htc/fm/FMRadio;->mPreTouchFreq:I

    .line 3180
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v0, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPreTouchTitle:Ljava/lang/String;

    .line 3181
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iput p1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 3182
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 3183
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRadio;->updatePresetByProgress(I)V

    .line 3184
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1267
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][Activity] onStop()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!! @@@@@@@@@ onStop mIsUnbindPlaying ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mIsUnbindPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")- preset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    .line 1271
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v0}, Lcom/htc/fm/FMController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->unbindService()Z

    .line 1275
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsUnbindPlaying:Z

    if-ne v0, v3, :cond_1

    .line 1276
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, "htcfm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1278
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mActivityOn:Z

    .line 1281
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1282
    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 3192
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][FMSeekBar] onStopTrackingTouch("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-ge p1, v0, :cond_0

    .line 3195
    sget p1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 3198
    :cond_0
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le p1, v0, :cond_1

    .line 3199
    sget p1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    .line 3202
    :cond_1
    iget v0, p0, Lcom/htc/fm/FMRadio;->mPreTouchFreq:I

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    if-ne v0, v1, :cond_2

    .line 3203
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreTouchTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 3206
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    invoke-direct {p0, v0, v3}, Lcom/htc/fm/FMRadio;->updateChannel(Lcom/htc/fm/Preset;Z)V

    .line 3227
    :goto_0
    return-void

    .line 3209
    :cond_2
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 3218
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 3219
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->doTuneOnSeekStop()V

    goto :goto_0
.end method

.method public onTuneComplete(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 3487
    iget v0, p0, Lcom/htc/fm/FMRadio;->mTuneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fm/FMRadio;->mTuneCount:I

    .line 3488
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 3489
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][FMTune] onTuneComplete() Scanning?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsCompleteScan:Z

    if-ne v0, v3, :cond_0

    .line 3498
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreScanPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v0, v1}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 3499
    invoke-direct {p0, v3}, Lcom/htc/fm/FMRadio;->doTune(Z)V

    .line 3500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsCompleteScan:Z

    .line 3504
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    if-eqz v0, :cond_1

    .line 3506
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    if-eq v0, v1, :cond_1

    .line 3508
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][FMTune] trigger tune again mFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    #getter for: Lcom/htc/fm/FMRadio$ChannelController;->mFreq:I
    invoke-static {v2}, Lcom/htc/fm/FMRadio$ChannelController;->access$4500(Lcom/htc/fm/FMRadio$ChannelController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mChannelController:Lcom/htc/fm/FMRadio$ChannelController;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadio$ChannelController;->tuneNotChangeUI(I)V

    .line 3515
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v0, v0, Lcom/htc/fm/Preset;->freq:I

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget v1, v1, Lcom/htc/fm/Preset;->freq:I

    if-ne v0, v1, :cond_2

    .line 3517
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v0, v1}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 3518
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    iget-object v0, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    .line 3524
    :goto_0
    return-void

    .line 3521
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget-object v0, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRadio;->updateName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTuning(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 4061
    return-void
.end method

.method public onTurnOff()V
    .locals 9

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x2

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4065
    const/4 v0, 0x0

    .line 4067
    .local v0, Needtoturnon:Z
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 4069
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4070
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    const-string v2, "common_icon_glance_power_off"

    const v3, 0x208092b

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 4071
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[FMRadio][FMTuner] onTurnOff()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4074
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextIndex:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4075
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    .line 4076
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v1, :cond_0

    .line 4078
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v1, v4}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 4079
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v1, v4}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 4082
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const/16 v2, 0x5a

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4083
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const/16 v2, 0x5a

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4084
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const-string v2, "#DCDCDC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 4085
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v2, "#DCDCDC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 4086
    invoke-direct {p0, v7}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 4087
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->dismissTurnOffDialog()V

    .line 4088
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mOnSetband:Z

    if-eqz v1, :cond_1

    .line 4090
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@ ####### FM - State_Off - Band Switched!!! turnOn again!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4092
    iget-object v1, p0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4094
    :cond_1
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIsUnbindPlaying:Z

    .line 4096
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mActivityOn:Z

    if-nez v1, :cond_2

    .line 4098
    invoke-virtual {p0}, Lcom/htc/fm/FMRadio;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4101
    :cond_2
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v1, :cond_3

    .line 4103
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    .line 4106
    :cond_3
    const-string v1, "turn_off"

    const-string v2, "complete"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    if-eqz v1, :cond_4

    .line 4109
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->unbindService()Z

    .line 4113
    :cond_4
    iget v1, p0, Lcom/htc/fm/FMRadio;->mRetryTimes:I

    if-le v1, v7, :cond_7

    .line 4114
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "Cannot turn on FM Radio, looks like tuner has some problem. Please check tuner side."

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    :cond_5
    :goto_0
    sget-boolean v1, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mIfTurnOffFromUI:Z

    if-eqz v1, :cond_6

    .line 4125
    sget-object v1, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v2, "[Unplugtoturnoff] Need to turn on after turn off"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    .line 4127
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mIfTurnOffFromUI:Z

    .line 4130
    :cond_6
    return-void

    .line 4116
    :cond_7
    iget-boolean v1, p0, Lcom/htc/fm/FMRadio;->mReTurnOn:Z

    if-eqz v1, :cond_5

    .line 4118
    iput-boolean v4, p0, Lcom/htc/fm/FMRadio;->mReTurnOn:Z

    .line 4119
    iget v1, p0, Lcom/htc/fm/FMRadio;->mRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/fm/FMRadio;->mRetryTimes:I

    .line 4120
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    goto :goto_0
.end method

.method public onTurnOffFailed()V
    .locals 0

    .prologue
    .line 4134
    return-void
.end method

.method public onTurnOn(I)V
    .locals 14
    .parameter "freq"

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x4020

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4138
    sget-boolean v6, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v6, :cond_0

    .line 4139
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z

    .line 4140
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "[FMRadio][FMTuner] onTurnOn() No headset plugged - return!"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    invoke-direct {p0, v10}, Lcom/htc/fm/FMRadio;->turnOffFM(Z)V

    .line 4219
    :goto_0
    return-void

    .line 4145
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIEnable()V

    .line 4147
    iput v10, p0, Lcom/htc/fm/FMRadio;->mRetryTimes:I

    .line 4149
    iput-boolean v10, p0, Lcom/htc/fm/FMRadio;->mIsNeedFinished:Z

    .line 4151
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    .line 4153
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FMRadio][FMTuner] onTurnOn() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    iput-boolean v11, p0, Lcom/htc/fm/FMRadio;->mIsUnbindPlaying:Z

    .line 4156
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mImgDisplayOn:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4157
    const v6, 0x7f090122

    invoke-virtual {p0, v6}, Lcom/htc/fm/FMRadio;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4158
    .local v3, resName:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mBtnPower:Lcom/htc/widget/HeaderBarImage;

    const-string v7, "common_icon_glance_power_on"

    const v8, 0x208092c

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 4159
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4161
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->dismissTurnOffDialog()V

    .line 4162
    iget-boolean v6, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    if-nez v6, :cond_1

    .line 4163
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->initAudioOut()V

    .line 4165
    :cond_1
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v6, :cond_2

    .line 4166
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v6, v11}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 4167
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v6, v11}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 4170
    :cond_2
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4171
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4172
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mTextFreq:Landroid/widget/TextView;

    const-string v7, "#DCDCDC"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v12, v9, v9, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 4173
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mTextName:Landroid/widget/TextView;

    const-string v7, "#DCDCDC"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v12, v9, v9, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 4175
    invoke-direct {p0, v11}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    .line 4177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4178
    .local v4, st:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4179
    .local v1, et:J
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!! @@@@@@@ updateStatus() STATUS_ON - get audio path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getAudioPath()I

    move-result v6

    if-ne v6, v11, :cond_6

    .line 4181
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "!!!! @@@@@@@ updateStatus() STATUS_ON - set audio to speaker - start"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "!!!! @@@@@@@ updateStatus() STATUS_ON - set audio to speaker - end"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4190
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!! @@@@@@@ updateStatus() STATUS_ON - check audio out:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    iget-boolean v6, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    if-eqz v6, :cond_3

    .line 4193
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!! @@@@@@@ updateStatus() STATUS_ON Requested Freq("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v8, v8, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") current freq("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v8}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    iput-boolean v10, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    .line 4195
    sput-boolean v11, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 4196
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    invoke-virtual {v6}, Lcom/htc/fm/FMController;->getFrequency()I

    move-result v6

    iget-object v7, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v7, v7, Lcom/htc/fm/Preset;->freq:I

    if-eq v6, v7, :cond_7

    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v6, v6, Lcom/htc/fm/Preset;->freq:I

    if-eqz v6, :cond_7

    .line 4197
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!!! @@@@@@@ updateStatus() STATUS_ON mTune("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v8, v8, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    iget-object v6, p0, Lcom/htc/fm/FMRadio;->mPreset:Lcom/htc/fm/Preset;

    iget v6, v6, Lcom/htc/fm/Preset;->freq:I

    invoke-direct {p0, v6}, Lcom/htc/fm/FMRadio;->mTune(I)Z

    .line 4204
    :cond_3
    :goto_2
    iput-boolean v10, p0, Lcom/htc/fm/FMRadio;->mChannelRequested:Z

    .line 4205
    iput-boolean v10, p0, Lcom/htc/fm/FMRadio;->mFromManul:Z

    .line 4207
    sget-boolean v6, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v6, :cond_4

    .line 4208
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "[FMRadio][FMTuner] updateStatus() STATUS_ON - turnOffFM()"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    invoke-direct {p0, v10}, Lcom/htc/fm/FMRadio;->turnOffFM(Z)V

    .line 4212
    :cond_4
    invoke-static {}, Lcom/htc/fm/FMUtils;->getBand()I

    move-result v0

    .line 4213
    .local v0, band:I
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FMRadio][FMTuner] updateStatus() STATUS_ON ####### band("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    iget v6, p0, Lcom/htc/fm/FMRadio;->mBand:I

    if-eq v6, v0, :cond_5

    .line 4215
    iput v0, p0, Lcom/htc/fm/FMRadio;->mBand:I

    .line 4217
    :cond_5
    iput-boolean v10, p0, Lcom/htc/fm/FMRadio;->mOnSetband:Z

    .line 4218
    const-string v6, "turn_on"

    const-string v7, "complete"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->atsLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4185
    .end local v0           #band:I
    :cond_6
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "!!!! @@@@@@@ updateStatus() STATUS_ON - set audio to headset - start"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4187
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "!!!! @@@@@@@ updateStatus() STATUS_ON - set audio to headset - end"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4200
    :cond_7
    sget-object v6, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v7, "!!!! @@@@@@@ updateStatus() STATUS_ON Same freq"

    invoke-static {v6, v7}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onTurningOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4222
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 4224
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio][State] FM - Turning off"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    if-eqz v0, :cond_0

    .line 4226
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSignalBar:Lcom/htc/fm/SignalBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/SignalBar;->setRssi(I)V

    .line 4228
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v0, :cond_1

    .line 4229
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 4230
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 4232
    :cond_1
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsDestroyed:Z

    if-nez v0, :cond_2

    .line 4233
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showTurnOffDialog()V

    .line 4234
    :cond_2
    return-void
.end method

.method public onTurningOn(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 4238
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->setUIDisable()V

    .line 4240
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio][State] onTurningOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    iput-boolean v3, p0, Lcom/htc/fm/FMRadio;->mAudioOutInited:Z

    .line 4243
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    if-eqz v0, :cond_0

    .line 4244
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v3}, Lcom/htc/fm/FMSeekBar;->setEnabled(Z)V

    .line 4245
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->mSeekbar:Lcom/htc/fm/FMSeekBar;

    invoke-virtual {v0, v3}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 4247
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showTurnOnProgress()V

    .line 4248
    return-void
.end method

.method public onVolumeChanged()V
    .locals 0

    .prologue
    .line 3533
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->updateMuteMenuItem()V

    .line 3534
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 4253
    return-void
.end method

.method public prevPreset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3613
    iget-object v0, p0, Lcom/htc/fm/FMRadio;->DisplayPreset:Lcom/htc/fm/Preset;

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    invoke-static {p0, v1, v2}, Lcom/htc/fm/FMUtils;->getNowPlaying(Landroid/content/Context;IZ)Lcom/htc/fm/Preset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/Preset;->CopyParam(Lcom/htc/fm/Preset;)V

    .line 3614
    invoke-direct {p0, v2}, Lcom/htc/fm/FMRadio;->updateChannel(Z)V

    .line 3627
    return-void
.end method

.method public startFastSeekDown()V
    .locals 0

    .prologue
    .line 3662
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->seekDown()Z

    .line 3663
    return-void
.end method

.method public startFastSeekUp()V
    .locals 0

    .prologue
    .line 3656
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->seekUp()Z

    .line 3657
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 3651
    return-void
.end method

.method public togglePower()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2849
    iget-boolean v0, p0, Lcom/htc/fm/FMRadio;->mIsStop:Z

    if-eqz v0, :cond_1

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 2852
    :cond_1
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] togglePower() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdStateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isOnSetBand?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/FMRadio;->mOnSetband:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] togglePower() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IsScaning? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 2855
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_2

    .line 2856
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->showNoHeadsetDialog()V

    goto :goto_0

    .line 2859
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2860
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] turnOn() - togglePower()!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->turnOn()V

    goto/16 :goto_0

    .line 2868
    :cond_3
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2870
    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->getCmdState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/fm/FMRadio;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2871
    invoke-direct {p0, v3}, Lcom/htc/fm/FMRadio;->turnOffFM(Z)V

    goto/16 :goto_0

    .line 2877
    :cond_4
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] togglePower() do nothing!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public toggleVolumeMute()V
    .locals 2

    .prologue
    .line 3634
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    .line 3635
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v0, :cond_0

    .line 3636
    sget-object v0, Lcom/htc/fm/FMRadio;->TAG:Ljava/lang/String;

    const-string v1, "[FMRadio] no headset plugged!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    :cond_0
    return-void
.end method
