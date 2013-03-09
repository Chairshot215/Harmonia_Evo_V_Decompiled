.class public Lcom/htc/music/HtcMusic;
.super Landroid/app/Activity;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/music/util/IMonitorHeadSetStatus;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;
.implements Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;
.implements Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;
.implements Lcom/htc/music/widget/IDismissBubbleInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;,
        Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;,
        Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;,
        Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;,
        Lcom/htc/music/HtcMusic$NonUiHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_INIT:I = 0x5

.field private static final AUDIO_BOOSTER:I = 0x25

.field private static final CHECK_ERROR_STATE:I = 0x6

.field private static final CHECK_PLUGIN_SERVICE_STATE:I = 0x4

.field private static final DIALOG_DOWNLOAD_ALBUMART:I = 0xd

.field private static final DIALOG_DRM_CONFIRM:I = 0x4

.field private static final DIALOG_DRM_ERROR:I = 0x3

.field private static final DIALOG_EQUALIZER_EFFECT:I = 0x11

.field private static final DIALOG_MODE_REPEAT_ALL:I = 0x0

.field private static final DIALOG_MODE_REPEAT_CURRENT:I = 0x1

.field private static final DIALOG_MODE_REPEAT_NONE:I = 0x2

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x6

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0xc

.field private static final DIALOG_SHARETEXT:I = 0x14

.field private static final DIALOG_SHARETYPE:I = 0x13

.field private static final DIALOG_SHARE_DRM_FILE:I = 0xf

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0xe

.field private static final DIALOG_SOUND_EFFECT:I = 0x10

.field private static final DIALOG_TRACK_OPTIONS:I = 0x12

.field private static final DMP_SEARCH_VIA_YOUTUBE:I = 0x24

.field private static final DMR_CHOOSER:I = 0x22

.field public static final EQ_TOAST_HEADSET_UNPLUGGED:I = 0x34

.field private static final KEY_PLAY_AT_GLANCE:Ljava/lang/String; = "playatglance"

.field private static final MENU_STATUS_HtcMusic:I = 0x1

.field private static final MENU_STATUS_NONE:I = 0x0

.field private static final MENU_STATUS_NowPlaying:I = 0x2

.field public static final NOW_PLAYING_SWITCH:Ljava/lang/String; = "NOW_PLAYING_SWITCH"

.field private static final PLAY_ALBUM:I = 0xa

.field private static final PROPERTIES:I = 0x1d

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_PLAYLIST:I = 0x1

.field public static final REFRESH_SOUND_EFFECT_LIST:I = 0x33

.field private static final RELOAD_QUEUE:I = 0x5

.field private static final REPEAT:I = 0x18

.field private static final SEARCH_VIA_YOUTUBE:I = 0x23

.field private static final SETTING:I = 0x26

.field private static final SET_PLUGIN_LISTENER:I = 0x9

.field private static final SET_SOUND_EFFECT:I = 0x3

.field private static final SHARE:I = 0x21

.field private static final SHOW_SET_CONTACT_RINGTONE_TOAST:I = 0x66

.field private static final START_ENHANCER_SERVICE_ONSTART:I = 0x8

.field private static final TAG:Ljava/lang/String; = "[HtcMusic]"

.field private static final TOGGLE_SHUFFLE:I = 0x1c

.field private static final UPDATE_TRACKINFO:I = 0x7

.field private static final USE_AS_NOTIFY_RINGTONE:I = 0x20

.field private static final USE_AS_PHONE_RINGTONE:I = 0x1f

.field private static final USE_AS_RINGTONE:I = 0x17

.field private static final USE_AS_RINGTONE_SUB:I = 0x1e

.field private static final VMM_UPLOAD:I = 0x27

.field private static mEnalbeOpeningAnimation:Z

.field private static mIsOutputTitleInited:Z

.field private static music_tooltip_perference_key:Ljava/lang/String;


# instance fields
.field private LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

.field private final MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

.field private final MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

.field private SetSoundEffectKey:Ljava/lang/String;

.field avi:I

.field private hint_layout_land:Landroid/view/View;

.field private isTooltipLaunched:Z

.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private m3DLayout:Landroid/widget/RelativeLayout;

.field protected mActivityPopup:Z

.field private mAlbumArtistName:Landroid/widget/TextView;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBestsStrNotBeatsHeadset:Ljava/lang/String;

.field private mBestsStrWithBeatsHeadset:Ljava/lang/String;

.field private mBlockMenu:Z

.field mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentAudioId:I

.field private mCurrentAudioPath:Ljava/lang/String;

.field private mCurrentAudioType:I

.field private mCurrentSoundEffectIndicatorType:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDMRChooserAction:Landroid/view/View$OnClickListener;

.field private mDelayPlayDuration:I

.field private mDeviceInfo:Ljava/lang/String;

.field private mDirectMode:I

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlArtReceiver:Landroid/content/BroadcastReceiver;

.field private mDlnaMode:I

.field private mDownloadAlbumArtDialog:Landroid/app/Dialog;

.field private mDownloadAlbumArtId:I

.field private mDuration:J

.field private mEQDialog:Lcom/htc/widget/HtcAlertDialog;

.field mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

.field private mEnalbeAutoPlay:Z

.field private mEnalbeDelayPlay:Z

.field private mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field private mGliderAdapter:Lcom/htc/music/GliderAdapter;

.field private mGliderState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

.field private mInitAP:Z

.field private mIsDialogActive:Z

.field private mIsEnhancerExist:Z

.field private mIsFromBTKeepPlaying:Z

.field private mIsMusicStoreEnable:Z

.field private mIsSeriveBinded:Z

.field private mIsSupportMMC:Z

.field private mLastPluginArtPath:Ljava/lang/String;

.field private mLastSeekEventTime:J

.field private mLibraryListener:Landroid/view/View$OnClickListener;

.field private mMenuStatus:I

.field public mMsg:Ljava/lang/String;

.field private mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

.field private mNeedBindSerive:Z

.field private mNextButton:Landroid/view/View;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

.field mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

.field protected mNowPlayingViewOn:Z

.field private mOrientation:I

.field private mPauseButton:Landroid/view/View;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPaused:Z

.field private mPosOverride:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field public mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field public mPresentationScale:F

.field private mPrevButton:Landroid/view/View;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lcom/htc/widget/HtcSeekBar;

.field private mProgressLayout:Landroid/view/ViewGroup;

.field private mProgressPos:I

.field private mQueueClickListner:Landroid/view/View$OnClickListener;

.field private mQueueInfo:Ljava/lang/String;

.field private mRecommendListener:Landroid/view/View$OnClickListener;

.field private mRelaunchAfterConfigChange:Z

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRetryCount:I

.field private mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSeekmethod:I

.field public mSelectEQIndex:I

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mShareDRMDialog:Landroid/app/Dialog;

.field private mShareNormaldialog:Landroid/app/Dialog;

.field private mShareText:Ljava/lang/String;

.field mShowDialog:Z

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

.field private mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSoundEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/util/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundEffectListener:Landroid/view/View$OnClickListener;

.field private mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

