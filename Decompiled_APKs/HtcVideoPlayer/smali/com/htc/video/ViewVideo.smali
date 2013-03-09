.class public Lcom/htc/video/ViewVideo;
.super Landroid/app/Activity;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/HtcMediaController$ControllerEventListener;
.implements Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/ViewVideo$VideoMediaController;,
        Lcom/htc/video/ViewVideo$SoundEffectThread;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_ALERT:Ljava/lang/String; = "com.android.alarmclock.ALARM_ALERT"

.field private static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field private static final ACTION_EVENT_REMINDER:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field private static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.message.RECEIVE_NEW_MESSAGE"

.field private static final ACTION_SMS_RECEIVED2:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final ACTION_SMS_RECEIVED_DATA:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field private static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"

.field private static final ACTION_WORLD_CLOCK_ALARM_ALERT:Ljava/lang/String; = "com.htc.android.worldclock.ALARM_ALERT"

.field private static final ALARM_BROADCAST_CAUGHT:Ljava/lang/String; = "alarm_broadcast_caught"

.field private static final DIALOG_ID_LOADING:I = 0x1

.field private static final DIALOG_SOUND_EFFECT:I = 0x2

.field private static final FOR_NEL_TEST:Ljava/lang/String; = "FOR_NEL_TEST"

.field private static final INTENT_ACTION_HTC_FMRADIO:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final INTENT_ACTION_HTC_MUSIC:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field private static final INTENT_KEY_COMMAND:Ljava/lang/String; = "command"

.field private static final INTENT_VALUE_COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final IsDebug:Z = false

.field public static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final LAUNCHER:Ljava/lang/String; = "launcher"

.field private static final MSGID_VIDEO_PLAY:I = 0x1

.field private static final MSGID_VIDEO_SHOW_CONTROL:I = 0x2

.field private static final NEL_IDENTIFIER:Ljava/lang/String; = "706"

.field private static final PAUSE_PLAY_REASON_NONE:I = 0x0

.field private static final PAUSE_PLAY_REASON_ORIENTATION:I = 0x1

.field private static final PAUSE_PLAY_REASON_PREPARING:I = 0x2

.field private static final PAUSE_PLAY_REASON_USERPAUSE:I = 0x4

.field private static final REFRESH_SOUND_EFFECT_LIST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ViewVideo"

.field private static final URI_SCHEME_HTTP:Ljava/lang/String; = "http"


# instance fields
.field private final IS_REPEAT:Ljava/lang/String;

.field private isDestroyed:Z

.field private m3Orientation:Z

.field private mBackKeyPressed:Z

.field private mBeatsEffect:I

.field private mBeatsHeadSetPlugged:Z

.field private mCloseStopView:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCorrectOrientation:I

.field private mCurrentEffect:I

.field private mDMP:Z

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDrmFirstLaunch:Z

.field private mDrmPlayedUri:Landroid/net/Uri;

.field private mDrmState:I

.field private mDrmType:I

.field private mDrmUri:Landroid/net/Uri;

.field private mEffectChange:Ljava/lang/Runnable;

.field private mEffectThread:Lcom/htc/video/ViewVideo$SoundEffectThread;

.field private mEffectToast:Landroid/widget/Toast;

.field private mEffectUse:Ljava/lang/Runnable;

.field private mForNELFlag:Z

.field private mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mGeneralDrmItemClickListener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

.field private mHTC51FailToast:Landroid/widget/Toast;

.field private final mHandler:Landroid/os/Handler;

.field private mHasLaunchedBrowsingMode:Z

.field private mHdmiPlugReceiver:Lcom/htc/video/HdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/video/HeadSetHelper;

.field private mHighSpeedModeStatus:I

.field private mInterruptingEventsReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDrm:Z

.field private mIsHeadSetPluggedOnce:Z

.field private mIsRepeat:Z

.field private mIsSupport3DMimeType:Z

.field private mIsTestingEffect:Z

.field private mKeepPlayByAlarm:Z

.field private mLauncher:I

.field private mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

.field private mLoadingDialog:Landroid/app/Dialog;

.field private mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

.field mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

.field mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

.field private mMonitorHeadSetStatus:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

