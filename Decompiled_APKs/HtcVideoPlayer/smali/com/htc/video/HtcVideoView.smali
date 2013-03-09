.class public Lcom/htc/video/HtcVideoView;
.super Landroid/view/SurfaceView;
.source "HtcVideoView.java"

# interfaces
.implements Lcom/htc/video/HtcMediaController$MediaPlayerControl;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "HtcVideoView"

.field private static final URI_SCHEME_HTTP:Ljava/lang/String; = "http"


# instance fields
.field private MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

.field private TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I

.field private mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

.field private mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mErrorRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsBestFit:Z

.field private mIsForceStop:Z

.field private mIsPlaying:Z

.field private mIsSeeking:Z

.field private mLocker:Ljava/lang/Object;

.field private mMediaController:Lcom/htc/video/HtcMediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaUIRunnable:Ljava/lang/Runnable;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenVideoThread:Ljava/lang/Thread;

.field private mPlaySpeedState:I

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubTitle:Ljava/lang/String;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 62
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mPlaySpeedState:I

    .line 69
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 70
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 73
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 74
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 92
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    .line 93
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    .line 95
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsBestFit:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsPlaying:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsSeeking:Z

    .line 106
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 107
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 433
    new-instance v0, Lcom/htc/video/HtcVideoView$2;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$2;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 448
    new-instance v0, Lcom/htc/video/HtcVideoView$3;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$3;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 528
    new-instance v0, Lcom/htc/video/HtcVideoView$4;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$4;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 544
    new-instance v0, Lcom/htc/video/HtcVideoView$5;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$5;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 569
    new-instance v0, Lcom/htc/video/HtcVideoView$6;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$6;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 694
    new-instance v0, Lcom/htc/video/HtcVideoView$7;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$7;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 702
    new-instance v0, Lcom/htc/video/HtcVideoView$8;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$8;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 759
    new-instance v0, Lcom/htc/video/HtcVideoView$9;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$9;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 862
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

    .line 863
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/video/HtcVideoView;->TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I

    .line 864
    new-instance v0, Lcom/htc/video/HtcVideoView$10;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$10;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    .line 1126
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    .line 1130
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    .line 1132
    new-instance v0, Lcom/htc/video/HtcVideoView$11;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$11;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaUIRunnable:Ljava/lang/Runnable;

    .line 1139
    new-instance v0, Lcom/htc/video/HtcVideoView$12;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$12;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mErrorRunnable:Ljava/lang/Runnable;

    .line 116
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->initVideoView()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/video/HtcVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->initVideoView()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mPlaySpeedState:I

    .line 69
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 70
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 73
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 74
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 92
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    .line 93
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    .line 95
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsBestFit:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsPlaying:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsSeeking:Z

    .line 106
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 107
    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 433
    new-instance v0, Lcom/htc/video/HtcVideoView$2;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$2;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 448
    new-instance v0, Lcom/htc/video/HtcVideoView$3;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$3;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 528
    new-instance v0, Lcom/htc/video/HtcVideoView$4;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$4;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 544
    new-instance v0, Lcom/htc/video/HtcVideoView$5;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$5;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 569
    new-instance v0, Lcom/htc/video/HtcVideoView$6;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$6;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 694
    new-instance v0, Lcom/htc/video/HtcVideoView$7;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$7;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 702
    new-instance v0, Lcom/htc/video/HtcVideoView$8;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$8;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 759
    new-instance v0, Lcom/htc/video/HtcVideoView$9;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$9;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 862
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

    .line 863
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/video/HtcVideoView;->TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I

    .line 864
    new-instance v0, Lcom/htc/video/HtcVideoView$10;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$10;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    .line 1126
    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    .line 1130
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    .line 1132
    new-instance v0, Lcom/htc/video/HtcVideoView$11;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$11;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaUIRunnable:Ljava/lang/Runnable;

    .line 1139
    new-instance v0, Lcom/htc/video/HtcVideoView$12;

    invoke-direct {v0, p0}, Lcom/htc/video/HtcVideoView$12;-><init>(Lcom/htc/video/HtcVideoView;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mErrorRunnable:Ljava/lang/Runnable;

    .line 127
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->initVideoView()V

    .line 128
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "HtcVideoView"

    const-string v1, "[abandonAudioFocus] Abandon audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 304
    iput-object v2, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    .line 305
    iput-object v2, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/htc/video/HtcVideoView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/video/HtcVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/video/HtcVideoView;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/video/HtcVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    return p1
.end method

.method static synthetic access$202(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/video/HtcVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/video/HtcVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/video/HtcVideoView;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/video/HtcVideoView;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/video/HtcVideoView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/video/HtcVideoView;->callCompletionListenerOnCompletion(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/video/HtcVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2802(Lcom/htc/video/HtcVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/video/HtcVideoView;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/video/HtcVideoView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/video/HtcVideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/video/HtcVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/video/HtcVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/video/HtcVideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->attachMediaController()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/video/HtcVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$602(Lcom/htc/video/HtcVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/video/HtcVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$702(Lcom/htc/video/HtcVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/video/HtcVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/video/HtcVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/video/HtcVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1, p0}, Lcom/htc/video/HtcMediaController;->setMediaPlayer(Lcom/htc/video/HtcMediaController$MediaPlayerControl;)V

    .line 426
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 428
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1, v0}, Lcom/htc/video/HtcMediaController;->setAnchorView(Landroid/view/View;)V

    .line 429
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/video/HtcMediaController;->setEnabled(Z)V

    .line 431
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 426
    goto :goto_0
.end method

.method private callCompletionListenerOnCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 680
    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    iput v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    .line 255
    iput v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    .line 256
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 257
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 258
    invoke-virtual {p0, v3}, Lcom/htc/video/HtcVideoView;->setFocusable(Z)V

    .line 259
    invoke-virtual {p0, v3}, Lcom/htc/video/HtcVideoView;->setFocusableInTouchMode(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->requestFocus()Z

    .line 261
    iput v2, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 262
    iput v2, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 263
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1039
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 353
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->sendStopMusicIntent(Landroid/content/Context;)V

    .line 364
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->sendStopFMRadioIntent(Landroid/content/Context;)V

    .line 368
    invoke-direct {p0, v2}, Lcom/htc/video/HtcVideoView;->release(Z)V

    .line 370
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 371
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 372
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 373
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    .line 374
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 375
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 376
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 377
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 378
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 379
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentBufferPercentage:I

    .line 381
    const-string v1, "HtcVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[openVideo] set media player data source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 383
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 384
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 385
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 389
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 394
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 396
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "HtcVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[openVideo] Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 400
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    goto/16 :goto_0

    .line 402
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 403
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[openVideo] Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 405
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    goto/16 :goto_0

    .line 408
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 409
    .local v0, ex:Ljava/security/AccessControlException;
    const-string v1, "HtcVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[openVideo] Invalid DRM license: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private openVideoAsync()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    const-string v0, "HtcVideoView"

    const-string v1, "[openVideoAsync] open video thread is alive! Release and clear thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->clearAsycThread()V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 1090
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    .line 1091
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "OpenVideo Thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    .line 1093
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    .line 1094
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1095
    return-void
.end method

.method private openVideoWithoutUIFun()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 1149
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return v1

    .line 1158
    :cond_1
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/video/HtcMediaController;->sendStopMusicIntent(Landroid/content/Context;)V

    .line 1159
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/video/HtcMediaController;->sendStopFMRadioIntent(Landroid/content/Context;)V

    .line 1163
    invoke-direct {p0, v2}, Lcom/htc/video/HtcVideoView;->release(Z)V

    .line 1165
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1166
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1167
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1168
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    .line 1169
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1170
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1171
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1172
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1173
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1174
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/video/HtcVideoView;->mCurrentBufferPercentage:I

    .line 1176
    const-string v3, "HtcVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[openVideoWithoutUIFun] set media player data source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1178
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1179
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1180
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1181
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1184
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "HtcVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openVideoWithoutUIFun] Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    iput v6, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 1189
    iput v6, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    move v1, v2

    .line 1190
    goto/16 :goto_0

    .line 1191
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1192
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openVideoWithoutUIFun] Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    iput v6, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 1194
    iput v6, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    move v1, v2

    .line 1195
    goto/16 :goto_0

    .line 1197
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1198
    .local v0, ex:Ljava/security/AccessControlException;
    const-string v1, "HtcVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openVideoWithoutUIFun] Invalid DRM license: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1199
    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 808
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 810
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 811
    if-eqz p1, :cond_0

    .line 812
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 814
    :cond_0
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    .line 815
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    .line 817
    :cond_1
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 279
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 286
    new-instance v1, Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;-><init>(Lcom/htc/video/HtcVideoView;Lcom/htc/video/HtcVideoView$1;)V

    iput-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    .line 289
    :cond_1
    const-string v1, "HtcVideoView"

    const-string v2, "[requestAudioFocus] Request audio focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mAudioFocusListener:Lcom/htc/video/HtcVideoView$ViewVideoAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 291
    .local v0, ret:I
    if-eq v0, v4, :cond_2

    .line 293
    const-string v1, "HtcVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[requestAudioFocus] Request audio focus fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0           #ret:I
    :cond_2
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 952
    :goto_0
    return-void

    .line 945
    :cond_0
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/htc/video/HtcVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/htc/video/HtcVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/htc/video/HtcVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public clearAsycThread()V
    .locals 3

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    .line 1109
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :try_start_1
    const-string v1, "HtcVideoView"

    const-string v2, "[clearAsycThread] Before thread join!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1115
    const-string v1, "HtcVideoView"

    const-string v2, "[clearAsycThread] After thread join!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1120
    :goto_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/video/HtcVideoView;->mOpenVideoThread:Ljava/lang/Thread;

    .line 1122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    .line 1124
    :cond_0
    const-string v1, "HtcVideoView"

    const-string v2, "[clearAsycThread] OpenVideo thread is finished!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 1111
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "HtcVideoView"

    const-string v2, "[clearAsycThread] join thread exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1033
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mCurrentBufferPercentage:I

    .line 1035
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1006
    :goto_0
    return v0

    .line 1005
    :cond_0
    const-string v0, "HtcVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] will return position 0 ! mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 990
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    .line 996
    :goto_0
    return v0

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    .line 993
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    goto :goto_0

    .line 995
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    .line 996
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mDuration:I

    goto :goto_0
.end method

.method public getForceStopFlag()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    return v0
.end method

.method public getProperty(I)I
    .locals 6
    .parameter "index"

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 1301
    .local v1, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1302
    .local v0, rep:Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 1304
    .local v2, retcode:I
    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_0

    .line 1306
    const-string v4, "HtcVideoView"

    const-string v5, "[getProperty] mMediaPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1336
    .end local v2           #retcode:I
    .local v3, retcode:I
    :goto_0
    return v3

    .line 1310
    .end local v3           #retcode:I
    .restart local v2       #retcode:I
    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v3, v2

    .line 1336
    .end local v2           #retcode:I
    .restart local v3       #retcode:I
    goto :goto_0

    .line 1314
    .end local v3           #retcode:I
    .restart local v2       #retcode:I
    :pswitch_0
    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    iget-boolean v4, v4, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    if-eqz v4, :cond_1

    .line 1316
    const/16 v4, 0x22d9

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    goto :goto_1

    .line 1321
    :cond_1
    const/4 v2, 0x1

    .line 1322
    goto :goto_1

    .line 1326
    :pswitch_1
    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    iget-boolean v4, v4, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    if-eqz v4, :cond_2

    .line 1328
    const/16 v4, 0x22da

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    iget-object v4, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    goto :goto_1

    .line 1333
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x22d9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isErrorState()Z
    .locals 2

    .prologue
    .line 1046
    iget v0, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1025
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1028
    :cond_0
    return v0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1237
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 688
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 689
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 691
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 838
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 844
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    if-eqz v2, :cond_4

    .line 845
    const/16 v2, 0x55

    if-eq p1, v2, :cond_0

    const/16 v2, 0x57

    if-eq p1, v2, :cond_0

    const/16 v2, 0x58

    if-eq p1, v2, :cond_0

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_0

    const/16 v2, 0x59

    if-ne p1, v2, :cond_3

    .line 851
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 859
    :cond_1
    :goto_1
    return v1

    .line 838
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 855
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    const/16 v2, 0x56

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 859
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 887
    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x19

    if-eq p1, v3, :cond_2

    const/16 v3, 0x52

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    move v0, v1

    .line 893
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    if-eqz v3, :cond_0

    .line 894
    const/16 v3, 0x4f

    if-ne p1, v3, :cond_4

    .line 896
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "headsetowner"

    const-string v3, "htcalbum"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 897
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 899
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 938
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_2
    return v1

    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    move v0, v2

    .line 887
    goto :goto_0

    .line 902
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/video/HtcVideoView;->MSG_HOOKKEY_DOUBLE_CLICK_CHECK:I

    iget v3, p0, Lcom/htc/video/HtcVideoView;->TIMEOUT_HOOKKEY_DOUBLE_CLICK_CHECK:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 906
    :cond_4
    const/16 v3, 0x55

    if-ne p1, v3, :cond_7

    .line 907
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 908
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 909
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->pause()V

    .line 910
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v3, v2}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_2

    .line 912
    :cond_5
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->start()V

    .line 913
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnectedAndEnable()Z

    move-result v3

    if-ne v3, v1, :cond_6

    .line 914
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v3, v2}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_2

    .line 917
    :cond_6
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v2}, Lcom/htc/video/HtcMediaController;->show()V

    goto :goto_2

    .line 923
    :cond_7
    const/16 v3, 0x57

    if-eq p1, v3, :cond_1

    const/16 v3, 0x58

    if-eq p1, v3, :cond_1

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_1

    const/16 v3, 0x59

    if-eq p1, v3, :cond_1

    .line 929
    const/16 v3, 0x56

    if-ne p1, v3, :cond_8

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 930
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->pause()V

    .line 931
    iget-object v3, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v3, v2}, Lcom/htc/video/HtcMediaController;->show(I)V

    goto :goto_2

    .line 935
    :cond_8
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x1

    .line 133
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/htc/video/HtcVideoView;->getDefaultSize(II)I

    move-result v1

    .line 134
    .local v1, width:I
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/htc/video/HtcVideoView;->getDefaultSize(II)I

    move-result v0

    .line 138
    .local v0, height:I
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 139
    iget-boolean v2, p0, Lcom/htc/video/HtcVideoView;->mIsBestFit:Z

    if-eqz v2, :cond_8

    .line 140
    if-le v1, v0, :cond_4

    .line 141
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    if-le v2, v3, :cond_2

    .line 142
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    if-ge v2, v3, :cond_1

    .line 143
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 221
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/video/HtcVideoView;->setMeasuredDimension(II)V

    .line 222
    return-void

    .line 146
    :cond_1
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0

    .line 151
    :cond_2
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    .line 152
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    div-int v1, v2, v3

    goto :goto_0

    .line 155
    :cond_3
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    div-int v0, v2, v3

    goto :goto_0

    .line 160
    :cond_4
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    if-ge v2, v3, :cond_6

    .line 162
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v3, v0

    if-ge v2, v3, :cond_5

    .line 163
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    goto :goto_0

    .line 167
    :cond_5
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0

    .line 171
    :cond_6
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_7

    .line 172
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    div-int v1, v2, v3

    goto :goto_0

    .line 175
    :cond_7
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    div-int v0, v2, v3

    goto :goto_0

    .line 180
    :cond_8
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "playback_mode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 181
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_9

    .line 182
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0

    .line 183
    :cond_9
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 184
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    goto/16 :goto_0

    .line 192
    :cond_a
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_b

    .line 194
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    goto/16 :goto_0

    .line 195
    :cond_b
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 197
    iget v2, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    if-eqz v0, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->toggleMediaControlsVisiblity()V

    .line 824
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->toggleMediaControlsVisiblity()V

    .line 832
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 977
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 980
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 983
    :cond_0
    iput v1, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 984
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 225
    move v0, p1

    .line 226
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 227
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 229
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 250
    :goto_0
    return v0

    .line 234
    :sswitch_0
    move v0, p1

    .line 235
    goto :goto_0

    .line 242
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 243
    goto :goto_0

    .line 247
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_2

    .line 1064
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 1065
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    if-eqz v1, :cond_1

    .line 1066
    const-string v1, "HtcVideoView"

    const-string v3, "[run] mIsForceStop is true!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1074
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1076
    :cond_2
    iget-boolean v1, p0, Lcom/htc/video/HtcVideoView;->mIsForceStop:Z

    if-nez v1, :cond_0

    .line 1077
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->openVideoWithoutUIFun()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1078
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "HtcVideoView"

    const-string v3, "[run] thread wait() exception!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1074
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1081
    :cond_3
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1018
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I

    .line 1022
    :goto_0
    return-void

    .line 1020
    :cond_0
    iput p1, p0, Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setBestFit(Z)V
    .locals 0
    .parameter "isBestFit"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/htc/video/HtcVideoView;->mIsBestFit:Z

    .line 112
    return-void
