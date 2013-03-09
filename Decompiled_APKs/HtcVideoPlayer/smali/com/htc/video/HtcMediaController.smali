.class public Lcom/htc/video/HtcMediaController;
.super Landroid/widget/FrameLayout;
.source "HtcMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/HtcMediaController$MediaPlayerControl;,
        Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;,
        Lcom/htc/video/HtcMediaController$LayoutParamsCallback;,
        Lcom/htc/video/HtcMediaController$ControllerEventListener;
    }
.end annotation


# static fields
.field protected static final BEATS_ON:I = 0x2

.field protected static final DISABLED_BEATS:I = 0x1

.field protected static final FADE_OUT:I = 0x1

.field public static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field protected static final LEVEL_FORWARD_SPEED_1:I = 0x1

.field protected static final LEVEL_FORWARD_SPEED_2:I = 0x2

.field protected static final LEVEL_NORMAL_SPEED:I = 0x0

.field protected static final LEVEL_REWIND_SPEED_1:I = -0x1

.field protected static final LEVEL_REWIND_SPEED_2:I = -0x2

.field protected static final MSG_FADE_OUT:I = 0x1

.field private static final MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x4

.field protected static final MSG_RESET_TO_3D_SBS_STATUS:I = 0x5

.field protected static final MSG_SHOW_PROGRESS:I = 0x2

.field protected static final MSG_UPDATE_BUTTON:I = 0x3

.field protected static final NO_BEATS:I = 0x0

.field protected static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I = 0x1f4

.field protected static final UPDATE_BUTTON:I = 0x3

.field public static final sDefaultTimeout:I = 0x1388


# instance fields
.field private final STOP_BUTTON_FOR_CMCC:Ljava/lang/String;

.field protected mAnchor:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mCurrentBeatsMode:I

.field private mCurrentTime:Landroid/widget/TextView;

.field protected mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field protected mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

.field private mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

.field protected mFastForwardListener:Landroid/view/View$OnClickListener;

.field private mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

.field protected mFastRewindListener:Landroid/view/View$OnClickListener;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field protected mFromXml:Z

.field protected mGoBack:Landroid/widget/ImageButton;

.field private mGoBackType:I

.field protected mHandler:Landroid/os/Handler;

.field private mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field protected mHighSpeedStatus:I

.field private mImgBeats:Lcom/htc/widget/HeaderBarImage;

.field protected mIs3DVideo:Z

.field protected mIsHighSpeedVideo:Z

.field protected mIsResetByResume:Z

.field protected mIsStopFullView:Z

.field protected mIsSupportDMC:Z

.field private mIsTotalTimeMoreThanHour:Z

.field private mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

.field protected mListenersSet:Z

.field private mModeButton:Landroid/widget/ImageButton;

.field private mNewPosition:J

.field protected mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field protected mPauseButton:Lcom/htc/widget/HtcFooterButton;

.field protected mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayModeToast:Landroid/widget/Toast;

.field private mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

.field private mPrePlayState:Z

.field protected mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Lcom/htc/widget/HtcSeekBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field protected mRoot:Landroid/view/View;

.field private mSeekFlag:Z

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekPosition:J

.field protected mSettingButton:Landroid/widget/ImageButton;

.field private mSettingListener:Landroid/view/View$OnClickListener;

.field protected mShowing:Z

.field protected mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

.field protected mStereoConvertListener:Landroid/view/View$OnClickListener;

.field protected mStereoStatus:I

.field protected mStopButton:Lcom/htc/widget/HtcFooterButton;

.field protected mStopListener:Landroid/view/View$OnClickListener;

.field protected mStopResumeListener:Landroid/view/View$OnClickListener;

.field protected mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mVideoName:Ljava/lang/String;