.field private mMoreCompare:[Ljava/lang/String;

.field private mNonBeatsHeadSetPlugged:Z

.field private mNotShowSoundEnhancer:Z

.field private mPausePlayReason:I

.field mPausedPlaybackPosition:I

.field private mPlayModeToast:Landroid/widget/Toast;

.field mPopupMaxWidth:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenewRightListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

.field private mRequestFromInside:Z

.field private mShouldAutoResume:Z

.field private mShowDlg:Z

.field private mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

.field private mSoundEffectButton:Landroid/widget/ImageButton;

.field private mSoundEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/video/VideoUtility/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

.field private mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mStereoModeStatus:I

.field private mStopView:Landroid/widget/RelativeLayout;

.field private mStopViewButton:Landroid/widget/ImageButton;

.field private mStopViewIsVisible:Z

.field private mTestEffect:I

.field private mVideoCmdReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoData:Lcom/htc/video/VideoUtility/VideoData;

.field private mVideoMimeType:Ljava/lang/String;

.field private mVideoName:Ljava/lang/String;

.field private mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

.field private mVideoView:Lcom/htc/video/HtcVideoView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    const-string v0, "VIEWVIDEO_ISREPEAT"

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->IS_REPEAT:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsRepeat:Z

    .line 101
    iput v1, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    .line 102
    iput v1, p0, Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I

    .line 106
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mLoadingDialog:Landroid/app/Dialog;

    .line 110
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->isDestroyed:Z

    .line 111
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsHeadSetPluggedOnce:Z

    .line 112
    iput-boolean v3, p0, Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z

    .line 113
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z

    .line 117
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mCloseStopView:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mStopViewIsVisible:Z

    .line 119
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    .line 122
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoMimeType:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoName:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    .line 126
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mStopView:Landroid/widget/RelativeLayout;

    .line 127
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mStopViewButton:Landroid/widget/ImageButton;

    .line 133
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;

    .line 139
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    .line 140
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mHasLaunchedBrowsingMode:Z

    .line 141
    iput-boolean v3, p0, Lcom/htc/video/ViewVideo;->mDrmFirstLaunch:Z

    .line 143
    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    .line 145
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mBackKeyPressed:Z

    .line 156
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    .line 157
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mShouldAutoResume:Z

    .line 158
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    .line 172
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mRequestFromInside:Z

    .line 178
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    .line 179
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mDrmPlayedUri:Landroid/net/Uri;

    .line 180
    iput v1, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/ViewVideo;->mDrmType:I

    .line 185
    iput-boolean v3, p0, Lcom/htc/video/ViewVideo;->mShowDlg:Z

    .line 200
    sget-boolean v0, Lcom/htc/video/Common/Constants;->VIDEO_ORIENTATION_FREE:Z

    iput-boolean v0, p0, Lcom/htc/video/ViewVideo;->m3Orientation:Z

    .line 202
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 205
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 206
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    .line 209
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mBeatsHeadSetPlugged:Z

    .line 210
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mNonBeatsHeadSetPlugged:Z

    .line 212
    new-instance v0, Lcom/htc/video/ViewVideo$1;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$1;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 300
    new-instance v0, Lcom/htc/video/ViewVideo$2;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$2;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mGeneralDrmItemClickListener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    .line 314
    new-instance v0, Lcom/htc/video/ViewVideo$3;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$3;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mRenewRightListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    .line 346
    new-instance v0, Lcom/htc/video/ViewVideo$4;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$4;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectUse:Ljava/lang/Runnable;

    .line 360
    new-instance v0, Lcom/htc/video/ViewVideo$5;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$5;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectChange:Ljava/lang/Runnable;

    .line 490
    new-instance v0, Lcom/htc/video/ViewVideo$6;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$6;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mMonitorHeadSetStatus:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    .line 680
    new-instance v0, Lcom/htc/video/ViewVideo$7;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$7;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    .line 748
    new-instance v0, Lcom/htc/video/HdmiPlugReceiver;

    invoke-direct {v0}, Lcom/htc/video/HdmiPlugReceiver;-><init>()V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mHdmiPlugReceiver:Lcom/htc/video/HdmiPlugReceiver;

    .line 2610
    new-instance v0, Lcom/htc/video/ViewVideo$18;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$18;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoCmdReceiver:Landroid/content/BroadcastReceiver;

    .line 2659
    new-instance v0, Lcom/htc/video/ViewVideo$19;

    invoke-direct {v0, p0}, Lcom/htc/video/ViewVideo$19;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    .line 2685
    return-void
.end method

.method static synthetic access$000(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/video/ViewVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/video/ViewVideo;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mTestEffect:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/video/ViewVideo;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/video/ViewVideo;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectUse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mBeatsHeadSetPlugged:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/video/ViewVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mBeatsHeadSetPlugged:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mNonBeatsHeadSetPlugged:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/video/ViewVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mNonBeatsHeadSetPlugged:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/video/ViewVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->updateSoundEffectDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/VideoData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/video/ViewVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/video/ViewVideo;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/video/ViewVideo;->setHdmiSoundButton(ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->getHTC51FailToast()Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->startVideoAfterPrepared()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/video/ViewVideo;)Lcom/htc/video/Common/SoundEffectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/htc/video/ViewVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsRepeat:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/video/ViewVideo;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mDrmPlayedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/video/ViewVideo;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/video/ViewVideo;->prepareVideo(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I

    return v0
.end method

.method static synthetic access$3202(Lcom/htc/video/ViewVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->launchFolderList()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/video/ViewVideo;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/htc/video/ViewVideo;->videoOriAdj(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    return v0
.end method

.method static synthetic access$3572(Lcom/htc/video/ViewVideo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->closeVideoSoundEffectStream()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HeadSetHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/video/ViewVideo;Lcom/htc/video/HeadSetHelper;)Lcom/htc/video/HeadSetHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMonitorHeadSetStatus:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mDrmFirstLaunch:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/video/ViewVideo;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->consumeVideoRight()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/video/ViewVideo;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/video/ViewVideo;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mLoadingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mGeneralDrmItemClickListener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->isDestroyed:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/video/ViewVideo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/SoundEffectItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/htc/video/ViewVideo;Lcom/htc/video/VideoUtility/SoundEffectItem;)Lcom/htc/video/VideoUtility/SoundEffectItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/htc/video/ViewVideo;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/video/ViewVideo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/video/ViewVideo;->changeVisionMode(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->trimVideo()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->changeScreenMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/video/ViewVideo;ILandroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/video/ViewVideo;->showingDrmMessage(ILandroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/video/ViewVideo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    return v0
.end method

.method static synthetic access$5002(Lcom/htc/video/ViewVideo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    return p1
.end method

.method static synthetic access$602(Lcom/htc/video/ViewVideo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mShowDlg:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/video/ViewVideo;Lcom/htc/video/VideoSoundEffectHelper;)Lcom/htc/video/VideoSoundEffectHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/video/ViewVideo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z

    return v0
.end method

.method private applyNewVideoSoundEffect(IZZ)V
    .locals 10
    .parameter "newEffect"
    .parameter "showToast"
    .parameter "isTesting"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 413
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-nez v6, :cond_0

    .line 481
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v2, 0x0

    .line 418
    .local v2, hdmiCase:Z
    const/4 v0, 0x0

    .line 419
    .local v0, btCase:Z
    const/4 v4, 0x0

    .line 421
    .local v4, speakerCase:Z
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 422
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_1

    .line 427
    const/4 v2, 0x1

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_3

    .line 434
    const/4 v0, 0x1

    .line 437
    :cond_3
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v6

    if-nez v6, :cond_4

    .line 438
    const/4 v4, 0x1

    .line 440
    :cond_4
    if-eq p3, v8, :cond_a

    .line 441
    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z

    .line 442
    iput p1, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    .line 444
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v2, :cond_9

    if-nez v0, :cond_9

    if-nez v4, :cond_9

    .line 445
    iput p1, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    .line 446
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v6, :cond_5

    .line 447
    iget v6, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 448
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v7, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/video/ViewVideo$VideoMediaController;->updateBeatsIndicator(I)V

    .line 463
    :cond_5
    :goto_1
    if-eqz p2, :cond_b

    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mEffectChange:Ljava/lang/Runnable;

    .line 464
    .local v3, r:Ljava/lang/Runnable;
    :goto_2
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    .line 465
    .local v5, t:Landroid/widget/Toast;
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    .line 466
    .local v1, h:Landroid/os/Handler;
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mEffectThread:Lcom/htc/video/ViewVideo$SoundEffectThread;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mEffectThread:Lcom/htc/video/ViewVideo$SoundEffectThread;

    iget-object v6, v6, Lcom/htc/video/ViewVideo$SoundEffectThread;->threadHandler:Landroid/os/Handler;

    if-eqz v6, :cond_6

    .line 467
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mEffectThread:Lcom/htc/video/ViewVideo$SoundEffectThread;

    iget-object v1, v6, Lcom/htc/video/ViewVideo$SoundEffectThread;->threadHandler:Landroid/os/Handler;

    .line 470
    :cond_6
    if-eqz v5, :cond_7

    .line 471
    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 473
    :cond_7
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    const-wide/16 v6, 0x320

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 450
    .end local v1           #h:Landroid/os/Handler;
    .end local v3           #r:Ljava/lang/Runnable;
    .end local v5           #t:Landroid/widget/Toast;
    :cond_8
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v7, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v6, v8}, Lcom/htc/video/ViewVideo$VideoMediaController;->updateBeatsIndicator(I)V

    goto :goto_1

    .line 454
    :cond_9
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v6, :cond_5

    .line 455
    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v7, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v6, v9}, Lcom/htc/video/ViewVideo$VideoMediaController;->updateBeatsIndicator(I)V

    goto :goto_1

    .line 459
    :cond_a
    iput-boolean v8, p0, Lcom/htc/video/ViewVideo;->mIsTestingEffect:Z

    .line 460
    iput p1, p0, Lcom/htc/video/ViewVideo;->mTestEffect:I

    goto :goto_1

    .line 463
    :cond_b
    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mEffectUse:Ljava/lang/Runnable;

    goto :goto_2
.end method

.method private broadCastDMCInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.DMCINFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2578
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Render"

    invoke-static {p0, v3}, Lcom/htc/video/VideoUtility/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2579
    const-string v1, "Server"

    invoke-static {p0, v3}, Lcom/htc/video/VideoUtility/DMCHelper;->getDMS(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2580
    const-string v1, "Filtercap"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2581
    invoke-virtual {p0, v0}, Lcom/htc/video/ViewVideo;->sendBroadcast(Landroid/content/Intent;)V

    .line 2582
    return-void
.end method

.method private changeScreenMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3241
    iget-object v4, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v4}, Lcom/htc/video/ViewVideo$VideoMediaController;->getPlaybackMode()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 3243
    .local v0, nMode:I
    :goto_0
    const v1, 0x7f040003

    .line 3245
    .local v1, resId:I
    iget-object v4, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v4, v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->setPlaybackMode(I)V

    .line 3246
    iget-object v4, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    invoke-virtual {v4, v0}, Lcom/htc/video/ChooseMoreDialogAdapter;->changeMode(I)V

    .line 3248
    if-ne v0, v2, :cond_0

    .line 3250
    const v1, 0x7f040004

    .line 3253
    :cond_0
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mPlayModeToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 3255
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mPlayModeToast:Landroid/widget/Toast;

    .line 3261
    :goto_1
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mPlayModeToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3262
    return-void

    .end local v0           #nMode:I
    .end local v1           #resId:I
    :cond_1
    move v0, v3

    .line 3241
    goto :goto_0

    .line 3259
    .restart local v0       #nMode:I
    .restart local v1       #resId:I
    :cond_2
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mPlayModeToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method

.method private changeVisionMode(I)V
    .locals 4
    .parameter "choice"

    .prologue
    .line 3187
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v1, :cond_0

    .line 3189
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->pauseVideoPlayBack()V

    .line 3190
    iget v1, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3192
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 3193
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    .line 3194
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget v2, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    iput v2, v1, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 3195
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->updatePlaybackMode()V

    .line 3196
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->doPauseResume()V

    .line 3197
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    iget v2, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    invoke-virtual {v1, v2, p1}, Lcom/htc/video/ChooseMoreDialogAdapter;->changeVision(II)V

    .line 3237
    :cond_0
    :goto_0
    return-void

    .line 3201
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013c

    new-instance v3, Lcom/htc/video/ViewVideo$25;

    invoke-direct {v3, p0, p1}, Lcom/htc/video/ViewVideo$25;-><init>(Lcom/htc/video/ViewVideo;I)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/htc/video/ViewVideo$24;

    invoke-direct {v3, p0}, Lcom/htc/video/ViewVideo$24;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 3233
    .local v0, force3DDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/video/ViewVideo;->mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3234
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private checkDrmState(Lcom/htc/video/VideoUtility/VideoData;)I
    .locals 3
    .parameter "image"

    .prologue
    .line 1917
    invoke-virtual {p1}, Lcom/htc/video/VideoUtility/VideoData;->setDrmStateToNonCheck()V

    .line 1918
    invoke-virtual {p1, p0}, Lcom/htc/video/VideoUtility/VideoData;->getDrmState(Landroid/content/Context;)I

    move-result v0

    .line 1919
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1920
    :cond_0
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/video/ViewVideo$15;

    invoke-direct {v2, p0, p1}, Lcom/htc/video/ViewVideo$15;-><init>(Lcom/htc/video/ViewVideo;Lcom/htc/video/VideoUtility/VideoData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1932
    :cond_1
    :goto_0
    return v0

    .line 1925
    :cond_2
    if-eqz v0, :cond_1

    .line 1926
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/video/ViewVideo$16;

    invoke-direct {v2, p0, v0, p1}, Lcom/htc/video/ViewVideo$16;-><init>(Lcom/htc/video/ViewVideo;ILcom/htc/video/VideoUtility/VideoData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private checkDrmVideoPlayState()Z
    .locals 3

    .prologue
    .line 2088
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v0}, Lcom/htc/video/VideoUtility/VideoData;->setDrmStateToNonCheck()V

    .line 2090
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v0, p0}, Lcom/htc/video/VideoUtility/VideoData;->getDrmState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    .line 2091
    iget v0, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    if-eqz v0, :cond_0

    .line 2092
    iget v0, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    new-instance v2, Lcom/htc/video/ViewVideo$17;

    invoke-direct {v2, p0}, Lcom/htc/video/ViewVideo$17;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-static {p0, v0, v1, v2}, Lcom/htc/video/VideoUtility/DrmManager;->showMessage(Landroid/content/Context;ILcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    .line 2103
    const/4 v0, 0x0

    .line 2106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeVideoSoundEffectStream()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    .line 406
    .local v0, helper:Lcom/htc/video/VideoSoundEffectHelper;
    if-eqz v0, :cond_0

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/video/VideoSoundEffectHelper;->setStreamStatus(I)V

    .line 409
    :cond_0
    return-void
.end method

.method private consumeVideoRight()V
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/htc/video/VideoUtility/DrmManager;->consumeDrmVideoRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/video/ViewVideo;->mDrmFirstLaunch:Z

    .line 1914
    :cond_0
    return-void
.end method

.method private createSoundEffectDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 2872
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2875
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2881
    const-string v2, "ViewVideo"

    const-string v3, "createSoundEffectDialog, HDMI is plugged. return."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 3043
    :goto_0
    return-object v2

    .line 2885
    :cond_0
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2890
    const-string v2, "ViewVideo"

    const-string v3, "createSoundEffectDialog, BT is plugged. return."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 2891
    goto :goto_0

    .line 2894
    :cond_2
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2896
    const-string v2, "ViewVideo"

    const-string v3, "createSoundEffectDialog, Nothing is plugged. return."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    .line 2897
    goto :goto_0

    .line 2900
    :cond_3
    const-string v3, "ViewVideo"

    const-string v4, "[createSoundEffectDialog] Start ================================="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2903
    .local v9, resource:Landroid/content/res/Resources;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2904
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2906
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2907
    .local v6, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    invoke-virtual {v6, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2909
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f09000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListView;

    .line 2911
    .local v7, list:Lcom/htc/widget/HtcListView;
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->initializeSoundEffectDialog()V

    .line 2913
    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    if-nez v3, :cond_4

    .line 2915
    new-instance v3, Lcom/htc/video/Common/SoundEffectAdapter;

    const v4, 0x7f030002

    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/video/Common/SoundEffectAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    .line 2918
    :cond_4
    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2920
    new-instance v8, Lcom/htc/video/ViewVideo$20;

    invoke-direct {v8, p0}, Lcom/htc/video/ViewVideo$20;-><init>(Lcom/htc/video/ViewVideo;)V

    .line 2960
    .local v8, listClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2961
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 2962
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 2963
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 2964
    invoke-virtual {v7, v2, v2}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 2965
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 2966
    const v3, 0x2080700

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2969
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2971
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2972
    new-instance v2, Lcom/htc/video/ViewVideo$21;

    invoke-direct {v2, p0}, Lcom/htc/video/ViewVideo$21;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2982
    const v2, 0x20c013c

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/video/ViewVideo$22;

    invoke-direct {v3, p0}, Lcom/htc/video/ViewVideo$22;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3035
    const v2, 0x20c013d

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3037
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3038
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-direct {p0, v2}, Lcom/htc/video/ViewVideo;->setOnDismissListener(Landroid/app/Dialog;)V

    .line 3042
    const-string v2, "ViewVideo"

    const-string v3, "[createSoundEffectDialog] End ================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2586
    if-eqz p1, :cond_0

    const-string v1, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v7, v3

    .line 2606
    :cond_1
    :goto_0
    return-object v7

    .line 2589
    :cond_2
    const/4 v7, 0x0

    .line 2591
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2592
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2593
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2597
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2598
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2602
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getHTC51FailToast()Landroid/widget/Toast;
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 485
    const v0, 0x7f04000b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private handleDrmVideo(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .parameter "uri"

    .prologue
    .line 1936
    const/4 v10, 0x0

    .line 1937
    .local v10, newUri:Landroid/net/Uri;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1938
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1942
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1943
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1945
    .local v9, dataPath:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1946
    .local v11, offset:I
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1947
    .local v8, contentId:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1948
    .local v6, boundary:I
    invoke-static {v9, v11, v8, v6}, Lcom/htc/video/VideoUtility/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    .line 1950
    .end local v6           #boundary:I
    .end local v8           #contentId:Ljava/lang/String;
    .end local v9           #dataPath:Ljava/lang/String;
    .end local v11           #offset:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1954
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    return-object v10
.end method

.method private initializeSoundEffectDialog()V
    .locals 13

    .prologue
    .line 2749
    const-string v11, "ViewVideo"

    const-string v12, "[initializeSoundEffectDialog] Start ================================="

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    const/4 v2, 0x0

    .line 2751
    .local v2, hdmiCase:Z
    const/4 v0, 0x0

    .line 2752
    .local v0, btCase:Z
    const/4 v8, 0x0

    .line 2754
    .local v8, speakerCase:Z
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2757
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2763
    const/4 v2, 0x1

    .line 2764
    const-string v11, "ViewVideo"

    const-string v12, "initializeSoundEffectDialog, HDMI is plugged. return."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :goto_0
    return-void

    .line 2768
    :cond_0
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2773
    const/4 v0, 0x1

    .line 2774
    const-string v11, "ViewVideo"

    const-string v12, "initializeSoundEffectDialog, BT is plugged. return."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2778
    :cond_2
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v11

    if-nez v11, :cond_3

    .line 2780
    const/4 v8, 0x1

    .line 2781
    const-string v11, "ViewVideo"

    const-string v12, "initializeSoundEffectDialog, Nothing is plugged. return."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2786
    :cond_3
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-nez v11, :cond_4

    .line 2788
    const-string v11, "ViewVideo"

    const-string v12, "initializeSoundEffectDialog, mVideoSoundEffectHelper is null. return."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2793
    :cond_4
    :try_start_0
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v11}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v11

    new-array v6, v11, [Ljava/lang/String;

    .line 2794
    .local v6, mSoundEffectStyles:[Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v11}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v11

    new-array v5, v11, [I

    .line 2795
    .local v5, mSoundEffectIcon:[I
    const/4 v10, 0x0

    .line 2796
    .local v10, styleId:I
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2798
    const/4 v9, 0x0

    .local v9, styleCount:I
    :goto_1
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v11}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 2800
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v11, v9}, Lcom/htc/video/VideoSoundEffectHelper;->getSoundStringResource(I)I

    move-result v10

    .line 2801
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    .line 2802
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v11, v9}, Lcom/htc/video/VideoSoundEffectHelper;->getSoundIconResource(I)I

    move-result v11

    aput v11, v5, v9

    .line 2798
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2805
    :cond_5
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2807
    const/4 v4, 0x0

    .line 2808
    .local v4, item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v11, v6

    if-ge v3, v11, :cond_6

    .line 2810
    new-instance v4, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .end local v4           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    aget-object v11, v6, v3

    invoke-direct {v4, v11}, Lcom/htc/video/VideoUtility/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 2812
    .restart local v4       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    aget v11, v5, v3

    iput v11, v4, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    .line 2813
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2817
    .end local v3           #i:I
    .end local v4           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    :cond_6
    const/4 v4, 0x0

    .line 2823
    .restart local v4       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v11

    if-eqz v11, :cond_b

    if-nez v2, :cond_b

    if-nez v0, :cond_b

    if-nez v8, :cond_b

    .line 2825
    iget v7, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    .line 2830
    .local v7, selEffect:I
    :goto_3
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    array-length v11, v6

    if-ge v3, v11, :cond_d

    .line 2832
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    check-cast v4, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 2833
    .restart local v4       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v11, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v11, v11, v3

    if-ne v11, v7, :cond_8

    .line 2835
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    if-eqz v11, :cond_7

    .line 2837
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 2839
    :cond_7
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/htc/video/VideoUtility/SoundEffectItem;->setSelected(Z)V

    .line 2840
    iput-object v4, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 2842
    :cond_8
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v11, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v11, v11, v3

    iget-object v12, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 2844
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v11

    if-nez v11, :cond_a

    .line 2846
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2848
    :cond_9
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 2849
    const-string v11, "ViewVideo"

    const-string v12, "[initializeSoundEffectDialog] head set plugged"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2828
    .end local v3           #i:I
    .end local v7           #selEffect:I
    :cond_b
    iget v7, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    .restart local v7       #selEffect:I
    goto :goto_3

    .line 2853
    .restart local v3       #i:I
    :cond_c
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 2854
    const-string v11, "ViewVideo"

    const-string v12, "[initializeSoundEffectDialog] head set not plugged"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 2860
    .end local v3           #i:I
    .end local v4           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    .end local v5           #mSoundEffectIcon:[I
    .end local v6           #mSoundEffectStyles:[Ljava/lang/String;
    .end local v7           #selEffect:I
    .end local v9           #styleCount:I
    .end local v10           #styleId:I
    :catch_0
    move-exception v1

    .line 2862
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2865
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_d
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    if-eqz v11, :cond_e

    .line 2866
    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    invoke-virtual {v11}, Lcom/htc/video/Common/SoundEffectAdapter;->notifyDataSetInvalidated()V

    .line 2867
    :cond_e
    const-string v11, "ViewVideo"

    const-string v12, "[initializeSoundEffectDialog] End ================================="

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private launchFolderList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1381
    iget-boolean v7, p0, Lcom/htc/video/ViewVideo;->mHasLaunchedBrowsingMode:Z

    if-ne v9, v7, :cond_1

    .line 1383
    const-string v7, "ViewVideo"

    const-string v8, "[launchFolderList]: skip..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    const-string v7, "ViewVideo"

    const-string v8, "[launchFolderList]: ..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mHasLaunchedBrowsingMode:Z

    .line 1389
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "Extras"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1390
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1393
    const-string v7, "key_folder_name"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1394
    .local v6, serverName:Ljava/lang/String;
    const-string v7, "key_bucket_id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1395
    .local v5, serverId:Ljava/lang/String;
    const-string v7, "directory_info"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1396
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 1399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1400
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "server_id"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v7, "server_name"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const-string v7, "directory_info"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1404
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1405
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1407
    invoke-static {}, Lcom/htc/video/Customizable/CustTabPluginDLNA;->isStyleExpandable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1408
    const-string v7, "com.htc.album.actions.main_media_list"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    :goto_1
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    const-string v7, "browse_info"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1416
    const-string v7, "tab_default"

    const v8, 0x7f040017

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/htc/video/ViewVideo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1422
    :catch_0
    move-exception v1

    .line 1424
    .local v1, excp:Ljava/lang/Exception;
    const-string v7, "ViewVideo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[launchFolderList] Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1411
    .end local v1           #excp:Ljava/lang/Exception;
    :cond_2
    const-string v7, "com.htc.album.actions.main_folders"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private prepareVideo(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1827
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 1830
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->mShouldAutoResume:Z

    if-eqz v1, :cond_1

    .line 1832
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[prepareVideo] for NEL test: set video uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->start()V

    .line 1834
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget v2, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    invoke-virtual {v1, p1, v2}, Lcom/htc/video/HtcVideoView;->setVideoURIAsync(Landroid/net/Uri;I)V

    .line 1835
    iput-boolean v4, p0, Lcom/htc/video/ViewVideo;->mShouldAutoResume:Z

    .line 1850
    :goto_0
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1852
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->sendStopMusicIntent()V

    .line 1853
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->sendStopFMRadioIntent()V

    .line 1855
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1857
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/video/ViewVideo;->showDialog(I)V

    .line 1859
    :cond_0
    return-void

    .line 1839
    .end local v0           #scheme:Ljava/lang/String;
    :cond_1
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[prepareVideo]: set video uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v1, p1, v4}, Lcom/htc/video/HtcVideoView;->setVideoURIAsync(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1846
    :cond_2
    const-string v1, "ViewVideo"

    const-string v2, "[prepareVideo]: setVideoURIAsync after OnPause() last time"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget v2, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    invoke-virtual {v1, p1, v2}, Lcom/htc/video/HtcVideoView;->setVideoURIAsync(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method private registerVideoPlaybackReceiver(Z)V
    .locals 4
    .parameter "register"

    .prologue
    .line 2627
    if-eqz p1, :cond_0

    .line 2628
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2629
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.album.VIDEO_PLAYBACK_CMD"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2630
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoCmdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/video/ViewVideo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2644
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 2638
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoCmdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/video/ViewVideo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2639
    :catch_0
    move-exception v0

    .line 2640
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ViewVideo"

    const-string v3, "video receiver not registed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestCorrectScreenOrieation(I)V
    .locals 2
    .parameter "desiredOrieation"

    .prologue
    .line 231
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->m3Orientation:Z

    if-eqz v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 235
    :cond_0
    move v0, p1

    .line 237
    .local v0, correctOri:I
    sparse-switch p1, :sswitch_data_0

    .line 253
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/video/ViewVideo;->setRequestedOrientation(I)V

    goto :goto_0

    .line 240
    :sswitch_0
    sget-boolean v1, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v1, :cond_1

    .line 241
    const/4 v0, 0x6

    goto :goto_1

    .line 244
    :cond_1
    const/4 v0, 0x0

    .line 246
    goto :goto_1

    .line 249
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendStopMusicIntent()V
    .locals 3

    .prologue
    .line 2647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2648
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2649
    invoke-virtual {p0, v0}, Lcom/htc/video/ViewVideo;->sendBroadcast(Landroid/content/Intent;)V

    .line 2650
    return-void
.end method

.method private setHdmiSoundButton(ZZ)V
    .locals 12
    .parameter "bEanble"
    .parameter "firstCall"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 795
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-nez v5, :cond_2

    .line 797
    :cond_0
    const-string v5, "ViewVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setHdmiSoundButton] 0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_1
    :goto_0
    return-void

    .line 800
    :cond_2
    const-string v5, "ViewVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setHdmiSoundButton]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-nez p1, :cond_4

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_4

    .line 809
    iget v5, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    if-nez v5, :cond_3

    if-ne p2, v8, :cond_1

    .line 811
    :cond_3
    invoke-direct {p0, v9, v8, v9}, Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V

    goto :goto_0

    .line 823
    :cond_4
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v5

    if-nez v5, :cond_1

    .line 826
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 828
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 829
    .local v0, headSetSetting:Lcom/htc/video/VideoUtility/SoundEffectItem;
    const/4 v2, 0x0

    .line 830
    .local v2, item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    const/4 v4, 0x0

    .line 831
    .local v4, resetToNoEffect:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v5}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 833
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v5, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-ne v5, v10, :cond_5

    .line 834
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #headSetSetting:Lcom/htc/video/VideoUtility/SoundEffectItem;
    check-cast v0, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 831
    .restart local v0       #headSetSetting:Lcom/htc/video/VideoUtility/SoundEffectItem;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 837
    :cond_6
    iget-boolean v5, v0, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    if-eqz v5, :cond_8

    .line 839
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_7

    .line 841
    const/4 v4, 0x1

    .line 843
    :cond_7
    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 845
    const/4 v4, 0x1

    .line 848
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v5}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v5

    if-ge v1, v5, :cond_10

    .line 850
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    check-cast v2, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 851
    .restart local v2       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    if-eqz v4, :cond_d

    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v5, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-ne v5, v8, :cond_d

    .line 854
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    if-eqz v5, :cond_9

    .line 856
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    iput-boolean v9, v5, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 858
    :cond_9
    invoke-virtual {v2, v8}, Lcom/htc/video/VideoUtility/SoundEffectItem;->setSelected(Z)V

    .line 859
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 871
    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v5, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-ne v5, v10, :cond_c

    .line 873
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v5

    if-nez v5, :cond_c

    .line 875
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 877
    :cond_b
    iput-boolean v8, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 878
    const-string v5, "ViewVideo"

    const-string v6, "[initializeSoundEffectDialog] head set plugged"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 861
    :cond_d
    iget-boolean v5, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    if-eqz v5, :cond_a

    .line 863
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    if-eqz v5, :cond_e

    .line 865
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    iput-boolean v9, v5, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 867
    :cond_e
    invoke-virtual {v2, v8}, Lcom/htc/video/VideoUtility/SoundEffectItem;->setSelected(Z)V

    .line 868
    iput-object v2, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    goto :goto_3

    .line 882
    :cond_f
    iput-boolean v9, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    .line 883
    const-string v5, "ViewVideo"

    const-string v6, "[initializeSoundEffectDialog] head set not plugged"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 890
    .end local v0           #headSetSetting:Lcom/htc/video/VideoUtility/SoundEffectItem;
    .end local v1           #i:I
    .end local v2           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    .end local v3           #j:I
    .end local v4           #resetToNoEffect:Z
    :cond_10
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 892
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    :cond_11
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private setOnDismissListener(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 228
    return-void
.end method

.method private setVideoInfo()V
    .locals 4

    .prologue
    .line 2059
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/video/Common/Constants;->is3DVideoSupport(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    .line 2060
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->getStopViewStatus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mStopViewIsVisible:Z

    .line 2062
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v1, :cond_0

    .line 2064
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-boolean v2, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    iput-boolean v2, v1, Lcom/htc/video/HtcMediaController;->mIs3DVideo:Z

    .line 2065
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/video/Common/Constants;->isHighSpeedVideoSupport(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    .line 2066
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget v2, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    iput v2, v1, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 2067
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget v2, p0, Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I

    iput v2, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 2068
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mVideoName:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    .line 2069
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-boolean v2, p0, Lcom/htc/video/ViewVideo;->mStopViewIsVisible:Z

    iput-boolean v2, v1, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 2072
    :cond_0
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2073
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/htc/video/Common/Constants;->DISABLE_DLNA:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 2075
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/video/ViewVideo;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "DLNA_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2077
    :cond_1
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    .line 2081
    :cond_2
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVideoInfo] Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mVideoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mVideoMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    return-void
.end method

.method private showingDrmMessage(ILandroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .parameter "drmState"
    .parameter "playUri"
    .parameter "uri"

    .prologue
    .line 1797
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mShowDlg:Z

    if-nez v0, :cond_0

    .line 1799
    invoke-direct {p0, p2}, Lcom/htc/video/ViewVideo;->prepareVideo(Landroid/net/Uri;)V

    .line 1822
    :goto_0
    return-void

    .line 1802
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/video/ViewVideo;->mShowDlg:Z

    .line 1803
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    new-instance v1, Lcom/htc/video/ViewVideo$13;

    invoke-direct {v1, p0, p3, p2}, Lcom/htc/video/ViewVideo$13;-><init>(Lcom/htc/video/ViewVideo;Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {p0, p1, v0, v1}, Lcom/htc/video/VideoUtility/DrmManager;->showMessage(Landroid/content/Context;ILcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    goto :goto_0
.end method

.method private startVideoAfterPrepared()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 669
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->start()V

    .line 670
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v0, :cond_0

    .line 671
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->show(I)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->show()V

    goto :goto_0
.end method

.method private trimVideo()V
    .locals 8

    .prologue
    .line 3135
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    iget-boolean v5, v5, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsDisableTrim:Z

    if-eqz v5, :cond_0

    .line 3183
    :goto_0
    return-void

    .line 3138
    :cond_0
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3140
    .local v1, i:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 3142
    const-string v5, "ViewVideo"

    const-string v6, "[onOptionsItemSelected][CommonLocalMenuID.TRIM] Intent=0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3146
    :cond_1
    const/4 v4, 0x0

    .line 3147
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3149
    if-nez v4, :cond_2

    .line 3151
    const-string v5, "ViewVideo"

    const-string v6, "[onOptionsItemSelected][CommonLocalMenuID.TRIM] uri=0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3155
    :cond_2
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3156
    .local v0, compname:Landroid/content/ComponentName;
    const-string v2, ""

    .line 3157
    .local v2, sClassName:Ljava/lang/String;
    const-string v3, ""

    .line 3159
    .local v3, sShortClassName:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3161
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 3162
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    .line 3165
    :cond_3
    const-string v5, "ViewVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onOptionsItemSelected][CommonLocalMenuID.TRIM] class="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    if-eqz v3, :cond_4

    const-string v5, ".TabPluginDevice.LocalGridviewActivity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3169
    invoke-virtual {p0, v4}, Lcom/htc/video/ViewVideo;->SetSourcePathToResultActivity(Landroid/net/Uri;)V

    .line 3180
    :goto_1
    const-string v5, "ViewVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onOptionsItemSelected][CommonLocalMenuID.TRIM] path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->finish()V

    goto :goto_0

    .line 3171
    :cond_4
    if-eqz v3, :cond_5

    const-string v5, ".TabPluginDevice.ActivityFullscreen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3173
    invoke-virtual {p0, v4}, Lcom/htc/video/ViewVideo;->SetSourcePathToResultActivity(Landroid/net/Uri;)V

    goto :goto_1

    .line 3177
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p0, v5}, Lcom/htc/video/ViewVideo;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSoundEffectDialog()V
    .locals 13

    .prologue
    .line 3266
    const-string v10, "ViewVideo"

    const-string v11, "[updateSoundEffectDialog] Start ================================="

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    const-string v10, "ViewVideo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[updateSoundEffectDialog] Start show current effect = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const-string v10, "ViewVideo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[updateSoundEffectDialog] Start show current speaker effect = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    const/4 v1, 0x0

    .line 3270
    .local v1, hdmiCase:Z
    const/4 v0, 0x0

    .line 3271
    .local v0, btCase:Z
    const/4 v7, 0x0

    .line 3273
    .local v7, speakerCase:Z
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3276
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_0

    .line 3282
    const/4 v1, 0x1

    .line 3283
    const-string v10, "ViewVideo"

    const-string v11, "initializeSoundEffectDialog, HDMI is plugged. return."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    :goto_0
    return-void

    .line 3287
    :cond_0
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v10

    if-nez v10, :cond_2

    .line 3292
    const/4 v0, 0x1

    .line 3293
    const-string v10, "ViewVideo"

    const-string v11, "initializeSoundEffectDialog, BT is plugged. return."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3297
    :cond_2
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3299
    const/4 v7, 0x1

    .line 3300
    const-string v10, "ViewVideo"

    const-string v11, "initializeSoundEffectDialog, Nothing is plugged. return."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3304
    :cond_3
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v10}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v10

    new-array v5, v10, [Ljava/lang/String;

    .line 3305
    .local v5, mSoundEffectStyles:[Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v10}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v10

    new-array v4, v10, [I

    .line 3306
    .local v4, mSoundEffectIcon:[I
    const/4 v9, 0x0

    .line 3307
    .local v9, styleId:I
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 3309
    const/4 v8, 0x0

    .local v8, styleCount:I
    :goto_1
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v10}, Lcom/htc/video/VideoSoundEffectHelper;->numSupportCodec()I

    move-result v10

    if-ge v8, v10, :cond_4

    .line 3311
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v10, v8}, Lcom/htc/video/VideoSoundEffectHelper;->getSoundStringResource(I)I

    move-result v9

    .line 3312
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    .line 3313
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v10, v8}, Lcom/htc/video/VideoSoundEffectHelper;->getSoundIconResource(I)I

    move-result v10

    aput v10, v4, v8

    .line 3309
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3316
    :cond_4
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3318
    const/4 v3, 0x0

    .line 3319
    .local v3, item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v10, v5

    if-ge v2, v10, :cond_5

    .line 3321
    new-instance v3, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .end local v3           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    aget-object v10, v5, v2

    invoke-direct {v3, v10}, Lcom/htc/video/VideoUtility/SoundEffectItem;-><init>(Ljava/lang/String;)V

    .line 3323
    .restart local v3       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    aget v10, v4, v2

    iput v10, v3, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    .line 3324
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3319
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3328
    .end local v2           #i:I
    .end local v3           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    :cond_5
    const/4 v3, 0x0

    .line 3331
    .restart local v3       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    if-nez v7, :cond_8

    .line 3333
    iget v6, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    .line 3338
    .local v6, selEffect:I
    :goto_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    array-length v10, v5

    if-ge v2, v10, :cond_9

    .line 3340
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    check-cast v3, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 3341
    .restart local v3       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v10, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v10, v10, v2

    if-ne v10, v6, :cond_7

    .line 3343
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    if-eqz v10, :cond_6

    .line 3345
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    .line 3347
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/htc/video/VideoUtility/SoundEffectItem;->setSelected(Z)V

    .line 3348
    iput-object v3, p0, Lcom/htc/video/ViewVideo;->mSoundEffectSelectedItem:Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 3338
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3336
    .end local v2           #i:I
    .end local v6           #selEffect:I
    :cond_8
    iget v6, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    .restart local v6       #selEffect:I
    goto :goto_3

    .line 3353
    .restart local v2       #i:I
    :cond_9
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    if-eqz v10, :cond_a

    .line 3354
    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mSoundEffectAdapter:Lcom/htc/video/Common/SoundEffectAdapter;

    invoke-virtual {v10}, Lcom/htc/video/Common/SoundEffectAdapter;->notifyDataSetInvalidated()V

    .line 3355
    :cond_a
    const-string v10, "ViewVideo"

    const-string v11, "[updateSoundEffectDialog] End ================================="

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    const-string v10, "ViewVideo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[updateSoundEffectDialog] End show current effect = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    const-string v10, "ViewVideo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[updateSoundEffectDialog] Start show current speaker effect = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private videoOriAdj(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 258
    .local v0, currentOrientation:I
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[videoOriAdj] currentOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->m3Orientation:Z

    if-eqz v1, :cond_1

    .line 263
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 264
    iput v0, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 271
    if-ge p2, p1, :cond_2

    if-eq v0, v6, :cond_2

    .line 273
    iput v6, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    .line 274
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 275
    invoke-direct {p0, v5}, Lcom/htc/video/ViewVideo;->requestCorrectScreenOrieation(I)V

    .line 293
    :goto_1
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[videoOriAdj]  mCorrectOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_2
    if-le p2, p1, :cond_3

    if-eq v0, v4, :cond_3

    .line 279
    iput v4, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    .line 280
    invoke-direct {p0, v4}, Lcom/htc/video/ViewVideo;->requestCorrectScreenOrieation(I)V

    .line 281
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    goto :goto_1

    .line 284
    :cond_3
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 285
    iput v0, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    .line 286
    iget v1, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    if-ne v1, v4, :cond_4

    .line 287
    invoke-direct {p0, v4}, Lcom/htc/video/ViewVideo;->requestCorrectScreenOrieation(I)V

    goto :goto_1

    .line 290
    :cond_4
    invoke-direct {p0, v5}, Lcom/htc/video/ViewVideo;->requestCorrectScreenOrieation(I)V

    goto :goto_1
.end method


# virtual methods
.method public OnHdmiPlugReceiver(Lcom/htc/video/HdmiPlugReceiver;I)V
    .locals 4
    .parameter "caller"
    .parameter "bIsPluged"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 753
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-ne v2, v1, :cond_1

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HdmiAlbumLib;->IsDMRProhibit()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 755
    if-ne v2, p2, :cond_0

    .line 756
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HdmiAlbumLib;->DisableTVHdmi()V

    .line 788
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HdmiAlbumLib;->EnanbleTVHdmi()V

    goto :goto_0

    .line 765
    :cond_1
    if-ne v2, p2, :cond_2

    .line 768
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/htc/video/HdmiAlbumLib;->OnActivityStatusChange(I)I

    move-result v0

    .line 771
    .local v0, ret:I
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v3}, Lcom/htc/video/ViewVideo$VideoMediaController;->setPlaybackMode(I)V

    .line 773
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v3}, Lcom/htc/video/ViewVideo$VideoMediaController;->SetModeButton(Z)V

    .line 775
    invoke-direct {p0, v3, v3}, Lcom/htc/video/ViewVideo;->setHdmiSoundButton(ZZ)V

    goto :goto_0

    .line 783
    .end local v0           #ret:I
    :cond_2
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v2}, Lcom/htc/video/ViewVideo$VideoMediaController;->SetModeButton(Z)V

    .line 785
    invoke-direct {p0, v2, v3}, Lcom/htc/video/ViewVideo;->setHdmiSoundButton(ZZ)V

    goto :goto_0
.end method

.method public SetSourcePathToResultActivity(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 2324
    if-nez p1, :cond_0

    .line 2332
    :goto_0
    return-void

    .line 2327
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2329
    .local v0, i:Landroid/content/Intent;
    const-string v1, "data"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/video/ViewVideo;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "act"
    .parameter "sData"

    .prologue
    .line 2715
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    .local v0, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2725
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2727
    const-string v3, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2729
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2731
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2735
    const/16 v3, 0x13ba

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2737
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2158
    iget-boolean v2, p0, Lcom/htc/video/ViewVideo;->isDestroyed:Z

    if-eqz v2, :cond_0

    .line 2183
    :goto_0
    return v1

    .line 2164
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 2167
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/video/ViewVideo;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2174
    :goto_1
    iget-boolean v2, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    if-nez v2, :cond_1

    .line 2175
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViewVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dispatchKeyEvent] no dialog can be removed at dispatchKeyEvent(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2178
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mBackKeyPressed:Z

    .line 2179
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->onGoBack()V

    goto :goto_0

    .line 2183
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2542
    const/16 v0, 0x1398

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2544
    const-string v0, "DMR"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2545
    .local v1, dmr:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/video/VideoUtility/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 2547
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 2549
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "DLNA_SERVER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2550
    .local v2, serverID:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "Extras"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 2552
    .local v5, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2554
    if-nez v2, :cond_1

    .line 2556
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/video/ViewVideo;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 2557
    .local v6, filePath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2559
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v6, v0, v5}, Lcom/htc/video/VideoUtility/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2560
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->broadCastDMCInfo()V

    .line 2573
    .end local v1           #dmr:Ljava/lang/String;
    .end local v2           #serverID:Ljava/lang/String;
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v6           #filePath:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2565
    .restart local v1       #dmr:Ljava/lang/String;
    .restart local v2       #serverID:Ljava/lang/String;
    .restart local v5       #bundle:Landroid/os/Bundle;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_1
    const-string v0, "DLNA_CONTAINER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2566
    .local v3, container:Ljava/lang/String;
    const-string v0, "DLNA_CONTENT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, content:Ljava/lang/String;
    move-object v0, p0

    .line 2567
    invoke-static/range {v0 .. v5}, Lcom/htc/video/VideoUtility/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2568
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->broadCastDMCInfo()V

    goto :goto_0
.end method

.method public onCloseStopView(Z)V
    .locals 0
    .parameter "closeStopView"

    .prologue
    .line 2139
    iput-boolean p1, p0, Lcom/htc/video/ViewVideo;->mCloseStopView:Z

    .line 2140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v9, 0x4

    const-wide/16 v7, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x2

    .line 1959
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1960
    const-string v4, "ViewVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onConfigurationChanged] orientation is landscape = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->closeOptionsMenu()V

    .line 1964
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1966
    const/4 v0, 0x0

    .line 1967
    .local v0, isShowing:Z
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v1, :cond_0

    .line 1968
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->isShowing()Z

    move-result v0

    .line 1969
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->hide()V

    .line 1972
    :cond_0
    new-instance v1, Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-direct {v1, p0, p0, v3}, Lcom/htc/video/ViewVideo$VideoMediaController;-><init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    .line 1973
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, p0}, Lcom/htc/video/ViewVideo$VideoMediaController;->setControllerEventListener(Lcom/htc/video/HtcMediaController$ControllerEventListener;)V

    .line 1974
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v4, p0, Lcom/htc/video/ViewVideo;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    invoke-virtual {v1, v4}, Lcom/htc/video/ViewVideo$VideoMediaController;->setLayoutParamsCallback(Lcom/htc/video/HtcMediaController$LayoutParamsCallback;)V

    .line 1977
    sget-boolean v1, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    if-nez v1, :cond_1

    .line 1979
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iput-boolean v2, v1, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 1982
    :cond_1
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->setVideoInfo()V

    .line 1984
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    if-nez v1, :cond_9

    .line 1987
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1988
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1989
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1991
    :cond_2
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2018
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->m3Orientation:Z

    if-ne v1, v2, :cond_5

    .line 2020
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget-object v4, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v4}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 2022
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    .line 2024
    if-eqz v0, :cond_5

    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    if-eqz v1, :cond_5

    .line 2025
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->hide()V

    .line 2027
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2028
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2031
    :cond_4
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2037
    :cond_5
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v1, :cond_6

    .line 2038
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2039
    iget v1, p0, Lcom/htc/video/ViewVideo;->mBeatsEffect:I

    if-ne v1, v9, :cond_d

    .line 2040
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v6}, Lcom/htc/video/ViewVideo$VideoMediaController;->updateBeatsIndicator(I)V

    .line 2051
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v1, p1}, Lcom/htc/video/HtcVideoView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2054
    :cond_7
    const-string v1, "ViewVideo"

    const-string v2, "[ViewVideo] onConfigurationChanged is called."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    return-void

    .end local v0           #isShowing:Z
    :cond_8
    move v1, v3

    .line 1960
    goto/16 :goto_0

    .line 1993
    .restart local v0       #isShowing:Z
    :cond_9
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    if-ne v1, v9, :cond_b

    .line 1994
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget-object v4, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v4}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 1996
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1997
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1999
    :cond_a
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 2009
    :cond_b
    if-eqz v0, :cond_3

    .line 2010
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2011
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    :cond_c
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2042
    :cond_d
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v2}, Lcom/htc/video/ViewVideo$VideoMediaController;->updateBeatsIndicator(I)V

    goto :goto_2

    .line 2045
    :cond_e
    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v2, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v3}, Lcom/htc/video/ViewVideo$VideoMediaController;->updateBeatsIndicator(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 902
    const-string v9, "ViewVideo"

    const-string v10, "[onCreate]: Begin"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    const/16 v11, 0x400

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 905
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mHasLaunchedBrowsingMode:Z

    .line 906
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/htc/video/ViewVideo;->setVolumeControlStream(I)V

    .line 907
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v9, p0, Lcom/htc/video/ViewVideo;->mPopupMaxWidth:I

    .line 908
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 913
    const-string v9, "ro.build.description"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 914
    .local v7, romId:Ljava/lang/String;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    .line 915
    if-eqz v7, :cond_0

    .line 919
    :try_start_0
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v3, v9, v10

    .line 920
    .local v3, parsedID:Ljava/lang/String;
    const-string v9, "706"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 922
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    .line 923
    const-string v9, "ViewVideo"

    const-string v10, "[onCreate]: For NEL ROM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    .end local v3           #parsedID:Ljava/lang/String;
    :cond_0
    :goto_0
    const v9, 0x7fffffff

    iput v9, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    .line 936
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mContentResolver:Landroid/content/ContentResolver;

    .line 938
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/video/ViewVideo;->setDefaultKeyMode(I)V

    .line 939
    const v9, 0x7f030006

    invoke-virtual {p0, v9}, Lcom/htc/video/ViewVideo;->setContentView(I)V

    .line 941
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "DLNA_SERVER"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    .line 943
    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    if-eqz v9, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "DLNA_CONTENT_TITLE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoName:Ljava/lang/String;

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 949
    .local v0, cpn:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 951
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, "com.htc.album"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 955
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mRequestFromInside:Z

    .line 958
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    new-instance v9, Lcom/htc/video/ViewVideo$8;

    invoke-direct {v9, p0}, Lcom/htc/video/ViewVideo$8;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 978
    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v9, :cond_3

    .line 980
    new-instance v9, Lcom/htc/video/ViewVideo$9;

    invoke-direct {v9, p0}, Lcom/htc/video/ViewVideo$9;-><init>(Lcom/htc/video/ViewVideo;)V

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mInterruptingEventsReceiver:Landroid/content/BroadcastReceiver;

    .line 1006
    :cond_3
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "launcher"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/video/ViewVideo;->mLauncher:I

    .line 1007
    const-string v9, "ViewVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] launcher: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/video/ViewVideo;->mLauncher:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->m3Orientation:Z

    if-nez v9, :cond_4

    .line 1013
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/video/ViewVideo;->requestCorrectScreenOrieation(I)V

    .line 1017
    :cond_4
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1020
    iget v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1022
    iget v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1023
    iget v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v9, v9, -0x5

    iput v9, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1028
    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->m3Orientation:Z

    if-eqz v9, :cond_5

    .line 1030
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1031
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v9, "playback_mode"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1032
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1035
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_5
    new-instance v9, Lcom/htc/video/ViewVideo$VideoMediaController;

    iget v10, p0, Lcom/htc/video/ViewVideo;->mLauncher:I

    invoke-direct {v9, p0, p0, v10}, Lcom/htc/video/ViewVideo$VideoMediaController;-><init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    .line 1036
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v9, p0}, Lcom/htc/video/ViewVideo$VideoMediaController;->setControllerEventListener(Lcom/htc/video/HtcMediaController$ControllerEventListener;)V

    .line 1037
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    invoke-virtual {v9, v10}, Lcom/htc/video/ViewVideo$VideoMediaController;->setLayoutParamsCallback(Lcom/htc/video/HtcMediaController$LayoutParamsCallback;)V

    .line 1039
    const v9, 0x7f09001b

    invoke-virtual {p0, v9}, Lcom/htc/video/ViewVideo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/video/HtcVideoView;

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    .line 1040
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v9, v10}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 1041
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    new-instance v10, Lcom/htc/video/ViewVideo$10;

    invoke-direct {v10, p0}, Lcom/htc/video/ViewVideo$10;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v9, v10}, Lcom/htc/video/HtcVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1075
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    new-instance v10, Lcom/htc/video/ViewVideo$11;

    invoke-direct {v10, p0}, Lcom/htc/video/ViewVideo$11;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v9, v10}, Lcom/htc/video/HtcVideoView;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1096
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    new-instance v10, Lcom/htc/video/ViewVideo$12;

    invoke-direct {v10, p0}, Lcom/htc/video/ViewVideo$12;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v9, v10}, Lcom/htc/video/HtcVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1264
    sget-boolean v9, Lcom/htc/video/Common/Constants;->FOR_CMCC_PROJECT:Z

    if-eqz v9, :cond_6

    .line 1266
    const v9, 0x7f09001c

    invoke-virtual {p0, v9}, Lcom/htc/video/ViewVideo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mStopView:Landroid/widget/RelativeLayout;

    .line 1268
    const v9, 0x7f09001d

    invoke-virtual {p0, v9}, Lcom/htc/video/ViewVideo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mStopViewButton:Landroid/widget/ImageButton;

    .line 1269
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mStopViewButton:Landroid/widget/ImageButton;

    const v10, 0x7f020015

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1270
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mStopViewButton:Landroid/widget/ImageButton;

    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v10, v10, Lcom/htc/video/HtcMediaController;->mStopResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/video/ViewVideo$VideoMediaController;->setStopViewStatus(Z)V

    .line 1280
    :cond_6
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1282
    .local v8, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    if-nez v9, :cond_7

    .line 1283
    invoke-static {p0, v8}, Lcom/htc/video/VideoUtility/VideoData;->queryFromDatabase(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/video/VideoUtility/VideoData;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    .line 1285
    :cond_7
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    if-eqz v9, :cond_d

    .line 1287
    const-string v9, "ViewVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] OpenVideoCompletion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v11}, Lcom/htc/video/VideoUtility/VideoData;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v9}, Lcom/htc/video/VideoUtility/VideoData;->isDrm()Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    .line 1289
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-direct {p0, v9}, Lcom/htc/video/ViewVideo;->checkDrmState(Lcom/htc/video/VideoUtility/VideoData;)I

    move-result v9

    iput v9, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    .line 1290
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v9}, Lcom/htc/video/VideoUtility/VideoData;->getDrmType()I

    move-result v9

    iput v9, p0, Lcom/htc/video/ViewVideo;->mDrmType:I

    .line 1291
    invoke-direct {p0, v8}, Lcom/htc/video/ViewVideo;->handleDrmVideo(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mDrmPlayedUri:Landroid/net/Uri;

    .line 1292
    iput-object v8, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    .line 1293
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v9}, Lcom/htc/video/VideoUtility/VideoData;->getMimeType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoMimeType:Ljava/lang/String;

    .line 1294
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoData:Lcom/htc/video/VideoUtility/VideoData;

    invoke-virtual {v9}, Lcom/htc/video/VideoUtility/VideoData;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoName:Ljava/lang/String;

    .line 1323
    :goto_2
    sget-boolean v9, Lcom/htc/video/Common/Constants;->FOR_CMCC_PROJECT:Z

    if-eqz v9, :cond_8

    .line 1325
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1326
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string v9, "VIEWVIDEO_ISREPEAT"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/video/ViewVideo;->mIsRepeat:Z

    .line 1327
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "VIEWVIDEO_ISREPEAT"

    iget-boolean v11, p0, Lcom/htc/video/ViewVideo;->mIsRepeat:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :cond_8
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->setVideoInfo()V

    .line 1334
    sget-boolean v9, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    if-eqz v9, :cond_9

    .line 1336
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 1340
    :cond_9
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/video/HdmiAlbumLib;->OnActivityStatusChange(I)I

    .line 1343
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIDevice()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mHdmiPlugReceiver:Lcom/htc/video/HdmiPlugReceiver;

    if-eqz v9, :cond_b

    .line 1345
    const/4 v9, 0x1

    iget-boolean v10, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-ne v9, v10, :cond_a

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/video/HdmiAlbumLib;->IsDMRProhibit()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 1347
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/video/HdmiAlbumLib;->DisableTVHdmi()V

    .line 1350
    :cond_a
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mHdmiPlugReceiver:Lcom/htc/video/HdmiPlugReceiver;

    invoke-virtual {v9, p0, p0}, Lcom/htc/video/HdmiPlugReceiver;->InitInstance(Landroid/app/Activity;Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    .line 1353
    :cond_b
    new-instance v9, Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-direct {v9}, Lcom/htc/widget/HtcPopupWindowWrapper;-><init>()V

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    .line 1354
    new-instance v9, Lcom/htc/video/ChooseMoreDialogAdapter;

    invoke-direct {v9, p0}, Lcom/htc/video/ChooseMoreDialogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    .line 1356
    invoke-static {p0}, Lcom/htc/video/Common/Constants;->isTrimExists(Landroid/app/Activity;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mRequestFromInside:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    if-nez v9, :cond_e

    .line 1357
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsDisableTrim:Z

    .line 1361
    :goto_3
    sget-boolean v9, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    if-nez v9, :cond_f

    .line 1362
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsSEI3DMode:Z

    .line 1366
    :goto_4
    iget-boolean v9, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    if-eqz v9, :cond_10

    .line 1367
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsFromDLNA:Z

    .line 1372
    :goto_5
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    invoke-virtual {v9, p0}, Lcom/htc/video/ChooseMoreDialogAdapter;->refreshItemResource(Landroid/content/Context;)V

    .line 1373
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    iget-object v10, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v10}, Lcom/htc/video/ViewVideo$VideoMediaController;->getPlaybackMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/video/ChooseMoreDialogAdapter;->changeMode(I)V

    .line 1374
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    invoke-virtual {v9}, Lcom/htc/video/ChooseMoreDialogAdapter;->getMoreItems()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mMoreCompare:[Ljava/lang/String;

    .line 1376
    const-string v9, "ViewVideo"

    const-string v10, "[onCreate]: End"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    return-void

    .line 926
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 928
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "ViewVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    .end local v1           #e:Ljava/lang/Exception;
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1298
    .restart local v0       #cpn:Landroid/content/ComponentName;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_d
    const-string v9, "ViewVideo"

    const-string v10, "[onCreate] Video is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1303
    .local v6, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v6, p0, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1304
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/video/ViewVideo;->mVideoMimeType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1314
    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1316
    :catch_1
    move-exception v1

    .line 1318
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "ViewVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1306
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1308
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "ViewVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1314
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 1316
    :catch_3
    move-exception v1

    .line 1318
    const-string v9, "ViewVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onCreate] Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1312
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1314
    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1319
    :goto_6
    throw v9

    .line 1316
    :catch_4
    move-exception v1

    .line 1318
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "ViewVideo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onCreate] Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1359
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_e
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsDisableTrim:Z

    goto/16 :goto_3

    .line 1364
    :cond_f
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsSEI3DMode:Z

    goto/16 :goto_4

    .line 1369
    :cond_10
    iget-object v9, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/video/ChooseMoreDialogAdapter;->mIsFromDLNA:Z

    goto/16 :goto_5
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1863
    const/4 v0, 0x0

    .line 1864
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v2, v0

    .line 1893
    :goto_1
    return-object v2

    .line 1867
    :pswitch_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1868
    .local v1, pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1869
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1870
    new-instance v3, Lcom/htc/video/ViewVideo$14;

    invoke-direct {v3, p0}, Lcom/htc/video/ViewVideo$14;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1879
    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 1880
    iget-object v3, p0, Lcom/htc/video/ViewVideo;->mLoadingDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1882
    :cond_1
    iput-object v1, p0, Lcom/htc/video/ViewVideo;->mLoadingDialog:Landroid/app/Dialog;

    .line 1883
    move-object v0, v1

    .line 1884
    goto :goto_0

    .line 1886
    .end local v1           #pDialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->createSoundEffectDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 1887
    .local v2, soundEffectDialog:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    goto :goto_1

    .line 1864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDLNASupportRange()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2124
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2125
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 2133
    :cond_0
    :goto_0
    return v2

    .line 2127
    :cond_1
    const-string v0, "htc-dlna"

    .line 2130
    .local v0, dlnaScheme:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2131
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1615
    iput-boolean v2, p0, Lcom/htc/video/ViewVideo;->isDestroyed:Z

    .line 1617
    const-string v0, "ViewVideo"

    const-string v1, "[onDestroy]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1620
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/video/HdmiAlbumLib;->OnActivityStatusChange(I)I

    .line 1622
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-ne v0, v2, :cond_0

    .line 1623
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->EnanbleTVHdmi()V

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHdmiPlugReceiver:Lcom/htc/video/HdmiPlugReceiver;

    if-eqz v0, :cond_1

    .line 1627
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHdmiPlugReceiver:Lcom/htc/video/HdmiPlugReceiver;

    invoke-virtual {v0}, Lcom/htc/video/HdmiPlugReceiver;->DeInitInstance()Z

    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    if-eqz v0, :cond_2

    .line 1631
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->hide()V

    .line 1634
    :cond_2
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectThread:Lcom/htc/video/ViewVideo$SoundEffectThread;

    if-eqz v0, :cond_3

    .line 1635
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectThread:Lcom/htc/video/ViewVideo$SoundEffectThread;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$SoundEffectThread;->quit()Z

    .line 1638
    :cond_3
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1639
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1642
    :cond_4
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-eqz v0, :cond_5

    .line 1643
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-virtual {v0}, Lcom/htc/video/VideoSoundEffectHelper;->releaseEffectArray()V

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    .line 1647
    :cond_5
    const-string v0, "ViewVideo"

    const-string v1, "[onDestroy]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-void
.end method

.method public onFfwdTarget()V
    .locals 0

    .prologue
    .line 2265
    return-void
.end method

.method public onFinishInflate(ILandroid/view/View;)V
    .locals 0
    .parameter "resourceId"
    .parameter "v"

    .prologue
    .line 2320
    return-void
.end method

.method public onGoBack()V
    .locals 1

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mDMP:Z

    if-eqz v0, :cond_0

    .line 2114
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->launchFolderList()V

    .line 2116
    :cond_0
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 2117
    return-void
.end method

.method public onMenuPress()V
    .locals 0

    .prologue
    .line 2283
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->openOptionsMenu()V

    .line 2284
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2534
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1469
    const-string v0, "ViewVideo"

    const-string v1, "[onPause]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1473
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "headsetowner"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1475
    const-string v0, "ViewVideo::onPause"

    invoke-static {v0}, Lcom/htc/video/Common/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/video/ViewVideo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1481
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mInterruptingEventsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/video/ViewVideo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mForce3DDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1491
    :cond_1
    sget-boolean v0, Lcom/htc/video/Common/Constants;->IS_SOUND_EFFECT_VIDEO_SUPPORT:Z

    if-eqz v0, :cond_4

    .line 1494
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-eqz v0, :cond_2

    .line 1496
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->closeVideoSoundEffectStream()V

    .line 1497
    iput-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    .line 1500
    :cond_2
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 1502
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1505
    :cond_3
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;

    if-eqz v0, :cond_4

    .line 1507
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;

    invoke-virtual {v0, p0}, Lcom/htc/video/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    .line 1508
    iput-object v5, p0, Lcom/htc/video/ViewVideo;->mHeadSetHelper:Lcom/htc/video/HeadSetHelper;

    .line 1515
    :cond_4
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->clearAsycThread()V

    .line 1516
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mBackKeyPressed:Z

    if-eqz v0, :cond_b

    .line 1518
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->stopPlayback()V

    .line 1519
    iput v3, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    .line 1544
    :cond_5
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/video/ViewVideo;->registerVideoPlaybackReceiver(Z)V

    .line 1548
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->unregisterRenewRightListener()V

    .line 1557
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    if-eqz v0, :cond_6

    .line 1559
    iput-boolean v3, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    .line 1562
    :cond_6
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/video/HdmiAlbumLib;->OnActivityStatusChange(I)I

    .line 1564
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-ne v0, v4, :cond_7

    .line 1566
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->EnanbleTVHdmi()V

    .line 1569
    :cond_7
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1570
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismissWithoutAnimation()V

    .line 1572
    :cond_8
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1574
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1575
    const-string v0, "ViewVideo"

    const-string v1, "[onPause]: Remove MSGID_VIDEO_PLAY Message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_9
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    if-eqz v0, :cond_a

    .line 1579
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcVideoView;->setVisibility(I)V

    .line 1581
    :cond_a
    const-string v0, "ViewVideo"

    const-string v1, "[onPause]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return-void

    .line 1523
    :cond_b
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1525
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    .line 1528
    :cond_c
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v0, :cond_d

    .line 1530
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/video/ViewVideo;->mShouldAutoResume:Z

    .line 1531
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    if-nez v0, :cond_5

    .line 1533
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->stopPlayback()V

    goto :goto_0

    .line 1538
    :cond_d
    iget v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1539
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->stopPlayback()V

    goto/16 :goto_0
.end method

.method public onPauseTarget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2238
    iget v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 2240
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->getStopViewStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/video/ViewVideo;->mStopViewIsVisible:Z

    .line 2241
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mStopView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mStopViewIsVisible:Z

    if-eqz v0, :cond_2

    .line 2243
    const-string v0, "ViewVideo"

    const-string v1, "[onPauseTarget] Stop button view: VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->hide()V

    .line 2245
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mStopView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2246
    iput v2, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    .line 2253
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/htc/video/Common/Constants;->IS_SOUND_EFFECT_VIDEO_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 2256
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2258
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2261
    :cond_1
    return-void

    .line 2248
    :cond_2
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    goto :goto_0
.end method

.method public onPlayTarget()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2191
    iget v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 2193
    sget-boolean v0, Lcom/htc/video/Common/Constants;->FOR_CMCC_PROJECT:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mCloseStopView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mStopView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2195
    const-string v0, "ViewVideo"

    const-string v1, "[onPlayTarget] Stop button view: GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iput-boolean v3, p0, Lcom/htc/video/ViewVideo;->mCloseStopView:Z

    .line 2199
    new-instance v0, Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-direct {v0, p0, p0, v3}, Lcom/htc/video/ViewVideo$VideoMediaController;-><init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    .line 2200
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0, p0}, Lcom/htc/video/ViewVideo$VideoMediaController;->setControllerEventListener(Lcom/htc/video/HtcMediaController$ControllerEventListener;)V

    .line 2201
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    invoke-virtual {v0, v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->setLayoutParamsCallback(Lcom/htc/video/HtcMediaController$LayoutParamsCallback;)V

    .line 2203
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcVideoView;->setMediaController(Lcom/htc/video/HtcMediaController;)V

    .line 2205
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->setVideoInfo()V

    .line 2207
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2211
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2213
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mStopView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2214
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->start()V

    .line 2217
    :cond_1
    sget-boolean v0, Lcom/htc/video/Common/Constants;->IS_SOUND_EFFECT_VIDEO_SUPPORT:Z

    if-eqz v0, :cond_2

    .line 2219
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v0

    if-ne v4, v0, :cond_3

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2234
    :cond_2
    :goto_0
    return v4

    .line 2230
    :cond_3
    iget v0, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    invoke-direct {p0, v0, v3, v3}, Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V

    goto :goto_0
.end method

.method public onPlaybackMode()V
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->requestLayout()V

    .line 2279
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1898
    packed-switch p1, :pswitch_data_0

    .line 1906
    :goto_0
    return-void

    .line 1901
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->initializeSoundEffectDialog()V

    goto :goto_0

    .line 1898
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2387
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePopupMenu(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    iget-object v1, p0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3056
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setArchorView(Landroid/view/View;)V

    .line 3058
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    new-instance v1, Lcom/htc/video/ViewVideo$23;

    invoke-direct {v1, p0}, Lcom/htc/video/ViewVideo$23;-><init>(Lcom/htc/video/ViewVideo;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcPopupWindowWrapper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3123
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 1447
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1449
    const-string v1, "playback_position"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    .line 1451
    const-string v1, "playback_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1452
    .local v0, isPaused:Z
    if-eqz v0, :cond_1

    .line 1453
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1459
    :goto_0
    const-string v1, "FOR_NEL_TEST"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    .line 1460
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v1, :cond_0

    .line 1462
    const-string v1, "alarm_broadcast_caught"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    .line 1464
    :cond_0
    return-void

    .line 1456
    :cond_1
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1653
    const-string v5, "ViewVideo"

    const-string v6, "[onResume]: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1657
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "headsetowner"

    const-string v7, "htcalbum"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1659
    const-string v5, "ViewVideo::onResume"

    invoke-static {v5}, Lcom/htc/video/Common/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 1663
    iget v5, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_0

    .line 1666
    const/4 v3, 0x0

    .line 1667
    .local v3, request:I
    iget v5, p0, Lcom/htc/video/ViewVideo;->mCorrectOrientation:I

    if-ne v5, v8, :cond_3

    .line 1669
    const/4 v3, 0x1

    .line 1675
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/video/ViewVideo;->requestCorrectScreenOrieation(I)V

    .line 1676
    iget v5, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    .line 1686
    .end local v3           #request:I
    :cond_0
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mRenewRightListener:Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    invoke-static {v5}, Lcom/htc/video/VideoUtility/DrmManager;->registerRenewRightListener(Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;)V

    .line 1691
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1693
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1694
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/htc/video/ViewVideo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1699
    iget-boolean v5, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v5, :cond_1

    .line 1701
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1702
    .local v2, interruptingEventsFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1703
    const-string v5, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1704
    const-string v5, "android.message.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1705
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    const-string v5, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1707
    const-string v5, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1708
    const-string v5, "com.htc.android.worldclock.ALARM_ALERT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1709
    const-string v5, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1710
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mInterruptingEventsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/htc/video/ViewVideo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1713
    .end local v2           #interruptingEventsFilter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v4, 0x0

    .line 1714
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1715
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 1716
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1718
    :cond_2
    if-nez v4, :cond_4

    .line 1720
    const-string v5, "ViewVideo"

    const-string v6, "[onResume]: null uri"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {p0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 1785
    :goto_1
    return-void

    .line 1673
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v3       #request:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1728
    .end local v3           #request:I
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_4
    iget-boolean v5, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-eqz v5, :cond_a

    .line 1730
    const-string v5, "ViewVideo"

    const-string v6, "[onResume]: DRM Video"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget v5, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    if-nez v5, :cond_5

    .line 1736
    iget v5, p0, Lcom/htc/video/ViewVideo;->mDrmType:I

    if-eq v5, v8, :cond_9

    .line 1738
    iget v5, p0, Lcom/htc/video/ViewVideo;->mDrmState:I

    iget-object v6, p0, Lcom/htc/video/ViewVideo;->mDrmPlayedUri:Landroid/net/Uri;

    invoke-direct {p0, v5, v6, v4}, Lcom/htc/video/ViewVideo;->showingDrmMessage(ILandroid/net/Uri;Landroid/net/Uri;)V

    .line 1759
    :cond_5
    :goto_2
    invoke-direct {p0, v8}, Lcom/htc/video/ViewVideo;->registerVideoPlaybackReceiver(Z)V

    .line 1762
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/htc/video/HdmiAlbumLib;->OnActivityStatusChange(I)I

    .line 1765
    sget-boolean v5, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    if-nez v5, :cond_6

    .line 1767
    invoke-static {v9}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 1768
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;

    iput-boolean v8, v5, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 1772
    :cond_6
    sget-boolean v5, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    if-ne v5, v8, :cond_7

    .line 1774
    invoke-static {v10}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 1778
    :cond_7
    iput v9, p0, Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I

    .line 1779
    invoke-direct {p0}, Lcom/htc/video/ViewVideo;->setVideoInfo()V

    .line 1781
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    if-eqz v5, :cond_8

    .line 1782
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v5, v9}, Lcom/htc/video/HtcVideoView;->setVisibility(I)V

    .line 1784
    :cond_8
    const-string v5, "ViewVideo"

    const-string v6, "[onResume]: End"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1742
    :cond_9
    iput-object v4, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    .line 1743
    iget-object v5, p0, Lcom/htc/video/ViewVideo;->mDrmPlayedUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/htc/video/ViewVideo;->prepareVideo(Landroid/net/Uri;)V

    goto :goto_2

    .line 1754
    :cond_a
    const-string v5, "ViewVideo"

    const-string v6, "[onResume]: Non DRM Video"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;

    .line 1756
    invoke-direct {p0, v4}, Lcom/htc/video/ViewVideo;->prepareVideo(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public onRewTarget()V
    .locals 0

    .prologue
    .line 2269
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1431
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1433
    const-string v1, "playback_position"

    iget v2, p0, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1434
    iget v1, p0, Lcom/htc/video/ViewVideo;->mPausePlayReason:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1435
    .local v0, isPaused:Z
    :goto_0
    const-string v1, "playback_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1437
    const-string v1, "FOR_NEL_TEST"

    iget-boolean v2, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1438
    iget-boolean v1, p0, Lcom/htc/video/ViewVideo;->mForNELFlag:Z

    if-eqz v1, :cond_0

    .line 1440
    const-string v1, "alarm_broadcast_caught"

    iget-boolean v2, p0, Lcom/htc/video/ViewVideo;->mKeepPlayByAlarm:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1442
    :cond_0
    return-void

    .line 1434
    .end local v0           #isPaused:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettings()V
    .locals 0

    .prologue
    .line 2273
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1587
    const-string v0, "ViewVideo"

    const-string v1, "[onStop]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1589
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->onEnd()V

    .line 1591
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/video/HdmiAlbumLib;->OnActivityStatusChange(I)I

    .line 1593
    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsDrm:Z

    if-ne v0, v3, :cond_0

    .line 1595
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->EnanbleTVHdmi()V

    .line 1599
    :cond_0
    sget-boolean v0, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/video/ViewVideo;->mIsSupport3DMimeType:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    if-ne v0, v3, :cond_1

    .line 1601
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1605
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismissWithoutAnimation()V

    .line 1607
    :cond_2
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1608
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    invoke-static {v2, v2}, Lcom/htc/video/VideoSoundEffectHelper;->updateBeatsEffectStatus(ZZ)V

    .line 1609
    :cond_3
    const-string v0, "ViewVideo"

    const-string v1, "[onStop]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return-void
.end method

.method public onUpdateHighSpeedStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2149
    iput p1, p0, Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I

    .line 2150
    return-void
.end method

.method public onUpdateStereoStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2144
    iput p1, p0, Lcom/htc/video/ViewVideo;->mStereoModeStatus:I

    .line 2145
    return-void
.end method

.method public onVideoSoundEffect(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    if-nez v0, :cond_0

    .line 2289
    const-string v0, "ViewVideo"

    const-string v1, "[onVideoSoundEffect] mVideoSoundEffectHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :goto_0
    return-void

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;

    iget v1, p0, Lcom/htc/video/ViewVideo;->mCurrentEffect:I

    invoke-virtual {v0, p0, v1}, Lcom/htc/video/VideoSoundEffectHelper;->getNextRecommendffect(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V

    goto :goto_0
.end method

.method public selectPlayer()V
    .locals 3

    .prologue
    .line 2743
    const/4 v0, 0x2

    const/16 v1, 0x1398

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/htc/video/VideoUtility/DMCHelper;->pickDMR(Landroid/app/Activity;IILjava/lang/Object;)V

    .line 2744
    return-void
.end method

.method public sendStopFMRadioIntent()V
    .locals 3

    .prologue
    .line 2653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2654
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2655
    invoke-virtual {p0, v0}, Lcom/htc/video/ViewVideo;->sendBroadcast(Landroid/content/Intent;)V

    .line 2656
    return-void
.end method

.method public showPopupMenu(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 3127
    if-eqz p1, :cond_0

    .line 3128
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->showPopupWindow()V

    .line 3131
    :goto_0
    return-void

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo;->mMenuPopup:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismissWithoutAnimation()V

    goto :goto_0
.end method