.field public mSoundEffectStyles:[Ljava/lang/String;

.field private mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field public mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field protected mTempSelectedEQIndex:I

.field private mTempSelectedSoundEffectStyle:Ljava/lang/String;

.field private mTempShowingEQIndex:I

.field public mTextHeight:I

.field public mTextWidth:I

.field mTitle:Lcom/htc/widget/HeaderBarText;

.field private mToast:Landroid/widget/Toast;

.field private mTooltipListener:Landroid/view/View$OnClickListener;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackOptionButton:Landroid/widget/Button;

.field private mTrackOptionListener:Landroid/view/View$OnClickListener;

.field private mTrackball:Z

.field mTxtTitleName:Landroid/widget/TextView;

.field private mVolumeListener:Landroid/view/View$OnClickListener;

.field private m_iUserLastClickEffectIdx:I

.field mszLocalDevice:Ljava/lang/String;

.field private music_tooltip_preference:Landroid/content/SharedPreferences;

.field private nowHWAudioSetting:Ljava/lang/String;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/music/HtcMusic;->mIsOutputTitleInited:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    const-string v0, "music_tooltip_perference_key"

    sput-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    iput v4, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    iput v2, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeDelayPlay:Z

    const/16 v0, 0x15e

    iput v0, p0, Lcom/htc/music/HtcMusic;->mDelayPlayDuration:I

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mPresentationScale:F

    iput v4, p0, Lcom/htc/music/HtcMusic;->mTextHeight:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mTextWidth:I

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    iput v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    const-string v0, "com.htc.musicenhancer"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_PACKAGE:Ljava/lang/String;

    const-string v0, "com.htc.musicenhancer.EnhancerService"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->MUSIC_ENHANCER_SERVICE:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$1;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/htc/music/HtcMusic$2;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$2;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/htc/music/HtcMusic$3;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$3;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/htc/music/HtcMusic$4;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$4;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$5;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$5;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$6;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$6;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$7;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$7;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$8;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$8;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$9;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$9;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$10;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$10;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$11;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$11;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRecommendListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$12;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$12;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$13;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$13;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$14;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$14;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$15;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    new-instance v0, Lcom/htc/music/HtcMusic$16;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$16;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    new-instance v0, Lcom/htc/music/HtcMusic$17;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$17;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/HtcMusic$18;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$18;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mQueueClickListner:Landroid/view/View$OnClickListener;

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    iput v4, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    iput v4, p0, Lcom/htc/music/HtcMusic;->avi:I

    new-instance v0, Lcom/htc/music/HtcMusic$21;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$21;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/HtcMusic$22;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$22;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/HtcMusic$23;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$23;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/HtcMusic$24;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$24;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/HtcMusic$25;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$25;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCircleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/htc/music/HtcMusic$26;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$26;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    const-string v0, "My phone"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mszLocalDevice:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTxtTitleName:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    new-instance v0, Lcom/htc/music/HtcMusic$35;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$35;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mDMRChooserAction:Landroid/view/View$OnClickListener;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    const-string v0, "SoundStyle"

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v0, Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {v0}, Lcom/htc/music/util/HeadSetHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/music/util/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    new-instance v0, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    iput v5, p0, Lcom/htc/music/HtcMusic;->m_iUserLastClickEffectIdx:I

    iput v4, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iput v5, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    return-void

    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/HtcMusic;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/HtcMusic;->m_iUserLastClickEffectIdx:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/HtcMusic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    return p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/HtcMusic;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/HtcMusic;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/StoreSwitcherAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/HtcMusic;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/HtcMusic;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/HtcMusic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/HtcMusic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/HtcMusic;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/HtcMusic;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/HtcMusic;)Lcom/htc/music/widget/SoundEffectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/HtcMusic;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/HtcMusic;->mProgressPos:I

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/music/HtcMusic;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/music/HtcMusic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPluginListListener()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/HtcMusic;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/HtcMusic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/music/HtcMusic;)I
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/music/HtcMusic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/HtcMusic;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/music/HtcMusic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->shareMusicFile()V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/music/HtcMusic;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->doSearch()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/music/HtcMusic;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$5802(Lcom/htc/music/HtcMusic;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return p1
.end method

.method static synthetic access$5808(Lcom/htc/music/HtcMusic;)I
    .locals 2

    iget v0, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/HtcMusic;->mRetryCount:I

    return v0
.end method

.method static synthetic access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/HtcMusic;)J
    .locals 2

    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/htc/music/HtcMusic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    return-void
.end method

.method static synthetic access$6200(Lcom/htc/music/HtcMusic;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/htc/music/HtcMusic;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/music/HtcMusic;)Lcom/htc/music/util/SoundEffectItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/htc/music/HtcMusic;Lcom/htc/music/util/SoundEffectItem;)Lcom/htc/music/util/SoundEffectItem;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/music/HtcMusic;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return v0
.end method