.field protected mWindow:Landroid/view/Window;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mGoBackType:I

    .line 70
    const-string v0, "StopView"

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->STOP_BUTTON_FOR_CMCC:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 83
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 85
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    .line 89
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIs3DVideo:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 93
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    .line 108
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    .line 109
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mListenersSet:Z

    .line 118
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStopButton:Lcom/htc/widget/HtcFooterButton;

    .line 120
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    .line 123
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    .line 124
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    .line 125
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    .line 126
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 127
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    .line 132
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mPlayModeToast:Landroid/widget/Toast;

    .line 186
    new-instance v0, Lcom/htc/video/HtcMediaController$1;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$1;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 938
    new-instance v0, Lcom/htc/video/HtcMediaController$6;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$6;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    .line 1046
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsTotalTimeMoreThanHour:Z

    .line 1103
    new-instance v0, Lcom/htc/video/HtcMediaController$7;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$7;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertListener:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/htc/video/HtcMediaController$8;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$8;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopResumeListener:Landroid/view/View$OnClickListener;

    .line 1152
    new-instance v0, Lcom/htc/video/HtcMediaController$9;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$9;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopListener:Landroid/view/View$OnClickListener;

    .line 1165
    new-instance v0, Lcom/htc/video/HtcMediaController$10;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$10;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardListener:Landroid/view/View$OnClickListener;

    .line 1202
    new-instance v0, Lcom/htc/video/HtcMediaController$11;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$11;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindListener:Landroid/view/View$OnClickListener;

    .line 1240
    new-instance v0, Lcom/htc/video/HtcMediaController$12;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$12;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1398
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mNewPosition:J

    .line 1399
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mSeekPosition:J

    .line 1400
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mSeekFlag:Z

    .line 1401
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mPrePlayState:Z

    .line 1403
    new-instance v0, Lcom/htc/video/HtcMediaController$13;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$13;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1610
    new-instance v0, Lcom/htc/video/HtcMediaController$14;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$14;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 1629
    new-instance v0, Lcom/htc/video/HtcMediaController$15;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$15;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 155
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->initFloatingWindow()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "goBackType"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mGoBackType:I

    .line 70
    const-string v0, "StopView"

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->STOP_BUTTON_FOR_CMCC:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 83
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 85
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    .line 89
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIs3DVideo:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 93
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    .line 108
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    .line 109
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mListenersSet:Z

    .line 118
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStopButton:Lcom/htc/widget/HtcFooterButton;

    .line 120
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    .line 123
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    .line 124
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    .line 125
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    .line 126
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 127
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    .line 132
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mPlayModeToast:Landroid/widget/Toast;

    .line 186
    new-instance v0, Lcom/htc/video/HtcMediaController$1;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$1;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 938
    new-instance v0, Lcom/htc/video/HtcMediaController$6;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$6;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    .line 1046
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsTotalTimeMoreThanHour:Z

    .line 1103
    new-instance v0, Lcom/htc/video/HtcMediaController$7;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$7;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertListener:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/htc/video/HtcMediaController$8;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$8;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopResumeListener:Landroid/view/View$OnClickListener;

    .line 1152
    new-instance v0, Lcom/htc/video/HtcMediaController$9;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$9;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopListener:Landroid/view/View$OnClickListener;

    .line 1165
    new-instance v0, Lcom/htc/video/HtcMediaController$10;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$10;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardListener:Landroid/view/View$OnClickListener;

    .line 1202
    new-instance v0, Lcom/htc/video/HtcMediaController$11;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$11;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindListener:Landroid/view/View$OnClickListener;

    .line 1240
    new-instance v0, Lcom/htc/video/HtcMediaController$12;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$12;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1398
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mNewPosition:J

    .line 1399
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mSeekPosition:J

    .line 1400
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mSeekFlag:Z

    .line 1401
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mPrePlayState:Z

    .line 1403
    new-instance v0, Lcom/htc/video/HtcMediaController$13;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$13;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1610
    new-instance v0, Lcom/htc/video/HtcMediaController$14;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$14;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 1629
    new-instance v0, Lcom/htc/video/HtcMediaController$15;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$15;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 161
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    .line 162
    iput p2, p0, Lcom/htc/video/HtcMediaController;->mGoBackType:I

    .line 163
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->initFloatingWindow()V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mGoBackType:I

    .line 70
    const-string v0, "StopView"

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->STOP_BUTTON_FOR_CMCC:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 83
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 85
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    .line 89
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIs3DVideo:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 93
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    .line 108
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    .line 109
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mListenersSet:Z

    .line 118
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStopButton:Lcom/htc/widget/HtcFooterButton;

    .line 120
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    .line 123
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    .line 124
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    .line 125
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    .line 126
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 127
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    .line 132
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mPlayModeToast:Landroid/widget/Toast;

    .line 186
    new-instance v0, Lcom/htc/video/HtcMediaController$1;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$1;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 938
    new-instance v0, Lcom/htc/video/HtcMediaController$6;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$6;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    .line 1046
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsTotalTimeMoreThanHour:Z

    .line 1103
    new-instance v0, Lcom/htc/video/HtcMediaController$7;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$7;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertListener:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/htc/video/HtcMediaController$8;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$8;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopResumeListener:Landroid/view/View$OnClickListener;

    .line 1152
    new-instance v0, Lcom/htc/video/HtcMediaController$9;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$9;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopListener:Landroid/view/View$OnClickListener;

    .line 1165
    new-instance v0, Lcom/htc/video/HtcMediaController$10;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$10;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardListener:Landroid/view/View$OnClickListener;

    .line 1202
    new-instance v0, Lcom/htc/video/HtcMediaController$11;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$11;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindListener:Landroid/view/View$OnClickListener;

    .line 1240
    new-instance v0, Lcom/htc/video/HtcMediaController$12;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$12;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1398
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mNewPosition:J

    .line 1399
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mSeekPosition:J

    .line 1400
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mSeekFlag:Z

    .line 1401
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mPrePlayState:Z

    .line 1403
    new-instance v0, Lcom/htc/video/HtcMediaController$13;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$13;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1610
    new-instance v0, Lcom/htc/video/HtcMediaController$14;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$14;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 1629
    new-instance v0, Lcom/htc/video/HtcMediaController$15;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$15;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 136
    iput-object p0, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    .line 137
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mGoBackType:I

    .line 70
    const-string v0, "StopView"

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->STOP_BUTTON_FOR_CMCC:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 83
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 85
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    .line 89
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIs3DVideo:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 93
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    .line 108
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    .line 109
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mListenersSet:Z

    .line 118
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStopButton:Lcom/htc/widget/HtcFooterButton;

    .line 120
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    .line 123
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    .line 124
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    .line 125
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    .line 126
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 127
    iput v1, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    .line 132
    iput-object v2, p0, Lcom/htc/video/HtcMediaController;->mPlayModeToast:Landroid/widget/Toast;

    .line 186
    new-instance v0, Lcom/htc/video/HtcMediaController$1;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$1;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 938
    new-instance v0, Lcom/htc/video/HtcMediaController$6;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$6;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    .line 1046
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsTotalTimeMoreThanHour:Z

    .line 1103
    new-instance v0, Lcom/htc/video/HtcMediaController$7;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$7;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStereoConvertListener:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/htc/video/HtcMediaController$8;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$8;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopResumeListener:Landroid/view/View$OnClickListener;

    .line 1152
    new-instance v0, Lcom/htc/video/HtcMediaController$9;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$9;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mStopListener:Landroid/view/View$OnClickListener;

    .line 1165
    new-instance v0, Lcom/htc/video/HtcMediaController$10;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$10;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardListener:Landroid/view/View$OnClickListener;

    .line 1202
    new-instance v0, Lcom/htc/video/HtcMediaController$11;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$11;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindListener:Landroid/view/View$OnClickListener;

    .line 1240
    new-instance v0, Lcom/htc/video/HtcMediaController$12;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$12;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 1398
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mNewPosition:J

    .line 1399
    iput-wide v3, p0, Lcom/htc/video/HtcMediaController;->mSeekPosition:J

    .line 1400
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mSeekFlag:Z

    .line 1401
    iput-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mPrePlayState:Z

    .line 1403
    new-instance v0, Lcom/htc/video/HtcMediaController$13;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$13;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1610
    new-instance v0, Lcom/htc/video/HtcMediaController$14;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$14;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 1629
    new-instance v0, Lcom/htc/video/HtcMediaController$15;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcMediaController$15;-><init>(Lcom/htc/video/HtcMediaController;)V

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 149
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->initFloatingWindow()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/video/HtcMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/video/HtcMediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/video/HtcMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/video/HtcMediaController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/video/HtcMediaController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/video/HtcMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->resetResumeStereoStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/video/HtcMediaController;)Lcom/htc/widget/HtcSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/video/HtcMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/video/HtcMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mPrePlayState:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/video/HtcMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/video/HtcMediaController;->mPrePlayState:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/video/HtcMediaController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/htc/video/HtcMediaController;->mNewPosition:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/htc/video/HtcMediaController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/htc/video/HtcMediaController;->mNewPosition:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/htc/video/HtcMediaController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/htc/video/HtcMediaController;->mSeekPosition:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/htc/video/HtcMediaController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/htc/video/HtcMediaController;->mSeekPosition:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/htc/video/HtcMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mSeekFlag:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/video/HtcMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/video/HtcMediaController;->mSeekFlag:Z

    return p1