.end method

.method public setMediaController(Lcom/htc/video/HtcMediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 419
    :cond_0
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    .line 420
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->attachMediaController()V

    .line 421
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 744
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 757
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 725
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 732
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 733
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 714
    return-void
.end method

.method public setParameters(II)V
    .locals 6
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1243
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 1244
    .local v1, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1246
    .local v0, rep:Landroid/os/Parcel;
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 1248
    const-string v2, "HtcVideoView"

    const-string v3, "[setParameters] mMediaPlayer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;

    iget-boolean v2, v2, Lcom/htc/video/HtcMediaController;->mIsHighSpeedVideo:Z

    if-eqz v2, :cond_0

    .line 1255
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1278
    :pswitch_0
    const/16 v2, 0x22d5

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    if-nez p2, :cond_6

    .line 1280
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    goto :goto_0

    .line 1258
    :pswitch_1
    const/16 v2, 0x22d7

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    if-ne p2, v3, :cond_4

    .line 1261
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    iput p2, p0, Lcom/htc/video/HtcVideoView;->mPlaySpeedState:I

    .line 1274
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    goto :goto_0

    .line 1264
    :cond_4
    if-ne p2, v5, :cond_5

    .line 1266
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    iput p2, p0, Lcom/htc/video/HtcVideoView;->mPlaySpeedState:I

    goto :goto_2

    .line 1269
    :cond_5
    if-nez p2, :cond_3

    .line 1271
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mPlaySpeedState:I

    goto :goto_2

    .line 1281
    :cond_6
    if-ne p2, v3, :cond_2

    .line 1282
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1287
    :pswitch_2
    const/16 v2, 0x22d6

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    if-ne p2, v3, :cond_8

    .line 1289
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    goto :goto_0

    .line 1290
    :cond_8
    if-nez p2, :cond_7

    .line 1291
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x22d5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 266
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/video/HtcVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 267
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I

    .line 272
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->openVideo()V

    .line 273
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->requestLayout()V

    .line 274
    invoke-virtual {p0}, Lcom/htc/video/HtcVideoView;->invalidate()V

    .line 275
    return-void
.end method

.method public setVideoURIAsync(Landroid/net/Uri;I)V
    .locals 1
    .parameter "uri"
    .parameter "seekTo"

    .prologue
    .line 1097
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1100
    :cond_0
    iput-object p1, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    .line 1101
    iput p2, p0, Lcom/htc/video/HtcVideoView;->mSeekWhenPrepared:I

    .line 1102
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->openVideoAsync()V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 955
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 960
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->requestAudioFocus()V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    iput v2, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 973
    :cond_0
    iput v2, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 974
    :cond_1
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Ljava/security/AccessControlException;
    invoke-virtual {v0}, Ljava/security/AccessControlException;->printStackTrace()V

    .line 963
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 964
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;

    const v2, 0x20c0002

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 965
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v1, :cond_1

    .line 966
    iget-object v1, p0, Lcom/htc/video/HtcVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 321
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 327
    .local v0, releaseMediaPlayer:Landroid/media/MediaPlayer;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/video/HtcVideoView$1;

    invoke-direct {v3, p0, v0}, Lcom/htc/video/HtcVideoView$1;-><init>(Lcom/htc/video/HtcVideoView;Landroid/media/MediaPlayer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 342
    .end local v0           #releaseMediaPlayer:Landroid/media/MediaPlayer;
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 343
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mCurrentState:I

    .line 344
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mTargetState:I

    .line 346
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mVideoWidth:I

    .line 347
    iput v4, p0, Lcom/htc/video/HtcVideoView;->mVideoHeight:I

    .line 348
    invoke-direct {p0}, Lcom/htc/video/HtcVideoView;->abandonAudioFocus()V

    .line 350
    .end local v1           #scheme:Ljava/lang/String;
    :cond_0
    return-void

    .line 337
    .restart local v1       #scheme:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method