.method static synthetic access$6602(Lcom/htc/music/HtcMusic;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    return p1
.end method

.method static synthetic access$6700(Lcom/htc/music/HtcMusic;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/music/HtcMusic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/HtcMusic;)J
    .locals 2

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$7000(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V

    return-void
.end method

.method static synthetic access$7100(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startUpdateAllAlbum()V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->resetCurrentAlbumArt()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/music/HtcMusic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/music/HtcMusic;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    return-void
.end method

.method private addtoPlaylist()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "pickermode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v0, v4, [I

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v3

    aput v3, v0, v2

    const-string v2, "AddToPlaylistData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private animationRefresh()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private attachNowPlayingView()V
    .locals 9

    const/4 v7, -0x1

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7f0800ce

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    const-string v7, "[HtcMusic]"

    const-string v8, "view.getHeight() is zero!!!!!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v7, -0x2

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v8, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    :goto_0
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1
    const v7, 0x7f08007c

    invoke-virtual {p0, v7}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v7}, Lcom/htc/music/NowPlayingViewHelper;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    :cond_2
    return-void

    :cond_3
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private autoUpdateAlbumArt(I)V
    .locals 4

    const-string v2, "[HtcMusic]"

    const-string v3, "autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private canUseAsRingtone(IZ)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget v6, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    const v4, 0x7f0700a3

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v5}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v4, :cond_7

    :cond_4
    move v0, v4

    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    const v3, 0x7f0700a4

    invoke-direct {p0, v3}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_6
    move v3, v0

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method private chooseShareType()V
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    return-void
.end method

.method private cleanMessage()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private clearSoundEffectParameters()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    return-void
.end method

.method private createDownloadAlbumArtDialog()Landroid/app/Dialog;
    .locals 14

    const v13, 0x208005e

    const/4 v2, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0700d7

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    const v3, 0x7f080068

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    const v3, 0x7f0700d8

    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "btn_check"

    const v5, 0x20800d5

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v10, v3, v4

    if-gez v10, :cond_0

    const/4 v10, 0x0

    :cond_0
    const-string v3, "list_selector_background"

    invoke-static {p0, v3, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    invoke-virtual {v6, v9, v2, v10, v2}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/htc/music/HtcMusic$44;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$44;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v6, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080069

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v3, 0x7f0700db

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    const-string v3, "list_selector_background"

    invoke-static {p0, v3, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v11, v9, v2, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Lcom/htc/music/HtcMusic$45;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$45;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f08006a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v3, 0x7f0700da

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    const-string v3, "list_selector_background"

    invoke-static {p0, v3, v13}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v12, v9, v2, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v8
.end method

.method private createEqualizerDialog()Landroid/app/Dialog;
    .locals 5

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iget v3, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    new-instance v4, Lcom/htc/music/HtcMusic$40;

    invoke-direct {v4, p0}, Lcom/htc/music/HtcMusic$40;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x20c013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$41;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$41;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$42;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$42;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v2, Lcom/htc/music/HtcMusic$43;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$43;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v2
.end method

.method private createSoundEffectDialog()Landroid/app/Dialog;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    const-string v2, "[HtcMusic]"

    const-string v4, "createSoundEffectDialog, mService is null."

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v4, 0x7f03005d

    invoke-virtual {v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0800e6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/music/widget/SoundEffectAdapter;

    const v4, 0x7f03005c

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/music/widget/SoundEffectAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    :cond_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/htc/music/HtcMusic$36;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$36;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v2, Lcom/htc/music/HtcMusic$37;

    invoke-direct {v2, p0}, Lcom/htc/music/HtcMusic$37;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x20c013c

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$38;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$38;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v2, 0x20c013d

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/music/HtcMusic$39;

    invoke-direct {v3, p0}, Lcom/htc/music/HtcMusic$39;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->setOnSoundEffectDismissListener(Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v2, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSoundEffectDialog, RemoteException, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_0
.end method

.method private cycleRepeat()V
    .locals 3

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    const v1, 0x7f07004b

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    :cond_2
    const v1, 0x7f07004a

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    const v1, 0x7f070049

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private deleteItem()V
    .locals 6

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v5

    aput v5, v3, v4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v4, "description"

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "audioidlist"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/htc/music/DeleteItemsActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private detachNowPlayingView()V
    .locals 3

    const v2, 0x7f08007c

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method private doPauseResume()V
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    :goto_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->play()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private doSearch()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAlbumQueuePosition()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "[HtcMusic]"

    const-string v2, " getAlbumQueuePosition() : "

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initConstant()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mScreenHeight:I

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/music/HtcMusic;->mPresentationScale:F

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mTextHeight:I

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mTextWidth:I

    return-void
.end method

.method private initGlider()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initPlayerInfo()V
    .locals 4

    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    const-string v2, "music_info_btn"

    const v3, 0x7f020053

    invoke-static {p0, v2, v3}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTrackOptionButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mTrackOptionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcSeekBar;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method private initPresentation()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setEdgeItemScrollRatio(F)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnContainerClickListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledReflection(Z)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setShiftOneItemMode(Z)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const v1, 0x20801c1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setBackgroundResource(I)V

    :cond_1
    iget v0, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    if-ne v0, v2, :cond_3

    :goto_1
    sget-boolean v0, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    sput-boolean v2, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    :goto_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->deInit()V

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    :cond_2
    new-instance v0, Lcom/htc/music/GliderAdapter;

    invoke-direct {v0, p0}, Lcom/htc/music/GliderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V

    goto :goto_0

    :cond_3
    sput-boolean v2, Lcom/htc/music/HtcMusic;->mEnalbeOpeningAnimation:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledLayoutAnimateIn(Z)V

    goto :goto_2
.end method

.method private initSoundEnhancer()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0, v1}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    return-void
.end method

.method private initTaskbar()V
    .locals 8

    const v7, 0x2080088

    const v6, 0x2080086

    const/4 v5, 0x0

    const-wide/16 v3, 0x104

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_2 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "music_icon_previous"

    const v2, 0x2080934

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    const-string v1, "common_transport_prev"

    invoke-static {p0, v1, v7}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    :cond_1
    :goto_1
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v0, "[HtcMusic]"

    const-string v1, "can;t find task_bar_imgbtn_4 is our glance layout!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "music_icon_next"

    const v2, 0x208090c

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    const-string v1, "common_transport_next"

    invoke-static {p0, v1, v6}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableFfRw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/RepeatingImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/widget/RepeatingImageButton;->setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    :cond_4
    :goto_3
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_4
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :goto_5
    return-void

    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    const-string v1, "music_icon_previous"

    const v2, 0x7f02004e

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e4

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    const-string v1, "common_transport_prev"

    invoke-static {p0, v1, v7}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recognize mPrevButton type!! mPrevButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-static {v0, v1, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->setRepeatListener(Landroid/view/View;Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    const-string v1, "music_icon_next"

    const v2, 0x7f02004a

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e3

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    const-string v1, "common_transport_next"

    invoke-static {p0, v1, v6}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    invoke-static {v0, v1, v3, v4}, Lcom/htc/music/util/CustomizeLayoutHandler;->setRepeatListener(Landroid/view/View;Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V

    goto/16 :goto_3

    :cond_a
    const-string v0, "[HtcMusic]"

    const-string v1, "initTitleBar, mShuffleButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v0, "[HtcMusic]"

    const-string v1, "initTitleBar, mRepeatButton is null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private initTitleBar()V
    .locals 14

    const/16 v13, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v9, 0x7f0800ce

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v12}, Lcom/htc/widget/HeaderBar;->enableSecondBackground(Z)V

    :cond_0
    const v9, 0x7f0800cf

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HeaderBarText;

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    const v9, 0x7f0800d0

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    const v9, 0x7f0800d1

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarImage;

    const v9, 0x7f0800d3

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    const v9, 0x7f0800d2

    invoke-virtual {p0, v9}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HeaderBarImage;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    const v10, 0x7f07001b

    invoke-virtual {v9, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_1
    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v6, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v9, :cond_6

    const v9, 0x20808fb

    :goto_0
    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-boolean v9, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v9, :cond_7

    const v9, 0x7f070105

    :goto_1
    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mQueueClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x708

    const/16 v1, 0x320

    const/4 v5, 0x0

    sget-boolean v9, Lcom/htc/music/HtcMusic;->mIsOutputTitleInited:Z

    if-ne v12, v9, :cond_2

    sput-boolean v11, Lcom/htc/music/HtcMusic;->mIsOutputTitleInited:Z

    const/16 v5, 0x708

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v9, 0x7f070006

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    const v9, 0x20808ea

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mLibraryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v7, :cond_4

    new-instance v9, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v9, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v9

    if-lez v9, :cond_9

    new-instance v9, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v10, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v10, p0, v11}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v9, p0, v10}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :goto_3
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v9, :cond_a

    invoke-virtual {v7, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mMusicStoreBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz v8, :cond_4

    invoke-virtual {v8, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    const/4 v8, 0x0

    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    invoke-virtual {v8, v12}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    const v9, 0x7f0700e0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    const v9, 0x2080971

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mVolumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    const v9, 0x2080910

    goto/16 :goto_0

    :cond_7
    const v9, 0x7f0700df

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v9}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_3

    :cond_a
    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_4
.end method

.method private initToolTip()V
    .locals 8

    const/4 v7, 0x0

    sget-object v3, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/htc/music/HtcMusic;->music_tooltip_perference_key:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isMusicStoreEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->mIsMusicStoreEnable:Z

    if-nez v3, :cond_0

    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    :cond_0
    iget-boolean v3, p0, Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z

    if-nez v3, :cond_1

    const v3, 0x7f080089

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v3, 0x7f08008a

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f08008c

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0700b8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0700b9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mTooltipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/16 v6, 0x12c

    invoke-static {v3, v4, v5, v7, v6}, Lcom/htc/music/util/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)V

    :cond_1
    return-void
.end method

.method private initializeSoundEffectDialog()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectStyles()V

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v6, v0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectIconResourceId(ILandroid/content/Context;)I

    move-result v6

    iput v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEffectIconResId:I

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v6, v0, :cond_1

    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v6, v6, v8

    iput-object v6, v2, Lcom/htc/music/util/SoundEffectItem;->mEqualizerStyle:Ljava/lang/String;

    iput-boolean v9, v2, Lcom/htc/music/util/SoundEffectItem;->mNeedButton:Z

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/htc/music/util/SoundEffectItem;

    invoke-direct {v2, v3}, Lcom/htc/music/util/SoundEffectItem;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v7}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-ne v4, v6, :cond_3

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog, Just do protection for to correct selected item. SRS -> Original"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_16

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    if-ne v4, v0, :cond_8

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    :cond_4
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    :goto_4
    if-eqz v1, :cond_a

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    :cond_5
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eq v0, v6, :cond_6

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_9

    :cond_6
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-ne v4, v6, :cond_3

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog, Just do protection for to correct selected item. Original -> SRS"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_5

    :cond_a
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_b

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/music/util/SoundEffectItem;->setText(Ljava/lang/String;)V

    :cond_b
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    if-eq v0, v6, :cond_c

    sget v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    if-ne v0, v6, :cond_d

    :cond_c
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_5

    :cond_d
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_6
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_15

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    :cond_f
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    :goto_7
    sget v6, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v0, v6, :cond_14

    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_7

    :cond_11
    if-ne v4, v0, :cond_13

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    invoke-virtual {v6, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    :cond_12
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    goto :goto_7

    :cond_13
    invoke-virtual {v2, v8}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_7

    :cond_14
    invoke-virtual {v2, v9}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V

    goto :goto_8

    :cond_15
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentEqualizerStyleIndex(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    aget-object v6, v6, v7

    iput-object v6, v5, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v6, :cond_19

    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    if-ne v6, v7, :cond_18

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    iget v6, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    iput v6, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    :goto_9
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    :cond_16
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mSoundEffectAdapter:Lcom/htc/music/widget/SoundEffectAdapter;

    invoke-virtual {v6}, Lcom/htc/music/widget/SoundEffectAdapter;->notifyDataSetChanged()V

    :cond_17
    return-void

    :cond_18
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/music/util/SoundEffectItem;->setEqualizerStyle(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mEQStyleClickListener:Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;

    iget v7, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/HtcMusic$EqualizerStyleClickListener;->setSelectedIndex(I)V

    goto :goto_9

    :cond_19
    const-string v6, "[HtcMusic]"

    const-string v7, "initializeSoundEffectDialog(), LocalizedEqualizerStylesFromDevice is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private launchProperty()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const-string v7, "[HtcMusic]"

    const-string v8, "localizeEqualizerStyles, eqStyles should not be null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v7, "[HtcMusic]"

    const-string v8, "localizeEqualizerStyles, eqStylesFromRes should not be null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v1, p1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    const/4 v0, -0x1

    const/4 v4, 0x0

    :goto_2
    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_2

    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    aget-object v7, v7, v4

    aget-object v8, p1, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v4

    aget-object v7, v2, v4

    aput-object v7, v5, v3

    :cond_2
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    const-string v7, "[HtcMusic]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "localizeEqualizerStyles, no match, eqStyles["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v7, p1, v3

    aput-object v7, v5, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move-object p1, v5

    goto :goto_0
.end method

.method private onAnimationRotateSelf(Z)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    :cond_1
    iget v2, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->rotateSelf(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onServiceConnectedHandle()V
    .locals 27

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->initSoundEnhancer()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const-string v23, "[HtcMusic]"

    const-string v24, "Enter DirectMode ..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v23, "com.htc.dmc"

    const-string v24, "com.htc.dmc.DmrListActivity"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "directmode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v23, 0x22

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/music/HtcMusic;->mDirectMode:I

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x9

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v13, ""

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    const/16 v17, 0x0

    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    const-string v23, "file"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/htc/music/util/DrmUtils;->DRMV2_VerifyRights(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v10

    const-string v23, "[HtcMusic]"

    const-string v24, "dmc package is not exist"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v23, "[HtcMusic]"

    const-string v24, "Not DirectMode, normal ..."

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    :try_start_1
    const-string v23, "DLNA"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v23, "content"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v23, "switchLocal"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_3

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const-string v23, "[HtcMusic]"

    const-string v24, "DLNA_LOCAL mode"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "[HtcMusic]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "index from DMC = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lcom/htc/music/IMediaPlaybackService;->setQueuePosition(I)V

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "content"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "switchLocal"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v23, "[HtcMusic]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "update index to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    const-string v24, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface/range {v23 .. v24}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    const-string v23, "DLNA"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v23, "switchDMP"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v23

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    :cond_7
    new-instance v14, Landroid/content/Intent;

    const-class v23, Lcom/htc/music/DMPMusicPlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v23, "command"

    const-string v24, "com.htc.music.refreshplaylist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, ""

    const-string v23, "server"

    const-string v24, "server"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "container"

    const-string v24, "container"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "content"

    const-string v24, "content"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v23, "startIdx"

    const-string v24, "startIdx"

    const-wide/16 v25, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v23, "endIdx"

    const-string v24, "endIdx"

    const-wide/16 v25, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v23, "direction"

    const-string v24, "direction"

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v23, "dmsFilePath"

    const-string v24, "filepath"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "switchDMP"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mActivityPopup:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    if-eqz v13, :cond_b

    const-string v23, "content://drm/"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v17, 0x1

    :cond_b
    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->checkDrmFile(Landroid/net/Uri;)V

    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showHideOneShotMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_d
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v18

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v23

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v12

    const-string v23, "[HtcMusic]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isDRM... Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryUpdateAlbumArtSetting()Z
    .locals 9

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v2, v8

    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "auto_download"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v7

    :goto_0
    return v1

    :cond_0
    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v8

    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private recoverNoEffectWithHDMI()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v0

    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    invoke-static {v2, v3, v4}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    const-string v2, "Original"

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    const v2, 0x7f0700dc

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_4
    return-void
.end method

.method private refreshNow()J
    .locals 12

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_1

    const-wide/16 v6, 0x1f4

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    :try_start_0
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    :goto_1
    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x3e8

    rem-long v10, v2, v10

    sub-long v6, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_7

    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time escpae: scrollX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scrollY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_2
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    if-lez v8, :cond_3

    const-string v8, "[HtcMusic]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time left: scrollX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollX()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", scrollY = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getScrollY()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_3
    iget-wide v8, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    sub-long v4, v8, v10

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_5

    :goto_2
    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v8, 0x3e8

    mul-long v0, v8, v2

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-wide v9, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    cmp-long v9, v0, v9

    if-lez v9, :cond_6

    :goto_3
    iget-wide v9, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    div-long v9, v0, v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getBufferingPercent()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    div-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-wide/16 v6, 0x1f4

    goto/16 :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto/16 :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_6
    iget-wide v0, p0, Lcom/htc/music/HtcMusic;->mDuration:J

    goto :goto_3

    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    const-string v9, "--:--"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcSeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private resetCurrentAlbumArt()V
    .locals 11

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    const-string v1, "[HtcMusic]"

    const-string v4, "mService is null while resetCurrentAlbumArt "

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[HtcMusic]"

    const-string v4, "resetCurrentAlbum"

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dl_data"

    const-string v4, ""

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dl_data_backup"

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v4}, Lcom/htc/music/GliderAdapter;->setDlAlbumArt(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private scanBackward(IJ)V
    .locals 12

    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    cmp-long v4, p2, v6

    if-gez v4, :cond_6

    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long v2, v4, p2

    cmp-long v4, v2, v10

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long/2addr v2, v0

    :cond_3
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    if-gez p1, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    :cond_5
    if-ltz p1, :cond_7

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    :cond_6
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    :cond_7
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private scanForward(IJ)V
    .locals 10

    const-wide/16 v6, 0x1388

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    cmp-long v4, p2, v6

    if-gez v4, :cond_5

    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    :goto_1
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    add-long v2, v4, p2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->next()V

    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    sub-long/2addr v2, v0

    :cond_2
    iget-wide v4, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    if-gez p1, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    iput-wide p2, p0, Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J

    :cond_4
    if-ltz p1, :cond_6

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    goto :goto_0

    :cond_5
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_1

    :cond_6
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private seekMethod1(I)Z
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_b

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_9

    const/4 v0, 0x0

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_2
    iput v1, p0, Lcom/htc/music/HtcMusic;->lastX:I

    iput v2, p0, Lcom/htc/music/HtcMusic;->lastY:I

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    const/4 v3, 0x1

    :goto_4
    return v3

    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-le v1, v3, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/htc/music/HtcMusic;->lastX:I

    if-ge v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_6

    if-gt v1, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-ge v2, v3, :cond_7

    if-lt v1, v7, :cond_7

    const/4 v0, -0x1

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_8

    if-gt v1, v6, :cond_8

    const/4 v0, -0x1

    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/htc/music/HtcMusic;->lastY:I

    if-le v2, v3, :cond_0

    if-lt v1, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    iput v5, p0, Lcom/htc/music/HtcMusic;->lastX:I

    iput v5, p0, Lcom/htc/music/HtcMusic;->lastY:I

    const/4 v3, 0x0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private seekMethod2(I)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne v3, p1, :cond_2

    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private setAllSongsTitle()V
    .locals 0

    return-void
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private setOnSoundEffectDismissListener(Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mIsDialogActive:Z

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEffectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private setPauseButtonImage()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_pause_on"

    const v2, 0x2080915

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_transport_play"

    const v2, 0x2080087

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_icon_glance_pause_on"

    const v2, 0x2080915

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e5

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_play_on"

    const v2, 0x2080927

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_transport_play"

    const v2, 0x2080087

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPauseButton:Landroid/view/View;

    const-string v1, "common_icon_glance_play_on"

    const v2, 0x2080927

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0700e6

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->setButtonTopImageBottomLabel(Landroid/view/View;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setPluginListListener()V
    .locals 8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->refreshPlugin()V

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPluginCount()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v2}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    const-string v6, "[HtcMusic]"

    const-string v7, "there is no plugin services with description shown"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I

    move-result v7

    if-eq v6, v7, :cond_5

    const-string v6, "[HtcMusic]"

    const-string v7, "something error in setPluginListListener."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const-string v0, "[HtcMusic]"

    const-string v1, "mRepeatButton is null in setRepeatButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_disable"

    const v2, 0x2080943

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_disable"

    const v2, 0x2080943

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_on"

    const v2, 0x2080944

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_repeat_one_on"

    const v2, 0x2080945

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRepeatMode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    :cond_0
    const v0, 0x7f07004a

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    const v0, 0x7f07004b

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    const v0, 0x7f070049

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtone()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->useAsRingtone(Z)V

    goto :goto_0
.end method

.method private setShuffleButtonImage()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const-string v0, "[HtcMusic]"

    const-string v1, "mShuffleButton is null in setShuffleButtonImage"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_shuffle_disable"

    const v2, 0x2080968

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_shuffle_on"

    const v2, 0x2080969

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const-string v1, "common_icon_glance_shuffle_disable"

    const v2, 0x2080968

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setSoundEffect(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "savestatus"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "[HtcMusic]"

    const-string v2, "SetSoundEffect()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal file case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD DRM case, mCurrentAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    return-void
.end method

.method private showHideOneShotMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    return-void
.end method

.method private showSetContactRingtoneToast()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startAutoDownloadAlbum()V
    .locals 2

    const-string v0, "[HtcMusic]"

    const-string v1, "start download albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_auto_update_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method private startBrowserTabActivity()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startListenStore()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[HtcMusic]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startMusicEnhancerService(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.musicenhancer"

    const-string v2, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private startPlayback()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v1, ""

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    const/4 v6, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    if-nez v10, :cond_5

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    const v10, 0x7f07005d

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->showToast(I)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eq v8, v13, :cond_3

    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v10, "drmuri"

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "drmtargettomain"

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    :try_start_0
    iget-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    if-nez v10, :cond_8

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    :goto_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v1}, Lcom/htc/music/IMediaPlaybackService;->openfile(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->play()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    if-nez v6, :cond_6

    :try_start_1
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v3, :cond_9

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v10, :cond_6

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->IsReloadAllMusicForQueue(Landroid/content/Context;)Z

    move-result v10

    if-ne v10, v13, :cond_6

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_4
    iput-boolean v14, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    goto/16 :goto_0

    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "couldn\'t start playback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-wide v4

    :try_start_5
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v10, "[HtcMusic]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPlayback Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private startUpdateAllAlbum()V
    .locals 2

    const-string v0, "[HtcMusic]"

    const-string v1, "start update all albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_update_all_album"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method private stopDownloadAlbumArtService()V
    .locals 2

    const-string v0, "[HtcMusic]"

    const-string v1, "stopDownloadAlbumArtService"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action_cancel_download"

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->startMusicEnhancerService(Ljava/lang/String;)V

    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    :cond_1
    const v1, 0x7f070047

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :goto_1
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    const v1, 0x7f070048

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_1

    :cond_4
    const-string v1, "[HtcMusic]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateCurrentAlbum()V
    .locals 5

    const-string v2, "[HtcMusic]"

    const-string v3, "updateCurrentAlbum"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_update_current_album"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v2, "album_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "audio_id"

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in updateCurrentAlbum. Ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGlider()V
    .locals 10

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueue()[I

    move-result-object v0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v6

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    :cond_2
    if-eqz v0, :cond_4

    if-lez v4, :cond_4

    new-array v1, v4, [Lcom/htc/music/GliderAdapter$AlbumInfo;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    new-instance v7, Lcom/htc/music/GliderAdapter$AlbumInfo;

    invoke-direct {v7}, Lcom/htc/music/GliderAdapter$AlbumInfo;-><init>()V

    aput-object v7, v1, v3

    aget-object v7, v1, v3

    aget v8, v0, v3

    iput v8, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-virtual {v7, v1, v8, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V

    :goto_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v7, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyDataSetChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v5

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    if-ltz v5, :cond_5

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7, v5}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/htc/music/GliderAdapter;->setAlbumInfo([Lcom/htc/music/GliderAdapter$AlbumInfo;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private updateTitle()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mTitle:Lcom/htc/widget/HeaderBarText;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f0800d0

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_1

    const v1, 0x20808fb

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    const v1, 0x7f070105

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    return-void

    :cond_1
    const v1, 0x2080910

    goto :goto_0

    :cond_2
    const v1, 0x7f0700df

    goto :goto_1
.end method

.method private updateTrackInfoP()V
    .locals 28

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v27

    if-nez v9, :cond_f

    if-nez v8, :cond_f

    if-nez v27, :cond_f

    const-string v2, "[HtcMusic]"

    const-string v3, "updateTrackInfoP - get metadata from MediaMetadataRetriever"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v15, :cond_6

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x7

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v27

    :goto_1
    :try_start_2
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v15, 0x0

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_8

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_a
    if-eqz v8, :cond_b

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_c
    if-eqz v27, :cond_d

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_d
    if-eqz v27, :cond_e

    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string v2, "/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v16, -0x1

    const/16 v17, -0x1

    const-string v2, "/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    const-string v2, "."

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v16, :cond_f

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_f

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    if-eqz v8, :cond_10

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_13

    const/16 v20, 0x1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const v3, 0x2050020

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    :cond_11
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    if-gez v2, :cond_19

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mQueueInfo:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_6
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTrackInfoP(), Uri.parse(path) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v20, v2, 0x1

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v23

    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    array-length v2, v0

    if-lez v2, :cond_1

    if-ltz v23, :cond_1

    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v23

    if-le v2, v0, :cond_1

    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio._id AS _id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "artist_id"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "is_podcast"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "bookmark"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "composer"

    aput-object v3, v4, v2

    aget v2, v24, v23

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "is_music>=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    const-string v2, "<unknown>"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const v2, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_16
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    const-string v2, "<unknown>"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const v2, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mAlbumArtistName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTrackName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "title"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v20, v2, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const v3, 0x2050020

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v14}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v18, v2, v3

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mTotalTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/music/HtcMusic;->mDuration:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :cond_19
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v2

    add-int/lit8 v20, v2, 0x1

    goto/16 :goto_5

    :catch_2
    move-exception v11

    :try_start_7
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6
.end method

.method private wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BTHeadSetStatusChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const v1, 0x7f070097

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public BeatsAudioStatusChanged(Z)V
    .locals 8

    const-string v5, "[HtcMusic]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BeatsAudioStatusChanged, newStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    :goto_0
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v6

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/SoundEffectItem;

    if-ne v0, v3, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x33

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v5, v6, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    iput v3, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    return-void
.end method

.method public CheckDLNAMode(Landroid/content/Intent;)V
    .locals 11

    const-string v6, "DLNA"

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "Server"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Render"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "container"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "playatglance"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "[HtcMusic]"

    const-string v7, "CheckDLNAMode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    const-string v7, "Get info from intent"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from intent playAtGlance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "[HtcMusic]"

    const-string v7, "All info from intent is null, get info from preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "server"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Render"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "container"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "content"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from preference content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    :goto_0
    return-void

    :cond_1
    const-string v6, "[HtcMusic]"

    const-string v7, "content != null, called by DMC, need update local play position"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchLocal"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    const-string v6, "[HtcMusic]"

    const-string v7, "save intent info to preference"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save DMR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save container = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save startIdx ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "startIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save endIdx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "endIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "direction"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[HtcMusic]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save filepath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "server"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Render"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "container"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "content"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "initialMusic"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {p0, v6, v7, v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "initialMusic"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v6, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_LOCAL mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-string v6, "[HtcMusic]"

    const-string v7, "server, container, content != null, called by DMC, need update DMP"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "switchDMP"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "filepath"

    const-string v8, "filepath"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "startIdx"

    const-string v8, "startIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "endIdx"

    const-string v8, "endIdx"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "direction"

    const-string v8, "direction"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :pswitch_1
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMP mode"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_PUSH mode, finish Activity"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    :pswitch_3
    const-string v6, "[HtcMusic]"

    const-string v7, "DLNA_DMC mode, finish Activity"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OnHdmiPlugReceiver(Lcom/htc/music/util/HdmiPlugReceiver;I)V
    .locals 3

    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnHdmiPlugReceiver, bIsPluged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[HtcMusic]"

    const-string v1, "OnHdmiPlugReceiver headset is plugged. Do Nothing for HDMI plugging in/out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0700dc

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0
.end method

.method protected afterPlayback()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mRepeatButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v4}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0
.end method

.method canRewind()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canShare()I
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v9, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    iget v9, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v9, "[HtcMusic]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    move v0, v8

    goto :goto_0

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    :cond_8
    const/4 v0, 0x2

    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "[HtcMusic]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public checkDrmFile(Landroid/net/Uri;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v5, :cond_3

    invoke-static {v3, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->startPlayback()V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->afterPlayback()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v6, "drmuri"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "drmtargettomain"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public dismissPopupBubble()V
    .locals 2

    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public headSetStatusChanged(ZZ)V
    .locals 17

    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, newStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isBeatsHeadset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "[HtcMusic]"

    const-string v15, "headSetStatusChanged, headset is plugged out and HDMI is connected."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->recoverNoEffectWithHDMI()V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleSize(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v14, v13, :cond_8

    if-eqz p1, :cond_3

    const/4 v7, 0x1

    :goto_1
    if-ge v7, v13, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/SoundEffectItem;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/util/SoundEffectItem;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    iget-boolean v14, v6, Lcom/htc/music/util/SoundEffectItem;->mIsSelected:Z

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v4

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v14

    if-eqz v14, :cond_4

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/SoundEffectItem;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/htc/music/util/SoundEffectItem;->setSelected(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    check-cast v14, Lcom/htc/music/util/SoundEffectItem;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/music/util/SoundEffectItem;->setEnabled(Z)V

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/util/SoundEffectItem;

    if-nez v9, :cond_6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    if-ne v7, v14, :cond_c

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v14, "[HtcMusic]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "headSetStatusChanged, Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x33

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    if-nez p1, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    const/4 v12, 0x1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I

    move-result v1

    sget v14, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v1, v14, :cond_a

    const/4 v11, 0x1

    const/4 v12, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    sget v15, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    if-ne v14, v15, :cond_b

    const/4 v11, 0x1

    const/4 v12, 0x1

    :cond_b
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x34

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const v14, 0x7f070096

    iput v14, v10, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_d

    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->arg2:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v9, v14}, Lcom/htc/music/util/SoundEffectItem;->setVisibility(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_d
    const/4 v14, 0x0

    iput v14, v10, Landroid/os/Message;->arg2:I

    goto :goto_4
.end method

.method protected initializeSoundEffectStyles()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrWithBeatsHeadset:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mBestsStrNotBeatsHeadset:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/HtcMusic;->localizeEqualizerStyle([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->LocalizedEqualizerStylesFromDevice:[Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    if-nez v2, :cond_0

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v7

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeSoundEffectStyles, Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "[HtcMusic]"

    const-string v3, "initializeSoundEffectStyles, mService is null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    sget v4, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    aget-object v3, v3, v4

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v5

    const-string v3, "Beats audio"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEffectStyles:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public isShowNowPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 29

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "receive activity result, requestCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", resultCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v25, 0xc351

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->startListenStore()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v18

    if-nez v18, :cond_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v15, v0, [I

    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v15, v25

    const-string v25, "playlist"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v15, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    if-eqz v24, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v15, v0, [I

    const/16 v25, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v26

    aput v26, v15, v25

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v15, v1, v2}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    :sswitch_2
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v19, p3

    new-instance v20, Lcom/htc/music/HtcMusic$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic$20;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V

    new-instance v23, Ljava/lang/Thread;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_3
    const-string v25, "[HtcMusic]"

    const-string v26, "DMR_CHOOSER"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "DLNA"

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v25, "DMR"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v25, "server"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMR = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "Render"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v4, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "switch"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    const-string v25, "[HtcMusic]"

    const-string v26, "DMP mode change to DMS mode"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v25, "DMP"

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v25, "container"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v25, "curContentId"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v25, "startIdx"

    const-wide/16 v26, -0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    const-string v25, "endIdx"

    const-wide/16 v26, -0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v25, "direction"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    const-wide/16 v25, -0x1

    cmp-long v25, v21, v25

    if-eqz v25, :cond_8

    if-eqz v8, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v25, "content"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v25, "container"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v25, "startIdx"

    move-object/from16 v0, v25

    move-wide/from16 v1, v21

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v25, "endIdx"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v25, "direction"

    move-object/from16 v0, v25

    invoke-interface {v12, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_2
    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v9

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "server"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DMR = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "Render"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "container = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "container"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "content = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "content"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DLNA Mode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v25

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "switch"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v25

    if-eqz v25, :cond_7

    const-string v25, "[HtcMusic]"

    const-string v26, "Service is playing"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/music/HtcMusic;->mIsFromBTKeepPlaying:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    :try_start_2
    const-string v25, "[HtcMusic]"

    const-string v26, "Service is null or not playing"

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_8
    const-string v25, "[HtcMusic]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Some one value go wrong, container = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", curContentId = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", startIdx = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", dir = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTitle()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "[HtcMusic]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_3
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->m3DLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateGlider()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setRepeatButtonImage()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setShuffleButtonImage()V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    goto :goto_0
.end method

.method public onContainerClick(Lcom/htc/sunny2/view/SView;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v10, 0x1

    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate() +"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->CheckDLNAMode(Landroid/content/Intent;)V

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x10

    and-int/2addr v8, v9

    if-lez v8, :cond_0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v12}, Lcom/htc/music/HtcMusic;->setVolumeControlStream(I)V

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->requestWindowFeature(I)Z

    const/4 v8, 0x2

    iget v9, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v12, v8, :cond_2

    :cond_1
    const-string v8, "[HtcMusic]"

    const-string v9, "DMC mode, return directly"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v8, Landroid/media/AudioManager;

    invoke-direct {v8, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/music/HtcMusic;->mOrientation:I

    const v8, 0x7f030026

    invoke-virtual {p0, v8}, Lcom/htc/music/HtcMusic;->setContentView(I)V

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportMMC()Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsSupportMMC:Z

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initGlider()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initConstant()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPresentation()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initPlayerInfo()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTaskbar()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initTitleBar()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initToolTip()V

    iput v10, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    iput-boolean v10, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-eqz p1, :cond_6

    const-string v8, "configchange"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mRelaunchAfterConfigChange:Z

    const-string v8, "message"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    const-string v8, "downloadalbumartid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    const-string v8, "currentAudioId"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    const-string v8, "currentAudioPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    const-string v8, "tempSelectedEQIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const-string v8, "tempSelectedSoundEffectIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    const-string v8, "tempShowingEQIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    const-string v8, "ringtoneAudioPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v8, :cond_5

    new-instance v8, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v8, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    :cond_5
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v9, "ringtoneAudioId"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioId(I)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v8, v4}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v9, "ringtoneAudioType"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->setAudioType(I)V

    :cond_6
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "HtcMusicActivityWorker"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    new-instance v8, Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v9, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/htc/music/HtcMusic$NonUiHandler;-><init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-nez v8, :cond_7

    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v8, :cond_8

    const-string v8, "Music"

    invoke-virtual {p0, v8, v10}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "ShowNowPlaying"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v11, v5, :cond_a

    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    const-string v8, "[HtcMusic]"

    const-string v9, "onCreate() -"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput v11, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iput v11, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    goto/16 :goto_2

    :cond_a
    if-nez v5, :cond_b

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    const/4 v2, 0x1

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    :goto_1
    return-object v5

    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_1

    :sswitch_1
    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f07006f

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f07006e

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const v11, 0x7f0700ac

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f07006d

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$27;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$27;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v3, p1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    goto :goto_1

    :sswitch_2
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1080027

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f07005d

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/HtcMusic$28;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$28;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v0

    goto :goto_1

    :sswitch_3
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-nez v10, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1080027

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040013

    new-instance v12, Lcom/htc/music/HtcMusic$30;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$30;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const v11, 0x1040009

    new-instance v12, Lcom/htc/music/HtcMusic$29;

    invoke-direct {v12, p0}, Lcom/htc/music/HtcMusic$29;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v1

    goto/16 :goto_1

    :sswitch_4
    const/4 v10, 0x6

    if-ne p1, v10, :cond_4

    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0700a9

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f0700aa

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const v11, 0x7f0700ab

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    :goto_2
    const/4 v6, 0x0

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v10, :cond_2

    new-instance v10, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-direct {v10, p0, p0}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v10, "[HtcMusic]"

    const-string v11, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/16 v11, 0x13

    invoke-virtual {v10, v3, v11}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_3
    move-object v5, v6

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f0700a9

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f0700aa

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    goto :goto_2

    :sswitch_5
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    const-string v10, "[HtcMusic]"

    const-string v11, "onCreateDialog DIALOG_DOWNLOAD_ALBUMART"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;

    goto/16 :goto_1

    :sswitch_6
    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_5
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    goto/16 :goto_1

    :sswitch_7
    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x1

    invoke-static {p0, v10, v11, v12}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-direct {p0, v10}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_6
    iget-object v5, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    goto/16 :goto_1

    :sswitch_8
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v10, :cond_7

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v5, v8

    goto/16 :goto_1

    :cond_7
    const-string v10, "[HtcMusic]"

    const-string v11, "onCreateDialog, DIALOG_SOUND_EFFECT, mService is null!"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v5, v2

    goto/16 :goto_1

    :sswitch_a
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f07010d

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x7f07010e

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "dummy"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$31;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$31;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v7

    goto/16 :goto_1

    :sswitch_b
    iget-object v10, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-direct {p0, v9}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    :cond_8
    move-object v5, v9

    goto/16 :goto_1

    :sswitch_c
    const/4 v3, 0x0

    iget v10, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v10, :cond_a

    const/4 v10, 0x4

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x7f07004f

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x20c01f7

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const v11, 0x7f07004c

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const v11, 0x20c0138

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    :cond_9
    :goto_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v11, "dummy"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/music/HtcMusic$32;

    invoke-direct {v11, p0}, Lcom/htc/music/HtcMusic$32;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/music/HtcMusic;->setOnDismissListener(Landroid/app/Dialog;)V

    move-object v5, v4

    goto/16 :goto_1

    :cond_a
    iget v10, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const v11, 0x20c01f7

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x20c0138

    invoke-virtual {p0, v11}, Lcom/htc/music/HtcMusic;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_c
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0xaae61 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const v5, 0x7f0700ca

    const v4, 0x2080aac

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput v2, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0, p1}, Lcom/htc/music/NowPlayingViewHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mIsEnhancerExist:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x14

    const v2, 0x7f0700d7

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809fb

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    const v1, 0x7f07004f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    const v2, 0x2080a69

    invoke-interface {v1, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x22

    const v2, 0x7f0700bc

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809f9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x25

    const v2, 0x7f070071

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20809d3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isYoutubeExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x23

    invoke-interface {p1, v3, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_6
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isYoutubeExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x24

    invoke-interface {p1, v3, v1, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x27

    const v2, 0x7f07000a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080aa0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_8
    const/16 v1, 0x21

    const v2, 0x20c01f7

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080337

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x17

    const v2, 0x7f07004c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a79

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x1d

    const v2, 0x20c01fe

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080328

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    const v2, 0x20c0200

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080336

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper;->onDestroy()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->cleanMessage()V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    const-string v0, "Music"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowNowPlaying"

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->deInit()V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    :cond_5
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    :cond_6
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v0}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    iput-object v3, p0, Lcom/htc/music/HtcMusic;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "[HtcMusic]"

    const-string v1, "onDestroy finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/music/HtcMusic;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    iget v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/music/HtcMusic;->mSeekmethod:I

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    goto :goto_0

    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNextButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x2f -> :sswitch_3
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    :sswitch_0
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->canRewind()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->prev()V

    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanBackward(IJ)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_2

    :sswitch_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mTrackball:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->next()V

    :cond_5
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mSeeking:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mPosOverride:J

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/music/HtcMusic;->scanForward(IJ)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/music/HtcMusic;->mStartSeekPos:J

    goto :goto_3

    :sswitch_2
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/music/HtcMusic;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->setIntent(Landroid/content/Intent;)V

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_0

    const-string v2, "ShowNowPlaying"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->onServiceConnectedHandle()V

    :cond_1
    const-string v2, "directmode"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get (on new) intent directmode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/music/NowPlayingViewHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    :goto_0
    return v17

    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    goto :goto_0

    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v12

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_3

    const/16 v17, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_1

    :cond_3
    if-nez v12, :cond_1

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->launchProperty()V

    goto :goto_1

    :pswitch_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v17, "com.htc.dmc"

    const-string v18, "com.htc.dmc.DmrListActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v17, 0x22

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_4
    const-string v17, "[HtcMusic]"

    const-string v18, "dmc package is not exist"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_5

    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_9

    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setNotificationRingtone(Landroid/content/Context;J)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_d

    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_e

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_e
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v17, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v18, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v17, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    if-gez v17, :cond_10

    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/music/HtcMusic;->canUseAsRingtone(IZ)Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    goto/16 :goto_0

    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->setRingtone()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->toggleShuffle()V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->addtoPlaylist()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->deleteItem()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :pswitch_c
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v17, 0x0

    const-string v18, "_data"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_11
    new-instance v14, Ljava/lang/String;

    const-string v17, "com.htc.vmm.service.VMMEngineService"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "upload"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v9

    :try_start_6
    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "We do not have permission to start the service :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_d
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->canShare()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->chooseShareType()V

    goto :goto_3

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/HtcMusic;->showSoundEffectDialog()V

    const/16 v17, 0x1

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    if-nez v16, :cond_15

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_15
    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Search Youtube: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v17, "android.intent.action.MEDIA_SEARCH"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v17, "android.intent.extra.title"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v15, v16

    if-eqz v5, :cond_16

    const-string v17, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    :cond_16
    move-object/from16 v13, v16

    :goto_4
    const-string v17, "android.intent.extra.focus"

    const-string v18, "audio/*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v17, 0x7f070061

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/HtcMusic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "query"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "com.google.android.youtube"

    const-string v18, "com.google.android.youtube.VideoListActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_17

    :try_start_8
    const-string v17, "com.google.android.youtube"

    const-string v18, "com.google.android.youtube.ResultsActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v4, 0x0

    :cond_17
    :goto_6
    if-eqz v4, :cond_18

    const/16 v17, 0x0

    :try_start_9
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v17, "com.google.android.youtube"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    :cond_18
    :goto_7
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_19
    :try_start_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v17, "android.intent.extra.artist"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    :catch_3
    move-exception v8

    const/4 v4, 0x1

    goto :goto_5

    :catch_4
    move-exception v8

    const/4 v4, 0x1

    goto :goto_6

    :catch_5
    move-exception v8

    const-string v17, "[HtcMusic]"

    const-string v18, "Cannot find com.google.android.youtube"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_10
    const/16 v17, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    const/16 v17, 0x1

    goto/16 :goto_0

    :pswitch_11
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.htc.music.settings.Listen_Online_Setting"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/HtcMusic;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    const/16 v17, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "[HtcMusic]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper;->onPause()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v0, p0}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0}, Lcom/htc/music/GliderAdapter;->pauseDecoder()V

    :cond_3
    const-string v0, "[HtcMusic]"

    const-string v1, "onPause finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/htc/music/HtcMusic;->prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v0, v1, v3}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;ILjava/lang/String;I)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;ILjava/lang/String;ILcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->initializeSoundEffectDialog()V

    goto :goto_0

    :cond_1
    const-string v0, "[HtcMusic]"

    const-string v1, "onPrepareDialog, DIALOG_SOUND_EFFECT, mService is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    if-eqz v8, :cond_0

    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v8, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_8
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogAdapter(Landroid/app/Activity;Ljava/lang/String;)Lcom/htc/music/widget/SharedAdapter;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareText:Ljava/lang/String;

    invoke-static {p0, v0, v4, p2}, Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;Landroid/app/Dialog;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v7

    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    :pswitch_a
    check-cast p2, Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v0, :cond_2

    const-string v0, "[HtcMusic]"

    const-string v1, "mCurrentAudioId < 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iput v3, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v8, :cond_3

    const/4 v6, 0x2

    iget v7, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v6, v7, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_2
    iget-object v6, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v6, p1}, Lcom/htc/music/NowPlayingViewHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/htc/music/HtcMusic;->mMenuStatus:I

    if-eq v6, v8, :cond_4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iget v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-gez v8, :cond_5

    move v6, v7

    goto :goto_0

    :cond_5
    const/16 v8, 0x14

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_1
    iget-boolean v8, p0, Lcom/htc/music/HtcMusic;->mBlockMenu:Z

    if-ne v6, v8, :cond_8

    move v6, v7

    goto :goto_0

    :cond_7
    const/16 v8, 0x14

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    iput v7, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    goto :goto_0

    :cond_8
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioType:I

    const/4 v4, 0x0

    const/16 v8, 0x18

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    const/16 v8, 0x1c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    const/16 v8, 0x25

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeatsBT(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadsetBT(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    :goto_2
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    const/16 v8, 0x23

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-nez v8, :cond_13

    move v8, v6

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    const/16 v8, 0x24

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    const/16 v8, 0x17

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_f
    :goto_4
    const/16 v8, 0x22

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isDMPMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_10
    :goto_5
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_11
    :goto_6
    const/16 v8, 0x27

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_12
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_13
    move v8, v7

    goto :goto_3

    :cond_14
    iget v8, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    if-ltz v8, :cond_15

    move v8, v6

    :goto_7
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_15
    move v8, v7

    goto :goto_7

    :cond_16
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_17
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    :cond_18
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v11, 0x0

    const-string v7, "[HtcMusic]"

    const-string v8, "onResume +"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v7}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    :cond_0
    const/4 v7, 0x2

    iget v8, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v7, v8, :cond_1

    const/4 v7, 0x3

    iget v8, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v7, v8, :cond_2

    :cond_1
    const-string v7, "[HtcMusic]"

    const-string v8, "DMC mode, return directly"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :goto_0
    return-void

    :cond_2
    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mShowDialog:Z

    iget-boolean v7, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v7}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    :cond_3
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mAudioManager:Landroid/media/AudioManager;

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/htc/music/MediaButtonIntentReceiver;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v7}, Lcom/htc/music/GliderAdapter;->resumeDecoder()V

    :cond_4
    iput-boolean v11, p0, Lcom/htc/music/HtcMusic;->mPaused:Z

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSoundEnhancerEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v7

    const/4 v7, 0x1

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPluggedCacheValue()Z

    move-result v3

    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v2

    if-eq v3, v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->wiredHeadSetStatusChanged(Z)V

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7, p0, p0}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;

    invoke-virtual {v7, p0, p0}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    :cond_6
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setAllSongsTitle()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->setPauseButtonImage()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->refreshNow()J

    move-result-wide v4

    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_7

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v4, v5}, Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkedInternalStorageWhenResume(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->finish()V

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/htc/music/HtcMusic;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPluggedCacheValue()Z

    move-result v1

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eq v1, v0, :cond_5

    invoke-virtual {p0, v0, v11}, Lcom/htc/music/HtcMusic;->headSetStatusChanged(ZZ)V

    goto :goto_1

    :cond_9
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/music/HtcMusic$19;

    invoke-direct {v7, p0}, Lcom/htc/music/HtcMusic$19;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-string v7, "[HtcMusic]"

    const-string v8, "onResume -"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "message"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "downloadalbumartid"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareNormaldialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mShareDRMDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "currentAudioId"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "currentAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mCurrentAudioPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tempSelectedEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempSelectedEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "tempShowingEQIndex"

    iget v1, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tempSelectedSoundEffectIndex"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEffectSelectedItem:Lcom/htc/music/util/SoundEffectItem;

    iget-object v1, v1, Lcom/htc/music/util/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v0, :cond_5

    const-string v0, "ringtoneAudioPath"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ringtoneAudioId"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ringtoneAudioType"

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onSelectionChange(I)V
    .locals 1

    new-instance v0, Lcom/htc/music/HtcMusic$33;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$33;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSelectionChangeUI(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/music/GliderAdapter;->onSelectionChanged(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const-string v4, "[HtcMusic]"

    const-string v5, "[HtcMusic][onStart Begin]"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget v4, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-eq v8, v4, :cond_0

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/music/HtcMusic;->mDlnaMode:I

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v4, "[HtcMusic]"

    const-string v5, "DMC mode, return directly"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x12

    iput v4, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "directmode"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    const-string v4, "[HtcMusic]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get intent directmode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/music/HtcMusic;->mDirectMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    :cond_3
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v7, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z

    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.htc.music.playstatechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.metachanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.playbackcomplete"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.rotateleft"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.rotateright"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.rotatecircle_next"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.rotatecircle_previous"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.rotatequickly"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.queuechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.shuffle"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.refresh"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.changeart"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.htc.music.onerror"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v4, v5}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "action_complete_one_download"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/htc/music/HtcMusic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->animationRefresh()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->updateTrackInfoP()V

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isConnectionFail(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v4}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    :cond_6
    const-string v4, "[HtcMusic]"

    const-string v5, "[HtcMusic][onStart End]"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStateChange(I)V
    .locals 1

    new-instance v0, Lcom/htc/music/HtcMusic$34;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/HtcMusic$34;-><init>(Lcom/htc/music/HtcMusic;I)V

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStateChangeUI(I)V
    .locals 8

    const/16 v7, 0x12

    const/4 v6, 0x1

    iput p1, p0, Lcom/htc/music/HtcMusic;->mGliderState:I

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v4, :cond_0

    if-ne v7, p1, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-eq v4, p1, :cond_3

    const/16 v4, 0x9

    if-eq v4, p1, :cond_3

    const/16 v4, 0xb

    if-eq v4, p1, :cond_3

    const/4 v4, 0x2

    if-ne v4, p1, :cond_5

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z

    if-ne v6, v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v4

    if-eq v4, v2, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_5
    if-ne v7, p1, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "[HtcMusic]"

    const-string v3, "onStop"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V

    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mEQDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    :cond_1
    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v2}, Lcom/htc/music/NowPlayingViewHelper;->onStop()V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_2

    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NOW_PLAYING_SWITCH"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mDlArtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->activityGoSleep()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v2, p0, Lcom/htc/music/HtcMusic;->mIsSeriveBinded:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/HtcMusic;->mNeedBindSerive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iput-boolean v4, p0, Lcom/htc/music/HtcMusic;->mInitAP:Z

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "[HtcMusic]"

    const-string v3, "onStop finished"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0, v4}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :catch_1
    move-exception v2

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public plugOutBeatsHeadsetHandle()V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->closeOptionsMenu()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f070097

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    const-string v1, "SRS"

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0700dc

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    const-string v1, "Original"

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    goto :goto_1

    :cond_3
    const v0, 0x7f070098

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V

    const-string v1, "SRS"

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    goto :goto_1
.end method

.method prepareDownloadAlbumArtDialog(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->queryUpdateAlbumArtSetting()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/HtcMusic;->syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V

    invoke-virtual {p0, p1}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    return-void
.end method

.method setAsResetCurrentItem(Landroid/widget/TextView;)V
    .locals 2

    const v0, 0x7f0700da

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$ResetCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "[HtcMusic]"

    const-string v1, "reset current albumart enable"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setAsUpdateCurrentItem(Landroid/widget/TextView;)V
    .locals 2

    const v0, 0x7f0700d9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;-><init>(Lcom/htc/music/HtcMusic;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "[HtcMusic]"

    const-string v1, "update current albumart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEQSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    return-void
.end method

.method public setNowPlayingVisible(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isnowplayinglist"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {v1, p0}, Lcom/htc/music/NowPlayingViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1, v0, v4}, Lcom/htc/music/NowPlayingViewHelper;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onStart()V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->attachNowPlayingView()V

    :cond_1
    :goto_2
    iput-boolean p1, p0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1, v0}, Lcom/htc/music/NowPlayingViewHelper;->onNewIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->onRestart()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setVisibility(Z)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->requestLayout()V

    :cond_4
    invoke-direct {p0}, Lcom/htc/music/HtcMusic;->detachNowPlayingView()V

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->finish()V

    iput-object v4, p0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    goto :goto_2
.end method

.method public showSoundEffectDialog()V
    .locals 2

    const v1, 0x7f0700dc

    iget-object v0, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, mService is null!!! Can\'t show sound enhancer dialog."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, HDMI is plugged and Headset is Not plugged. return."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsBTWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f070097

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Bluetooth out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/music/util/HdmiPlugReceiver;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Lcom/htc/music/HtcMusic;->showToast(I)V

    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support HDMI out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f070098

    invoke-direct {p0, v0}, Lcom/htc/music/HtcMusic;->showToast(I)V

    const-string v0, "[HtcMusic]"

    const-string v1, "showSoundEffectDialog, Beats do not support Speaker out."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/HtcMusic;->mTempSelectedSoundEffectStyle:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/HtcMusic;->mTempShowingEQIndex:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "CATEGORY_ORDER"

    const-string v4, "media/audio"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method syncAutoUpdateCheckBox(Landroid/app/Dialog;Z)V
    .locals 2

    const v1, 0x7f080068

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method syncUpdateAllAlbumArtItem(Landroid/app/Dialog;Z)V
    .locals 2

    const v1, 0x7f080069

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method syncUpdateCurrentAlbum(Landroid/app/Dialog;)V
    .locals 11

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v6

    iput v6, p0, Lcom/htc/music/HtcMusic;->mDownloadAlbumArtId:I

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_album_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const v1, 0x7f08006a

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "dl_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Landroid/widget/TextView;)V

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_2
    const/4 v7, 0x0

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setAsResetCurrentItem(Landroid/widget/TextView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught remote exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    :try_start_3
    invoke-virtual {p0, v10}, Lcom/htc/music/HtcMusic;->setAsUpdateCurrentItem(Landroid/widget/TextView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_4
    const-string v1, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in resetCurrentAlbumArt. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    throw v1
.end method

.method public wiredHeadSetStatusChanged(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v2

    const/4 v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->getBeatsLastState(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    :cond_0
    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wiredHeadSetStatusChanged, plug in wired headset, bBeatsOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    if-eqz v0, :cond_2

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    :goto_0
    iput v1, p0, Lcom/htc/music/HtcMusic;->mCurrentSoundEffectIndicatorType:I

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/music/util/SoundEffectHelper;->getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    const-string v2, "[HtcMusic]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wiredHeadSetStatusChanged, set nowHWAudioSetting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeatsBT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadsetBT(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->closeOptionsMenu()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/HtcMusic;->plugOutBeatsHeadsetHandle()V

    goto :goto_1
.end method