.end method

.method private checkHighSpeedStatus()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, retMode:I
    const/4 v2, 0x0

    .line 646
    .local v2, retSpeed:I
    const/4 v0, 0x0

    .line 648
    .local v0, currentStatus:I
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    const/16 v5, 0x22d9

    invoke-interface {v4, v5}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getProperty(I)I

    move-result v1

    .line 649
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    const/16 v5, 0x22da

    invoke-interface {v4, v5}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getProperty(I)I

    move-result v2

    .line 650
    sget-object v4, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkHighSpeedStatus] get current play mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", speed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 654
    :cond_0
    sget-object v4, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v5, "[checkHighSpeedStatus] retMode or retSpeed is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return v3

    .line 658
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 660
    const/4 v0, 0x0

    .line 684
    :cond_2
    :goto_1
    sget-object v4, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkHighSpeedStatus] current status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v4, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-eq v0, v4, :cond_7

    .line 688
    sget-object v4, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v5, "[checkHighSpeedStatus] set HighSpeed level fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_3
    if-ne v1, v7, :cond_5

    .line 664
    if-ne v2, v7, :cond_4

    .line 666
    const/4 v0, 0x1

    goto :goto_1

    .line 668
    :cond_4
    if-ne v2, v8, :cond_2

    .line 670
    const/4 v0, 0x2

    goto :goto_1

    .line 673
    :cond_5
    if-ne v1, v8, :cond_2

    .line 675
    if-ne v2, v7, :cond_6

    .line 677
    const/4 v0, -0x1

    goto :goto_1

    .line 679
    :cond_6
    if-ne v2, v8, :cond_2

    .line 681
    const/4 v0, -0x2

    goto :goto_1

    .line 692
    :cond_7
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->setHighSpeedIcon()Z

    move-result v3

    goto :goto_0
.end method

.method private initHighSpeedButton(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 552
    const v1, 0x7f090004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    .line 553
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v2, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 557
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastForwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    :cond_0
    const v1, 0x7f090002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    .line 565
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    iget-boolean v2, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 569
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mFastRewindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    :cond_1
    sget-object v1, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initHighSpeedButton]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-nez v1, :cond_3

    .line 576
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->setHighSpeedIcon()Z

    .line 590
    :cond_2
    :goto_0
    return-void

    .line 580
    :cond_3
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->checkHighSpeedStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 582
    iget v0, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 583
    .local v0, currentStatus:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 584
    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->doChangeHighSpeedMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 586
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->setHighSpeedIcon()Z

    goto :goto_0
.end method

.method private initStopButton(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 545
    return-void
.end method

.method private resetResumeStereoStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1386
    sget-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendResumeStereoStatus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    .line 1391
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1396
    :cond_1
    return-void
.end method

.method private resetSeekbarParams(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 526
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 904
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 909
    :cond_0
    return-void
.end method

.method public static sendStopFMRadioIntent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1755
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1756
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1758
    sget-object v1, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v2, "[sendStopFMRadioIntent]: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-void
.end method

.method public static sendStopMusicIntent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1751
    sget-object v1, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v2, "[sendStopMusicIntent]: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    return-void
.end method

.method private setHighSpeedIcon()Z
    .locals 5

    .prologue
    const v4, 0x2080933

    const v1, 0x208090c

    .line 697
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    if-nez v0, :cond_1

    .line 699
    :cond_0
    sget-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v1, "[setHighSpeedIcon] Fast Forward/Rewind Button is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    .line 703
    :cond_1
    iget v0, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    packed-switch v0, :pswitch_data_0

    .line 756
    :goto_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->invalidate()V

    .line 759
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->invalidate()V

    .line 760
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 762
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 709
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_1

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x208090b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 714
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x2080932

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_1

    .line 719
    :pswitch_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_glance_video_play_fastforward_1"

    const v3, 0x2080994

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 724
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_1

    .line 728
    :pswitch_2
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_glance_video_play_fastforward_2"

    const v3, 0x2080995

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 733
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_1

    .line 737
    :pswitch_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 738
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_glance_video_play_fastrewind_1"

    const v3, 0x2080996

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_1

    .line 746
    :pswitch_4
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastForwardButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 747
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFastRewindButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_glance_video_play_fastrewind_2"

    const v3, 0x2080997

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 703
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setHighSpeedMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x22d7

    .line 608
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-nez v1, :cond_0

    .line 610
    sget-object v1, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v2, "[setHighSpeedMode] mPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_0
    return v0

    .line 614
    :cond_0
    iget v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    packed-switch v1, :pswitch_data_0

    .line 639
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->checkHighSpeedStatus()Z

    move-result v0

    goto :goto_0

    .line 617
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v1, v2, v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    goto :goto_1

    .line 624
    :pswitch_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0, v2, v3}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    goto :goto_1

    .line 628
    :pswitch_2
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0, v2, v3}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    goto :goto_1

    .line 632
    :pswitch_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0, v2, v4}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    goto :goto_1

    .line 636
    :pswitch_4
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0, v2, v4}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->setParameters(II)V

    goto :goto_1

    .line 614
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPlaybackMode(Landroid/widget/ImageButton;I)V
    .locals 4
    .parameter "imgBtn"
    .parameter "nPlaybackMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1778
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1779
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_0

    .line 1804
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1805
    return-void

    .line 1782
    :pswitch_0
    const-string v1, "playback_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1783
    iget v1, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-ne v1, v2, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_full_screen(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_0

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_full_screen_disable(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_0

    .line 1793
    :pswitch_1
    const-string v1, "playback_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1794
    iget v1, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-ne v1, v2, :cond_1

    .line 1796
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_fit_screen(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_fit_screen_disable(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_0

    .line 1779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setProgress()I
    .locals 8

    .prologue
    .line 1000
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/video/HtcMediaController;->mDragging:Z

    if-eqz v4, :cond_2

    .line 1001
    :cond_0
    const/4 v3, 0x0

    .line 1044
    :cond_1
    :goto_0
    return v3

    .line 1003
    :cond_2
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v3

    .line 1004
    .local v3, position:I
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 1005
    .local v0, duration:I
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v4, :cond_3

    .line 1006
    const-wide/16 v1, 0x0

    .line 1007
    .local v1, pos:J
    if-lez v0, :cond_3

    .line 1008
    div-int/lit16 v0, v0, 0x3e8

    .line 1009
    if-nez v0, :cond_5

    .line 1010
    const/16 v0, 0x3e8

    .line 1015
    :goto_1
    const-wide/16 v4, 0x3e8

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long v1, v4, v6

    .line 1016
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 1024
    .end local v1           #pos:J
    :cond_3
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 1026
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/htc/video/HtcMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_4

    .line 1028
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/video/HtcMediaController;->mIsTotalTimeMoreThanHour:Z

    .line 1030
    :cond_4
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 1033
    if-lt v3, v0, :cond_6

    .line 1034
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1012
    .restart local v1       #pos:J
    :cond_5
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 1036
    .end local v1           #pos:J
    :cond_6
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/htc/video/HtcMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 979
    div-int/lit16 v3, p1, 0x3e8

    .line 981
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 982
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 983
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 985
    .local v0, hours:I
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 986
    if-lez v0, :cond_0

    .line 988
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 995
    :goto_0
    return-object v4

    .line 992
    :cond_0
    iget-boolean v4, p0, Lcom/htc/video/HtcMediaController;->mIsTotalTimeMoreThanHour:Z

    if-eqz v4, :cond_1

    .line 993
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 995
    :cond_1
    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateModeButton(IZ)V
    .locals 2
    .parameter "icon"
    .parameter "enable"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1894
    sget-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v1, "[updateModeButton] mModeButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1899
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 4

    .prologue
    const v2, 0x2080927

    const/4 v3, 0x3

    .line 1257
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v0, :cond_4

    .line 1268
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-nez v0, :cond_3

    .line 1270
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x2080915

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 1285
    :goto_1
    iget v0, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->updateBeatsIndicator(I)V

    .line 1288
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1293
    :cond_2
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_1

    .line 1280
    :cond_4
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1281
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 1282
    sget-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v1, "[updatePausePlay] mPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public SetModeButton(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    const/4 v2, 0x1

    .line 769
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 801
    :goto_0
    return-void

    .line 774
    :cond_0
    if-ne v2, p1, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->getPlaybackMode()I

    move-result v0

    .line 777
    .local v0, nMode:I
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v0}, Lcom/htc/video/HtcMediaController;->setPlaybackMode(Landroid/widget/ImageButton;I)V

    .line 778
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 782
    .end local v0           #nMode:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->getPlaybackMode()I

    move-result v0

    .line 784
    .restart local v0       #nMode:I
    packed-switch v0, :pswitch_data_0

    .line 798
    :goto_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 788
    :pswitch_0
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_full_screen_disable(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 793
    :pswitch_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_fit_screen_disable(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 1055
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1057
    .local v0, keyCode:I
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_3

    .line 1060
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1062
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1063
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1100
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 1066
    :cond_2
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1070
    :cond_3
    const/16 v2, 0x55

    if-eq v0, v2, :cond_4

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_5

    .line 1073
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1074
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->doPauseResume()V

    goto :goto_1

    .line 1078
    :cond_5
    const/16 v2, 0x57

    if-eq v0, v2, :cond_1

    const/16 v2, 0x58

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x59

    if-eq v0, v2, :cond_1

    .line 1084
    const/16 v1, 0x19

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-ne v0, v1, :cond_7

    .line 1087
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 1089
    :cond_7
    if-ne v0, v4, :cond_8

    .line 1090
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->hide()V

    goto :goto_0

    .line 1092
    :cond_8
    const/16 v1, 0x52

    if-ne v0, v1, :cond_9

    .line 1093
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onMenuPress()V

    goto :goto_0

    .line 1097
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_0
.end method

.method protected doChangeHighSpeedMode(I)Z
    .locals 2
    .parameter "currentStatus"

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->setHighSpeedMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    iput p1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 603
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    iget v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onUpdateHighSpeedStatus(I)V

    .line 601
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected doPauseResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1332
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v1, :cond_1

    .line 1334
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1336
    iget v1, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-nez v1, :cond_3

    .line 1338
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->pause()V

    .line 1339
    invoke-virtual {p0, v2}, Lcom/htc/video/HtcMediaController;->show(I)V

    .line 1340
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v1, :cond_1

    .line 1345
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPauseTarget()V

    .line 1381
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->updatePausePlay()V

    .line 1382
    :cond_2
    return-void

    .line 1351
    :cond_3
    iget v0, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 1352
    .local v0, currentStatus:I
    iput v2, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 1353
    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->doChangeHighSpeedMode(I)Z

    .line 1354
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->show()V

    goto :goto_0

    .line 1360
    .end local v0           #currentStatus:I
    :cond_4
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->sendStopMusicIntent(Landroid/content/Context;)V

    .line 1362
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->sendStopFMRadioIntent(Landroid/content/Context;)V

    .line 1370
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPlayTarget()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1374
    :cond_5
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->start()V

    .line 1376
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->resetResumeStereoStatus()V

    .line 1378
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->show()V

    goto :goto_0
.end method

.method protected doStopResume()V
    .locals 2

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    if-eqz v0, :cond_3

    .line 1303
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 1304
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->pause()V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPauseTarget()V

    .line 1328
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->updatePausePlay()V

    .line 1329
    return-void

    .line 1321
    :cond_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->sendStopMusicIntent(Landroid/content/Context;)V

    .line 1322
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->sendStopFMRadioIntent(Landroid/content/Context;)V

    .line 1323
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPlayTarget()Z

    goto :goto_0
.end method

.method public getPlaybackMode()I
    .locals 3

    .prologue
    .line 1773
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1774
    .local v0, spf:Landroid/content/SharedPreferences;
    const-string v1, "playback_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getStopViewStatus()Z
    .locals 3

    .prologue
    .line 1768
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1769
    .local v0, spf:Landroid/content/SharedPreferences;
    const-string v1, "StopView"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 917
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-boolean v1, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 925
    :cond_2
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 927
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->showPopupMenu(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_1
    iput-boolean v3, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 16
    .parameter "v"

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 242
    .local v1, audio:Landroid/media/AudioManager;
    const v13, 0x7f090011

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 243
    .local v12, videoTitleLayout:Landroid/widget/RelativeLayout;
    const v13, 0x7f090014

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HeaderBarText;

    .line 244
    .local v10, playVideoName:Lcom/htc/widget/HeaderBarText;
    const v13, 0x7f090013

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HeaderBarImage;

    .line 245
    .local v7, imgPhoto:Lcom/htc/widget/HeaderBarImage;
    const v13, 0x7f090016

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HeaderBarImage;

    .line 246
    .local v8, imgVolume:Lcom/htc/widget/HeaderBarImage;
    const v13, 0x7f090015

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarImage;

    .line 247
    .local v6, imgOutput:Lcom/htc/widget/HeaderBarImage;
    const v13, 0x7f090012

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HeaderBarMiddle;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 248
    const v13, 0x7f090017

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HeaderBarImage;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    .line 252
    const/4 v13, 0x3

    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 253
    const/high16 v13, 0x7f02

    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 254
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    .line 255
    new-instance v13, Lcom/htc/video/HtcMediaController$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/video/HtcMediaController$2;-><init>(Lcom/htc/video/HtcMediaController;)V

    invoke-virtual {v7, v13}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 266
    const v13, 0x7f04001a

    invoke-virtual {v8, v13}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 267
    const v13, 0x2080970

    invoke-virtual {v8, v13}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 268
    new-instance v13, Lcom/htc/video/HtcMediaController$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/htc/video/HtcMediaController$3;-><init>(Lcom/htc/video/HtcMediaController;Landroid/media/AudioManager;)V

    invoke-virtual {v8, v13}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 280
    const v13, 0x7f04001b

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 281
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    if-eqz v13, :cond_8

    .line 283
    const v13, 0x2080912

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 289
    :goto_0
    new-instance v13, Lcom/htc/video/HtcMediaController$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/video/HtcMediaController$4;-><init>(Lcom/htc/video/HtcMediaController;)V

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/video/HtcMediaController;->mIsSupportDMC:Z

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 300
    sget-boolean v13, Lcom/htc/video/Common/Constants;->DISABLE_DLNA:Z

    if-eqz v13, :cond_0

    .line 301
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/video/HtcMediaController;->mIs3DVideo:Z

    if-nez v13, :cond_9

    .line 305
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v14, "[initControllerView] Is 2D video and not has 3D BARRIER."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-nez v13, :cond_1

    .line 309
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 347
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 349
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v14, "[initControllerView] setVisibility: VISIBLE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    :cond_2
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 355
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[initControllerView] setText: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mVideoName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 357
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 360
    :cond_3
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnectedAndEnable()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 362
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v14, "[initControllerView] setPlaybackMode HDMI: "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/video/HtcMediaController;->setPlaybackMode(I)V

    .line 365
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/video/HtcMediaController;->getPlaybackMode()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/video/HtcMediaController;->setPlaybackMode(I)V

    .line 438
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnectedAndEnable()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_5

    .line 440
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/video/HtcMediaController;->SetModeButton(Z)V

    .line 445
    :cond_5
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v14, "[initControllerView] HAS_HIGH_SPEED_SUPPORT: true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct/range {p0 .. p1}, Lcom/htc/video/HtcMediaController;->initHighSpeedButton(Landroid/view/View;)V

    .line 447
    invoke-direct/range {p0 .. p1}, Lcom/htc/video/HtcMediaController;->resetSeekbarParams(Landroid/view/View;)V

    .line 456
    const v13, 0x7f090008

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcSeekBar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v13, :cond_6

    .line 459
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    .line 460
    .local v11, seeker:Lcom/htc/widget/HtcSeekBar;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v13}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcSeekBar;->setMax(I)V

    .line 463
    invoke-static {}, Lcom/htc/video/Common/LayoutConstants;->getResolution()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_6

    .line 469
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v13}, Lcom/htc/widget/HtcSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 470
    .local v9, p:Landroid/view/View;
    new-instance v13, Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lcom/htc/video/HtcMediaController$PrivateSeekerTouchDelegate;-><init>(Lcom/htc/video/HtcMediaController;Landroid/view/View;)V

    invoke-virtual {v9, v13}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v9           #p:Landroid/view/View;
    .end local v11           #seeker:Lcom/htc/widget/HtcSeekBar;
    :cond_6
    :goto_2
    const v13, 0x7f090007

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mEndTime:Landroid/widget/TextView;

    .line 480
    const v13, 0x7f090006

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 483
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 484
    new-instance v13, Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/video/HtcMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mFormatter:Ljava/util/Formatter;

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/htc/video/HtcMediaController;->installPrevNextListeners()V

    .line 487
    const v13, 0x7f090003

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v13, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v13}, Lcom/htc/widget/HtcFooterButton;->requestFocus()Z

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/video/HtcMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    :cond_7
    const v13, 0x7f090009

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    .line 494
    .local v2, btnMore:Lcom/htc/widget/HtcFooterButton;
    const v13, 0x7f04001c

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcFooterButton;->setTextSize(F)V

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v13, v2}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPreparePopupMenu(Landroid/view/View;)V

    .line 497
    new-instance v13, Lcom/htc/video/HtcMediaController$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/video/HtcMediaController$5;-><init>(Lcom/htc/video/HtcMediaController;)V

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v13, 0x7f090001

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooter;

    .line 509
    .local v4, foot:Lcom/htc/widget/HtcFooter;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 510
    const v13, 0x7f090012

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarMiddle;

    .line 511
    .local v5, head:Lcom/htc/widget/HeaderBarMiddle;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 512
    invoke-virtual {v5}, Lcom/htc/widget/HeaderBarMiddle;->enableTransparentBackground()V

    .line 513
    return-void

    .line 287
    .end local v2           #btnMore:Lcom/htc/widget/HtcFooterButton;
    .end local v4           #foot:Lcom/htc/widget/HtcFooter;
    .end local v5           #head:Lcom/htc/widget/HeaderBarMiddle;
    :cond_8
    const v13, 0x2080911

    invoke-virtual {v6, v13}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    goto/16 :goto_0

    .line 312
    :cond_9
    sget-boolean v13, Lcom/htc/video/Common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v13, :cond_c

    .line 314
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v14, "[initControllerView] Is 3D video and has 3D BARRIER."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const v13, 0x7f090019

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HeaderBarImage;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    if-eqz v13, :cond_1

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarMiddle;->enableRightLastDivider(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 323
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    .line 325
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    const v14, 0x7f02001d

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 326
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 333
    :goto_3
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[initControllerView] Current video status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 330
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/video/HtcMediaController;->mStereoConvertButton:Lcom/htc/widget/HeaderBarImage;

    const v14, 0x7f020021

    invoke-virtual {v13, v14}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 331
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    goto :goto_3

    .line 340
    :cond_c
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v14, "[initControllerView] Is 3D video and not has 3D BARRIER."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-nez v13, :cond_1

    .line 343
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    goto/16 :goto_1

    .line 472
    .restart local v11       #seeker:Lcom/htc/widget/HtcSeekBar;
    :catch_0
    move-exception v3

    .line 474
    .local v3, e:Ljava/lang/Exception;
    sget-object v13, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 168
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    .line 169
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 171
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/htc/video/HtcMediaController;->setFocusable(Z)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/htc/video/HtcMediaController;->setFocusableInTouchMode(Z)V

    .line 182
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->setDescendantFocusability(I)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->requestFocus()Z

    .line 184
    return-void
.end method

.method protected installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1650
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1661
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1653
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1659
    goto :goto_1
.end method

.method protected installSettingListeners()V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1668
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1670
    :cond_0
    return-void

    .line 1668
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 232
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    .line 234
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/video/HtcMediaController;->initControllerView(Landroid/view/View;)V

    .line 236
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->initControllerView(Landroid/view/View;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->show()V

    .line 1050
    const/4 v0, 0x0

    return v0
.end method

.method public pauseVideoPlayBack()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->pause()V

    .line 1738
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPauseTarget()V

    .line 1742
    :cond_0
    return-void
.end method

.method public relayoutByOrientation(I)V
    .locals 2
    .parameter "nOrientation"

    .prologue
    .line 1807
    sget-object v0, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v1, "This function is not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 209
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    .line 211
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->removeAllViews()V

    .line 218
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/htc/video/HtcMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void
.end method

.method public setControllerEventListener(Lcom/htc/video/HtcMediaController$ControllerEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    .line 1710
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1585
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPauseButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 1595
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1597
    :cond_3
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 1598
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1600
    :cond_4
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 1601
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mSettingListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_9

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1603
    :cond_5
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v0, :cond_6

    .line 1604
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcSeekBar;->setEnabled(Z)V

    .line 1607
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1608
    return-void

    :cond_7
    move v0, v2

    .line 1595
    goto :goto_0

    :cond_8
    move v0, v2

    .line 1598
    goto :goto_1

    :cond_9
    move v1, v2

    .line 1601
    goto :goto_2
.end method

.method public setLayoutParamsCallback(Lcom/htc/video/HtcMediaController$LayoutParamsCallback;)V
    .locals 0
    .parameter "lpcb"

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    .line 1814
    return-void
.end method

.method public setMediaPlayer(Lcom/htc/video/HtcMediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    .line 199
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->updatePausePlay()V

    .line 200
    return-void
.end method

.method public setPlaybackMode(I)V
    .locals 4
    .parameter "nPlaybackMode"

    .prologue
    .line 1828
    sget-object v1, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPlaybackMode] Mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1834
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 1845
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1847
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v1, :cond_0

    .line 1848
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPlaybackMode()V

    .line 1850
    :cond_0
    return-void

    .line 1837
    :pswitch_0
    const-string v1, "playback_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1841
    :pswitch_1
    const-string v1, "playback_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "next"
    .parameter "prev"

    .prologue
    const/4 v1, 0x0

    .line 1674
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1675
    iput-object p2, p0, Lcom/htc/video/HtcMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mListenersSet:Z

    .line 1678
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1680
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->installPrevNextListeners()V

    .line 1682
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1691
    :cond_1
    return-void
.end method

.method public setSettingBtnListeners(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "settingLis"

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/htc/video/HtcMediaController;->mSettingListener:Landroid/view/View$OnClickListener;

    .line 1697
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->installSettingListeners()V

    .line 1701
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/video/HtcMediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mSettingButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1706
    :cond_0
    return-void
.end method

.method protected setStopViewStatus(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 1763
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1764
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "StopView"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1765
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1766
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnectedAndEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 811
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->show(I)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_2
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 9
    .parameter "timeout"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 828
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    if-nez v3, :cond_1

    .line 829
    sget-object v3, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    const-string v4, "show at null mAnchor"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->getStopViewStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 834
    iget-boolean v3, p0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    if-eqz v3, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->hide()V

    goto :goto_0

    .line 840
    :cond_2
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->setProgress()I

    .line 842
    iget-boolean v3, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 844
    new-array v0, v8, [I

    .line 845
    .local v0, anchorpos:[I
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 846
    sget-object v3, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[show]: mAnchor.getWidth()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAnchor.getHeight()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 849
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 851
    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 853
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    if-eqz v3, :cond_3

    .line 855
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mLayoutParamsCallback:Lcom/htc/video/HtcMediaController$LayoutParamsCallback;

    invoke-interface {v3}, Lcom/htc/video/HtcMediaController$LayoutParamsCallback;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 856
    sget-object v3, Lcom/htc/video/HtcMediaController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLayoutParamsCallback.getWidth() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_3
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 859
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 860
    aget v3, v0, v6

    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 861
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 863
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 864
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 865
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    .end local v0           #anchorpos:[I
    .end local v2           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iput-boolean v6, p0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    .line 882
    invoke-direct {p0}, Lcom/htc/video/HtcMediaController;->updatePausePlay()V

    .line 884
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    if-eqz v3, :cond_5

    .line 885
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mProgress:Lcom/htc/widget/HtcSeekBar;

    iget-object v4, p0, Lcom/htc/video/HtcMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 887
    :cond_5
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v3, :cond_6

    .line 888
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 891
    :cond_6
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    if-eqz p1, :cond_0

    .line 893
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 894
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public showOnUiThread(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/video/HtcMediaController$16;

    invoke-direct {v1, p0, p1}, Lcom/htc/video/HtcMediaController$16;-><init>(Lcom/htc/video/HtcMediaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1821
    return-void
.end method

.method public updateBeatsIndicator(I)V
    .locals 5
    .parameter "beatsMode"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1904
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    if-nez v0, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1911
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 1912
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarMiddle;->enableRightLastDivider(Z)V

    .line 1914
    packed-switch p1, :pswitch_data_0

    .line 1928
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1929
    iput v2, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    .line 1930
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableRightLastDivider(Z)V

    .line 1934
    :goto_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1937
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarMiddle;->enableRightLastDivider(Z)V

    goto :goto_0

    .line 1917
    :pswitch_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1918
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1919
    iput v3, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    goto :goto_1

    .line 1922
    :pswitch_1
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 1923
    iget-object v0, p0, Lcom/htc/video/HtcMediaController;->mImgBeats:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1924
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/video/HtcMediaController;->mCurrentBeatsMode:I

    goto :goto_1

    .line 1914
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updatePlaybackMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1854
    iget-object v3, p0, Lcom/htc/video/HtcMediaController;->mModeButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    invoke-virtual {p0}, Lcom/htc/video/HtcMediaController;->getPlaybackMode()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 1860
    .local v0, nMode:I
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1884
    :goto_2
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v1, :cond_0

    .line 1886
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onPlaybackMode()V

    goto :goto_0

    .end local v0           #nMode:I
    :cond_2
    move v0, v2

    .line 1857
    goto :goto_1

    .line 1863
    .restart local v0       #nMode:I
    :pswitch_0
    iget v3, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-ne v3, v1, :cond_3

    .line 1865
    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_fit_screen(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_2

    .line 1869
    :cond_3
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_fit_screen_disable(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_2

    .line 1873
    :pswitch_1
    iget v3, p0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    if-ne v3, v1, :cond_4

    .line 1875
    iget-object v2, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_full_screen(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_2

    .line 1879
    :cond_4
    iget-object v1, p0, Lcom/htc/video/HtcMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/Customizable/CustSkinnable;->getDrawable_full_screen_disable(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/htc/video/HtcMediaController;->updateModeButton(IZ)V

    goto :goto_2

    .line 1860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
