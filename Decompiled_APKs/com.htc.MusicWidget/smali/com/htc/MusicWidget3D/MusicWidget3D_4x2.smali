.class public Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;,
        Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "[MusicWidget3D]"

.field protected static UNKNOWN_ALBUM:Ljava/lang/String;

.field protected static UNKNOWN_ARTIST:Ljava/lang/String;


# instance fields
.field protected mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mAlbumArt02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mAlbumArtHeight:I

.field protected mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mAlbumArtWidth:I

.field protected mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mContext:Landroid/content/Context;

.field protected mCurAlbumID:I

.field protected mCurAlbumPath:Ljava/lang/String;

.field protected mCurPluginAlbumArtPath:Ljava/lang/String;

.field protected mCurPluginQueuePos:I

.field protected mCurrAlbumArt:Landroid/graphics/Bitmap;

.field protected mCurrArtistName:Ljava/lang/String;

.field protected mCurrErrorText:Ljava/lang/String;

.field protected mCurrPlayTime:Ljava/lang/String;

.field protected mCurrRestTime:Ljava/lang/String;

.field protected mCurrTrackName:Ljava/lang/String;

.field protected mDuration:J

.field protected mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mHaveSongsInSD:Z

.field mIsButtonEnabled:Z

.field mIsErrorState:Z

.field protected mIsNoMusic:Z

.field mIsPlaying:Z

.field mIsUpdatingMusicInfo:Z

.field protected mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

.field protected mLastHitTimeStamp:J

.field protected mMarqueePlayListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;

.field protected mMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

.field protected mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field protected mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mNextClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mNextOldTime:J

.field protected mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

.field private mPlayOldTime:J

.field protected mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mPlayPauseClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlayTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

.field protected mPluginIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field protected mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mPrevClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevOldTime:J

.field protected mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

.field protected mProtraitScene:Lcom/htc/fusion/fx/FxScene;

.field protected mRestTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mRunMarquee:Ljava/lang/Runnable;

.field protected mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

.field protected mSecMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mSecMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mServiceConnection:Landroid/content/ServiceConnection;

.field protected mTiltAnimEndFrame:I

.field protected mTiltAnimStartFrame:I

.field protected mTiltMusicEndFrame:I

.field protected mTiltMusicStartFrame:I

.field protected mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected final mTransSpeed:F

.field protected final mUiHandler:Landroid/os/Handler;

.field protected mVisible:Z

.field protected mWidgetClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;

.field protected mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field protected m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

.field protected m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, -0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    .line 67
    iput v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurAlbumID:I

    .line 68
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurAlbumPath:Ljava/lang/String;

    .line 69
    iput v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginQueuePos:I

    .line 70
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginAlbumArtPath:Ljava/lang/String;

    .line 76
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTransSpeed:F

    .line 77
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    .line 115
    iput-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mVisible:Z

    .line 116
    iput-boolean v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHaveSongsInSD:Z

    .line 117
    iput-boolean v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    .line 122
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    .line 123
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrTrackName:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrArtistName:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrPlayTime:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrRestTime:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrErrorText:Ljava/lang/String;

    .line 128
    iput-boolean v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsErrorState:Z

    .line 129
    iput-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsPlaying:Z

    .line 130
    iput-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsButtonEnabled:Z

    .line 133
    iput-wide v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevOldTime:J

    .line 134
    iput-wide v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextOldTime:J

    .line 135
    iput-wide v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayOldTime:J

    .line 136
    iput-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 140
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltAnimStartFrame:I

    .line 141
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltAnimEndFrame:I

    .line 142
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltMusicStartFrame:I

    .line 143
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltMusicEndFrame:I

    .line 146
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWidgetClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;

    .line 147
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;

    invoke-direct {v0, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueePlayListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MarqueePlayListener;

    .line 149
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 151
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    .line 152
    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    .line 227
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;

    invoke-direct {v0, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$1;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    .line 883
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$2;

    invoke-direct {v0, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$2;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 926
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;

    invoke-direct {v0, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$3;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 980
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;

    invoke-direct {v0, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$4;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 2287
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;

    invoke-direct {v0, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRunMarquee:Ljava/lang/Runnable;

    .line 2326
    return-void
.end method

.method static synthetic access$100(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayOldTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayOldTime:J

    return-wide p1
.end method

.method private isButtonPause()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2136
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v4, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return v3

    .line 2139
    :cond_1
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    .line 2140
    .local v0, currentFrame:F
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "press_play"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 2141
    .local v2, play_marker:Lcom/htc/fusion/fx/Marker;
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "press_stop"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 2142
    .local v1, pause_marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2145
    iget v4, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    .line 2146
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isButtonPlay()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2119
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v4, :cond_1

    .line 2130
    :cond_0
    :goto_0
    return v3

    .line 2121
    :cond_1
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    .line 2122
    .local v0, currentFrame:F
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "press_play"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 2123
    .local v2, play_marker:Lcom/htc/fusion/fx/Marker;
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "press_stop"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 2124
    .local v1, pause_marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2127
    iget v4, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    .line 2128
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bindMusicPlaybackService()V
    .locals 4

    .prologue
    .line 1145
    const-string v1, "[MusicWidget3D]"

    const-string v2, "bindMusicPlaybackService()"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_1

    .line 1149
    new-instance v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;

    invoke-direct {v1, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music"

    const-string v2, "com.htc.music.MediaPlaybackService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 1187
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1188
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    const-string v1, "[MusicWidget3D]"

    const-string v2, "bindfailed"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1193
    :cond_0
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->registerReceiver()V

    .line 1200
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1197
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    const-string v1, "[MusicWidget3D]"

    const-string v2, "bindMusicPlaybackService(), mContext is null!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doConfigurationChange()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 543
    if-nez v1, :cond_0

    .line 544
    const-string v2, "[MusicWidget3D]"

    const-string v3, "Scene is null."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v2, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 552
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initControls(Lcom/htc/fusion/fx/FxScene;)V

    .line 553
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 554
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V

    .line 555
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initButtonState(Lcom/htc/fusion/fx/FxScene;)V

    .line 556
    iget-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsErrorState:Z

    if-nez v2, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToMainPage()V

    .line 570
    :goto_1
    const-string v2, "[MusicWidget3D]"

    const-string v3, "initForConfigurationChange end"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initHitbox(Lcom/htc/fusion/fx/FxScene;)V

    .line 574
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initButtons(Lcom/htc/fusion/fx/FxScene;)V

    .line 575
    iput-boolean v5, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    .line 576
    const/4 v2, -0x2

    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurAlbumID:I

    .line 578
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    const-string v2, "[MusicWidget3D]"

    const-string v3, "onConfigurationChange, Service is connected, update music info."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, v5, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, errorString:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    .line 567
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToNoMusicInfoPage()V

    goto :goto_1

    .line 563
    :cond_4
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_3

    .line 564
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 585
    .end local v0           #errorString:Ljava/lang/String;
    :cond_5
    const-string v2, "[MusicWidget3D]"

    const-string v3, "onConfigurationChange(), Service is not connected, bind it."

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected doUpdateRecentAlbums()V
    .locals 0

    .prologue
    .line 682
    return-void
.end method

.method protected getBtnInCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2262
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 2263
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Right"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 2264
    .local v0, right_marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 2265
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v2

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 2276
    .end local v0           #right_marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    :goto_0
    return v1

    .line 2268
    .restart local v0       #right_marker:Lcom/htc/fusion/fx/Marker;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getDefaultAlbumArt()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getLandScapeScenePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProtraitScenePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 400
    invoke-static {v0, v0}, Lcom/htc/MusicWidget3D/CustomizeSetting;->getWidgetScenePath(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 4

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 414
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 415
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 416
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    .line 421
    :goto_0
    return-object v1

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected goToMainPage()V
    .locals 2

    .prologue
    .line 2223
    const-string v0, "[MusicWidget3D]"

    const-string v1, "goToMainPage()"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 2226
    const-string v0, "[MusicWidget3D]"

    const-string v1, "goToMainPage(), m_tl_MusicMainPage != null"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 2230
    const-string v0, "[MusicWidget3D]"

    const-string v1, "goToMainPage(), m_tl_MusicMainPage.stop()"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "main_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2237
    :cond_1
    return-void
.end method

.method protected goToNoMusicInfoPage()V
    .locals 2

    .prologue
    .line 2206
    const-string v0, "[MusicWidget3D]"

    const-string v1, "goToNoMusicInfoPage()"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 2209
    const-string v0, "[MusicWidget3D]"

    const-string v1, "goToNoMusicInfoPage(), m_tl_MusicMainPage != null"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 2213
    const-string v0, "[MusicWidget3D]"

    const-string v1, "goToNoMusicInfoPage(), m_tl_MusicMainPage.stop()"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "empty_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2219
    :cond_1
    return-void
.end method

.method protected goToNormalSong()V
    .locals 3

    .prologue
    .line 2249
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 2250
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2251
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 2252
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "song"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 2253
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_2

    .line 2254
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 2258
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_1
    :goto_0
    return-void

    .line 2256
    .restart local v0       #marker:Lcom/htc/fusion/fx/Marker;
    :cond_2
    const-string v1, "[MusicWidget3D]"

    const-string v2, "goToNormalSong getMarker song fail"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected goToPluginSong()V
    .locals 3

    .prologue
    .line 2240
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 2241
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 2243
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "song_dynamic"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 2244
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 2246
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_1
    return-void
.end method

.method protected handleButtons(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 2159
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### handleButtons(), isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_2

    .line 2162
    :cond_0
    const-string v0, "[MusicWidget3D]"

    const-string v1, "handleButtons, Some one button is null."

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_1
    :goto_0
    return-void

    .line 2166
    :cond_2
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextButton.getEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrevButton.getEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayPauseButton.getEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_3

    .line 2171
    const-string v0, "[MusicWidget3D]"

    const-string v1, "handleButtons, The status is the same, no need to change."

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :cond_3
    iput-boolean p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsButtonEnabled:Z

    .line 2176
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 2180
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 2181
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 2183
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextButton.getEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrevButton.getEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayPauseButton.getEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method handleNextEvent()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 902
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    iget-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    if-ne v0, v2, :cond_1

    .line 905
    const-string v0, "[MusicWidget3D]"

    const-string v1, "next, discard because is updating"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    const-string v0, "[MusicWidget3D]"

    const-string v1, "next button is clicked"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->next()V

    .line 911
    iput-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 912
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 921
    :cond_3
    const-string v0, "[MusicWidget3D]"

    const-string v1, "next button: Do nothing if widget is not visible."

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleNoMusic(Ljava/lang/String;)V
    .locals 7
    .parameter "errorText"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1231
    const-string v4, "[MusicWidget3D]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMusic...errorText: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-boolean v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    if-eqz v4, :cond_3

    .line 1241
    if-nez p1, :cond_2

    .line 1243
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorText()V

    .line 1250
    :goto_0
    const-string v4, "[MusicWidget3D]"

    const-string v5, "Error state"

    invoke-static {v4, v5}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, errorString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1255
    const-string v4, "[MusicWidget3D]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_0
    iput-boolean v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsErrorState:Z

    .line 1259
    iget-boolean v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsErrorState:Z

    invoke-virtual {p0, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->moveButton(Z)V

    .line 1260
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToNoMusicInfoPage()V

    .line 1289
    .end local v1           #errorString:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleButtons(Z)V

    .line 1290
    return-void

    .line 1247
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_3
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    .line 1272
    const-string v4, "[MusicWidget3D]"

    const-string v5, "is not Error state"

    invoke-static {v4, v5}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iput-boolean v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsErrorState:Z

    .line 1274
    iget-boolean v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsErrorState:Z

    invoke-virtual {p0, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->moveButton(Z)V

    .line 1275
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToMainPage()V

    .line 1277
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v4, :cond_1

    .line 1281
    :try_start_0
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlayPauseState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1283
    :catch_0
    move-exception v0

    .line 1285
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    move v2, v3

    .line 1289
    goto :goto_2
.end method

.method protected handleNonUIMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 193
    const/4 v2, 0x1

    .line 195
    .local v2, isHandle:Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 219
    const/4 v2, 0x0

    .line 223
    :goto_0
    return v2

    .line 197
    :pswitch_0
    const-string v3, "[MusicWidget3D]"

    const-string v4, "mNonUiHandler message: NONUI_MSG_UPDATE_MUSIC_INFO. "

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, animationType:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 203
    .local v1, data:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updateMusicInfo(Landroid/os/Bundle;)V

    goto :goto_0

    .line 206
    .end local v0           #animationType:I
    .end local v1           #data:Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleNextEvent()V

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handlePrevEvent()V

    goto :goto_0

    .line 215
    :pswitch_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handlePrevEvent()V
    .locals 7

    .prologue
    const-wide/16 v5, 0xbb8

    const/4 v2, 0x1

    const/4 v4, 0x4

    .line 948
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 949
    iget-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    if-ne v1, v2, :cond_1

    .line 950
    const-string v1, "[MusicWidget3D]"

    const-string v2, "prev, discard because is updating"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const-string v1, "[MusicWidget3D]"

    const-string v2, "prev button is clicked"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->prev()V

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_2

    .line 958
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 966
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 968
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v1, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    .line 969
    :cond_3
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in handlePrevEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 961
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 962
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in handlePrevEvent ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 974
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    const-string v1, "[MusicWidget3D]"

    const-string v2, "prev button: Do nothing if widget is not visible."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUiHandlerMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 235
    const/4 v2, 0x1

    .line 236
    .local v2, isHandle:Z
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 272
    :pswitch_0
    const/4 v2, 0x0

    .line 275
    :goto_0
    return v2

    .line 238
    :pswitch_1
    const-string v5, "[MusicWidget3D]"

    const-string v6, "mUiHandler message: UI_MSG_ON_BIND_SERVICE. "

    invoke-static {v5, v6}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->bindMusicPlaybackService()V

    goto :goto_0

    .line 242
    :pswitch_2
    monitor-enter p0

    .line 243
    :try_start_0
    const-string v5, "[MusicWidget3D]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUiHandler message: UI_MSG_ON_UNBIND_SERVICE. isWidgetVisible(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->unbindMusicPlaybackService()V

    .line 248
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 252
    :pswitch_3
    const-string v5, "[MusicWidget3D]"

    const-string v6, "mUiHandler message: UI_MSG_UPDATE_MUSIC_INFO. "

    invoke-static {v5, v6}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, animationType:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 258
    .local v1, data:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updateMusicInfo(Landroid/os/Bundle;)V

    goto :goto_0

    .line 263
    .end local v0           #animationType:I
    .end local v1           #data:Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->refreshNow()J

    move-result-wide v3

    .line 264
    .local v3, next:J
    invoke-virtual {p0, v3, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->queueNextRefresh(J)V

    goto :goto_0

    .line 268
    .end local v3           #next:J
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->refreshNow()J

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected handleWorkerMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 1031
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1064
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1033
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->doConfigurationChange()V

    goto :goto_0

    .line 1037
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    const-string v1, "[MusicWidget3D]"

    const-string v2, "onResume(), Service is connected, update music info."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1044
    :cond_0
    const-string v1, "[MusicWidget3D]"

    const-string v2, "onResume(), Service is not connected, bind it."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 690
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 692
    if-nez v0, :cond_0

    .line 693
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Scene is null."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initControls(Lcom/htc/fusion/fx/FxScene;)V

    .line 698
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initMainPage(Lcom/htc/fusion/fx/FxScene;)V

    .line 699
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initCommonResource()V

    .line 700
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initHitbox(Lcom/htc/fusion/fx/FxScene;)V

    .line 701
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initButtons(Lcom/htc/fusion/fx/FxScene;)V

    .line 702
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 703
    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V

    .line 704
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initWorkerHandler()V

    .line 705
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    .line 706
    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurAlbumID:I

    goto :goto_0
.end method

.method protected initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V
    .locals 4
    .parameter "scene"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtWidth:I

    .line 600
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtHeight:I

    .line 601
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Album Art -> mAlbumArtWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAlbumArtHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAlbumArt mCurrAlbumArt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    monitor-enter p0

    .line 608
    :try_start_0
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sss CurrTrans = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    .line 610
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v1, v2, :cond_2

    .line 612
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    .line 627
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "star"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 628
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 629
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end CurrTrans = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    monitor-exit p0

    .line 631
    return-void

    .line 615
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 618
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v1, v2, :cond_0

    .line 621
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected initButtonState(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsPlaying:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsButtonEnabled:Z

    if-ne v0, v1, :cond_1

    .line 678
    :goto_1
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 676
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-boolean v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsButtonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected initButtons(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 999
    const-string v0, "button.music_right"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 1002
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1003
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1005
    const-string v0, "button.music_left"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 1007
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1008
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1010
    const-string v0, "timeline.center_play_stop"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1012
    const-string v0, "button.music_center"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 1015
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1016
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1017
    return-void
.end method

.method protected initCommonResource()V
    .locals 2

    .prologue
    .line 712
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    .line 715
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    const-string v1, "<unknown>"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/MusicUtils;->getUnknownArtistStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->UNKNOWN_ARTIST:Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    const-string v1, "<unknown>"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/MusicUtils;->getUnknownAlbumStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->UNKNOWN_ALBUM:Ljava/lang/String;

    .line 719
    return-void
.end method

.method protected initControls(Lcom/htc/fusion/fx/FxScene;)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 723
    sget-object v1, Lcom/htc/MusicWidget3D/Constants;->widget4x2ItemIdentifier:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 725
    .local v0, sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    if-nez v0, :cond_0

    .line 726
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Cannot find children in 4x2 initControls"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :goto_0
    return-void

    .line 730
    :cond_0
    array-length v1, v0

    sget-object v2, Lcom/htc/MusicWidget3D/Constants;->widget4x2ItemIdentifier:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 731
    const-string v1, "[MusicWidget3D]"

    const-string v2, "The count of sceneChildren is diffrenet from widget4x2ItemIdentifier"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 736
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNextButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 737
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPrevButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 738
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 739
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 740
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicMainPage:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 741
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 742
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 743
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 744
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 745
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 746
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRestTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 747
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxProgressBar;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

    .line 748
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 749
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 750
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 751
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 752
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 753
    const/16 v1, 0x12

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 754
    const/16 v1, 0x13

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 755
    const/16 v1, 0x14

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPluginIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 756
    const/16 v1, 0x15

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 757
    const/16 v1, 0x16

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 758
    const/16 v1, 0x17

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 759
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 761
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initMarqueeControls()V

    .line 762
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initTiltFrame()V

    goto/16 :goto_0
.end method

.method protected initHitbox(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    const/4 v1, 0x1

    .line 859
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 860
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 861
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 862
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMusicWidgetHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWidgetClickListener:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$MusicWidgetClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 863
    return-void
.end method

.method protected initMainPage(Lcom/htc/fusion/fx/FxScene;)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToNoMusicInfoPage()V

    .line 854
    return-void
.end method

.method protected initMarqueeControls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicSong:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 782
    const-string v0, "[MusicWidget3D]"

    const-string v1, "initMarqueeControls"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "timeline.titlemarquee2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 788
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 791
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSecMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 794
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 795
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSecMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "timeline.titlemarquee2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 805
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 807
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "textlabel.music4x4_song2"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSecMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 810
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 811
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSecMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 821
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setEllipsize(I)V

    .line 822
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setFadeout(IF)V

    .line 829
    :cond_2
    return-void
.end method

.method protected initMusicInfo(Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->initAlbumArt(Lcom/htc/fusion/fx/FxScene;)V

    .line 596
    return-void
.end method

.method protected initTiltFrame()V
    .locals 3

    .prologue
    .line 766
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 768
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltAnimStartFrame:I

    .line 769
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltAnimEndFrame:I

    .line 772
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 773
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "tilt"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 774
    .restart local v0       #marker:Lcom/htc/fusion/fx/Marker;
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltMusicStartFrame:I

    .line 775
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltMusicEndFrame:I

    .line 778
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_1
    return-void
.end method

.method protected initTrackInfo(Lcom/htc/fusion/fx/FxScene;)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->goToNormalSong()V

    .line 636
    monitor-enter p0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrTrackName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrTrackName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updateTrackName(Ljava/lang/String;)V

    .line 643
    :goto_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrArtistName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 648
    :goto_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrPlayTime:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 649
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrPlayTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 653
    :goto_2
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrRestTime:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 654
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRestTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrRestTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 658
    :goto_3
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 659
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 661
    :cond_0
    monitor-exit p0

    .line 662
    return-void

    .line 641
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setTrackName(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 646
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :cond_3
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 656
    :cond_4
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRestTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method protected initWorkerHandler()V
    .locals 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    new-instance v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$5;

    invoke-direct {v1, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$5;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 1028
    return-void
.end method

.method protected isServiceConnected()Z
    .locals 1

    .prologue
    .line 1138
    monitor-enter p0

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isWidgetVisible()Z
    .locals 1

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mVisible:Z

    return v0
.end method

.method protected moveButton(Z)V
    .locals 5
    .parameter "isNoMusic"

    .prologue
    const/4 v4, 0x1

    .line 1296
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1297
    const-string v2, "[MusicWidget3D]"

    const-string v3, "mContext is null in moveButton"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v2, :cond_2

    .line 1302
    const-string v2, "[MusicWidget3D]"

    const-string v3, "m_tl_MusicButton is null in moveButton"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1306
    :cond_2
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1308
    .local v0, diff:I
    if-ne p1, v4, :cond_3

    .line 1309
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getBtnInCenter()Z

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1310
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0

    .line 1314
    :cond_3
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getBtnInCenter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "Right"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    .line 1316
    .local v1, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v1, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MusicButton:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v3, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method protected next()V
    .locals 3

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1125
    const-string v1, "[MusicWidget3D]"

    const-string v2, "next, mMediaPlaybackService is null!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1131
    const-string v1, "[MusicWidget3D]"

    const-string v2, "[ATS][com.htc.MusicWidget][next_music][successful]"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 519
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== onConfigurationChange() === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 312
    const-string v0, "[MusicWidget3D]"

    const-string v1, "=== onCreate() ==="

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 317
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecentAlbumartUpdate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    .line 319
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    .line 326
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->preloadScene()V

    .line 327
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->init()V

    .line 328
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 478
    const-string v0, "[MusicWidget3D]"

    const-string v1, "=== onDestroy() ==="

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 481
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 483
    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 488
    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->unbindMusicPlaybackService()V

    .line 494
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancelAll()V

    .line 496
    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 499
    :cond_2
    return-void
.end method

.method public onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 535
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "[MusicWidget3D]"

    const-string v1, "received host message HOST_ORIENTATION_CHANGE_COMPLETE"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 449
    const-string v0, "[MusicWidget3D]"

    const-string v1, "=== onPause() ==="

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mVisible:Z

    .line 454
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 432
    const-string v0, "[MusicWidget3D]"

    const-string v1, "=== onResume() ==="

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mVisible:Z

    .line 437
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v0, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 446
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "[MusicWidget3D]"

    const-string v1, "=== onStart() ==="

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    .line 429
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "[MusicWidget3D]"

    const-string v1, "=== onStop() ==="

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    .line 474
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltAnimStartFrame:I

    iget v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltAnimEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TiltMusic:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltMusicStartFrame:I

    iget v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTiltMusicEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 513
    :cond_1
    return-void
.end method

.method protected declared-synchronized playAlbumAnimation(ILandroid/graphics/Bitmap;Z)V
    .locals 5
    .parameter "type"
    .parameter "newAlbumArt"
    .parameter "isNewAlbumArt"

    .prologue
    const/4 v2, 0x1

    .line 1892
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 1893
    const-string v0, "[MusicWidget3D]"

    const-string v1, "No album Art Animation"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1897
    :cond_1
    :try_start_1
    const-string v0, "[MusicWidget3D]"

    const-string v1, "speed = 1.5"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    if-ne p1, v2, :cond_4

    .line 1901
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1902
    const-string v0, "[MusicWidget3D]"

    const-string v1, "animation stop"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1905
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_2
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v0, v1, :cond_3

    .line 1909
    invoke-virtual {p0, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V

    .line 1914
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "play_left_next"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1916
    const-string v0, "[MusicWidget3D]"

    const-string v1, "2 left out, 1 right in"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1918
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v0, v1, :cond_0

    .line 1920
    invoke-virtual {p0, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    .line 1924
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "play_left_back"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1926
    const-string v0, "[MusicWidget3D]"

    const-string v1, "1 left out, 2 right in"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    goto :goto_0

    .line 1930
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 1932
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1933
    const-string v0, "[MusicWidget3D]"

    const-string v1, "animation stop"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1935
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1936
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    :cond_5
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v0, v1, :cond_6

    .line 1944
    invoke-virtual {p0, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V

    .line 1948
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "play_right_next"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1950
    const-string v0, "[MusicWidget3D]"

    const-string v1, "2 right out, 1 left in"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    goto/16 :goto_0

    .line 1952
    :cond_6
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v0, v1, :cond_0

    .line 1954
    invoke-virtual {p0, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    .line 1957
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_AlbumArtAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "play_right_back"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1959
    const-string v0, "[MusicWidget3D]"

    const-string v1, "1 right out, 2 left in"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    goto/16 :goto_0

    .line 1963
    :cond_7
    if-eqz p3, :cond_9

    .line 1964
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAlbumArt, m_nCurrTrans: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v0, v1, :cond_8

    .line 1967
    invoke-virtual {p0, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1968
    :cond_8
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v0, v1, :cond_0

    .line 1970
    invoke-virtual {p0, p2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1973
    :cond_9
    const-string v0, "[MusicWidget3D]"

    const-string v1, "updateAlbumArt 4x4, the same album art. No need to set it again."

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized playTrackAnimation(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 1981
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 1983
    const-string v0, "[MusicWidget3D]"

    const-string v1, "No track info Animation"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    :goto_0
    monitor-exit p0

    return-void

    .line 1986
    :cond_0
    :try_start_1
    const-string v0, "[MusicWidget3D]"

    const-string v1, "speed = 1.5"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1991
    const-string v0, "[MusicWidget3D]"

    const-string v1, "animation stop"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1993
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is playing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_TrackInfoAnim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "fly_in"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected playback()V
    .locals 3

    .prologue
    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1071
    const-string v1, "[MusicWidget3D]"

    const-string v2, "playback, mMediaPlaybackService is null!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1076
    const-string v1, "[MusicWidget3D]"

    const-string v2, "4x2, playback, mMediaPlaybackService is Dmc or PushMode!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1080
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1081
    const-string v1, "[MusicWidget3D]"

    const-string v2, "[ATS][com.htc.MusicWidget][press_pause][successful]"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    .line 1083
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1086
    :cond_2
    const-string v1, "[MusicWidget3D]"

    const-string v2, "[ATS][com.htc.MusicWidget][press_play][successful]"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1088
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->queueNextRefresh(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected preloadScene()V
    .locals 15

    .prologue
    const v14, 0x7f050007

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getProtraitScenePath()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, protraitScenePath:Ljava/lang/String;
    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const-string v10, "textlabel.empty_page"

    aput-object v10, v2, v12

    const-string v10, "textlabel.music4x4_song"

    aput-object v10, v2, v11

    const-string v10, "textlabel.music4x4_singer"

    aput-object v10, v2, v13

    .line 339
    .local v2, initItemIdentifier:[Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v10

    invoke-interface {v10, v4, v11}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    .line 341
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v10, :cond_3

    .line 342
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v6

    .line 343
    .local v6, sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    aget-object v7, v6, v12

    check-cast v7, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 344
    .local v7, textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v7, :cond_0

    .line 345
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 348
    :cond_0
    aget-object v9, v6, v11

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 349
    .local v9, trackName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v9, :cond_1

    .line 350
    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 352
    :cond_1
    aget-object v0, v6, v13

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 353
    .local v0, artistName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v0, :cond_2

    .line 354
    const-string v10, ""

    invoke-virtual {v0, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 355
    :cond_2
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v10}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 359
    .end local v0           #artistName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v6           #sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    .end local v7           #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v9           #trackName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getLandScapeScenePath()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, landscapeScenePath:Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 362
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v10

    invoke-interface {v10, v3, v11}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    .line 363
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v10, :cond_7

    .line 364
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v10, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v6

    .line 365
    .restart local v6       #sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    aget-object v7, v6, v12

    check-cast v7, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 366
    .restart local v7       #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v7, :cond_4

    .line 367
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 370
    :cond_4
    aget-object v9, v6, v11

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 371
    .restart local v9       #trackName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v9, :cond_5

    .line 372
    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 374
    :cond_5
    aget-object v0, v6, v13

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 375
    .restart local v0       #artistName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v0, :cond_6

    .line 376
    const-string v10, ""

    invoke-virtual {v0, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 377
    :cond_6
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v10}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 380
    .end local v0           #artistName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v6           #sceneChildren:[Lcom/htc/fusion/fx/FxObject;
    .end local v7           #textLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v9           #trackName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_7
    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 383
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v5, 0x0

    .line 384
    .local v5, scene:Lcom/htc/fusion/fx/FxScene;
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v11, :cond_9

    .line 385
    iget-object v5, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mLandscapeScene:Lcom/htc/fusion/fx/FxScene;

    .line 390
    :goto_0
    if-nez v5, :cond_a

    .line 397
    :cond_8
    :goto_1
    return-void

    .line 387
    :cond_9
    iget-object v5, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProtraitScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0

    .line 394
    :cond_a
    const-string v10, "timeline.music_main_page"

    invoke-virtual {v5, v10}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 395
    .local v8, tl:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v8, :cond_8

    .line 396
    const-string v10, "empty_page"

    invoke-virtual {v8, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prev()V
    .locals 6

    .prologue
    .line 1098
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_1

    .line 1099
    const-string v2, "[MusicWidget3D]"

    const-string v3, "prev, mMediaPlaybackService is null!"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1104
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "previous"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1118
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1110
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 1111
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1112
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1113
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1114
    :cond_3
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected queueNextRefresh(J)V
    .locals 6
    .parameter "delay"

    .prologue
    const/4 v4, 0x4

    .line 2022
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2023
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2024
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2025
    const/4 v2, 0x0

    .line 2027
    .local v2, playing:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 2028
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2032
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2033
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2035
    .end local v2           #playing:Z
    :cond_1
    return-void

    .line 2029
    .restart local v2       #playing:Z
    :catch_0
    move-exception v0

    .line 2030
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueNextRefresh, remoteException e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected refreshNow()J
    .locals 13

    .prologue
    .line 2039
    :try_start_0
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v9, :cond_1

    .line 2040
    const-wide/16 v7, 0x1f4

    .line 2079
    :cond_0
    :goto_0
    return-wide v7

    .line 2042
    :cond_1
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    .line 2043
    .local v5, pos:J
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 2045
    .local v0, dur:J
    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x3e8

    rem-long v11, v5, v11

    sub-long v7, v9, v11

    .line 2047
    .local v7, remaining:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-ltz v9, :cond_4

    iget-wide v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mDuration:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 2048
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    const-wide/16 v10, 0x3e8

    div-long v10, v5, v10

    invoke-static {v9, v10, v11}, Lcom/htc/MusicWidget3D/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrPlayTime:Ljava/lang/String;

    .line 2049
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrPlayTime:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2050
    sub-long v9, v5, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x1

    add-long v3, v9, v11

    .line 2052
    .local v3, left:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2

    .line 2053
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    invoke-static {v10, v11, v12}, Lcom/htc/MusicWidget3D/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrRestTime:Ljava/lang/String;

    .line 2057
    :goto_1
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRestTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrRestTime:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2059
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2064
    :goto_2
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v9, :cond_0

    .line 2065
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

    long-to-float v10, v5

    iget-wide v11, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mDuration:J

    long-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValueByPercentage(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2074
    .end local v0           #dur:J
    .end local v3           #left:J
    .end local v5           #pos:J
    .end local v7           #remaining:J
    :catch_0
    move-exception v2

    .line 2075
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "[MusicWidget3D]"

    const-string v10, "Access service: IHtcMediaPlaybackService failed in setupContentView()"

    invoke-static {v9, v10}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const-wide/16 v7, 0x1f4

    goto/16 :goto_0

    .line 2055
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #dur:J
    .restart local v3       #left:J
    .restart local v5       #pos:J
    .restart local v7       #remaining:J
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    const-wide/16 v10, 0x3e8

    div-long v10, v3, v10

    invoke-static {v9, v10, v11}, Lcom/htc/MusicWidget3D/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrRestTime:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2077
    .end local v0           #dur:J
    .end local v3           #left:J
    .end local v5           #pos:J
    .end local v7           #remaining:J
    :catch_1
    move-exception v2

    .line 2078
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "[MusicWidget3D]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refreshNow, e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-wide/16 v7, 0x1f4

    goto/16 :goto_0

    .line 2062
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #dur:J
    .restart local v3       #left:J
    .restart local v5       #pos:J
    .restart local v7       #remaining:J
    :cond_3
    const-wide/16 v7, 0x1f4

    goto :goto_2

    .line 2067
    .end local v3           #left:J
    :cond_4
    const-wide/16 v7, 0x3e8

    .line 2068
    :try_start_2
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

    if-eqz v9, :cond_0

    .line 2069
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mProgressBar:Lcom/htc/fusion/fx/controls/FxProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxProgressBar;->setValueByPercentage(F)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method protected refreshProgress()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 1709
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 1710
    const-string v0, "[MusicWidget3D]"

    const-string v1, "MediaPlaybackService is null in refreshProgress"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_0
    :goto_0
    return-void

    .line 1714
    :cond_1
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1715
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->queueNextRefresh(J)V

    goto :goto_0

    .line 1718
    :cond_2
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1721
    :cond_3
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected registerReceiver()V
    .locals 4

    .prologue
    .line 1425
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1426
    new-instance v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;

    invoke-direct {v2, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$7;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1458
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1459
    .local v0, filter_1:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1466
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 1467
    new-instance v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;

    invoke-direct {v2, p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V

    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1523
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1524
    .local v1, filter_2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1525
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1526
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1527
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1528
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1529
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1530
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1531
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1532
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1534
    return-void
.end method

.method protected runMarquee()V
    .locals 4

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRunMarquee:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 2284
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mRunMarquee:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->postDelayed(Ljava/lang/Runnable;J)V

    .line 2285
    return-void
.end method

.method sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "delay"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 295
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 300
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 307
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 304
    :cond_2
    const-string v1, "[MusicWidget3D]"

    const-string v2, "sendUpdateMusicInfoMessage, mNonUiHandler is null."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setAlbumArt01(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "albumArt"

    .prologue
    .line 2000
    const-string v1, "[MusicWidget3D]"

    const-string v2, "setAlbumArt01"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_0

    .line 2002
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 2003
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_1

    .line 2004
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2005
    .local v0, point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection01:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-static {v2, p1, v3}, Lcom/htc/MusicWidget3D/MusicUtils;->getAlbumArtReflection(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 2008
    .end local v0           #point:Landroid/graphics/PointF;
    :cond_1
    return-void
.end method

.method protected setAlbumArt02(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "albumArt"

    .prologue
    .line 2011
    const-string v1, "[MusicWidget3D]"

    const-string v2, "setAlbumArt02"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_0

    .line 2013
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArt02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 2014
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_1

    .line 2015
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 2016
    .local v0, point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtReflection02:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-static {v2, p1, v3}, Lcom/htc/MusicWidget3D/MusicUtils;->getAlbumArtReflection(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 2019
    .end local v0           #point:Landroid/graphics/PointF;
    :cond_1
    return-void
.end method

.method protected setErrorString(Ljava/lang/String;)V
    .locals 1
    .parameter "errorText"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 839
    :cond_0
    return-void
.end method

.method protected setErrorText()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1325
    const/4 v4, 0x0

    .line 1326
    .local v4, isReady:Z
    const/4 v2, 0x0

    .line 1327
    .local v2, isDmcMode:Z
    const/4 v3, 0x0

    .line 1330
    .local v3, isPluginNotReady:Z
    :try_start_0
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1332
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v8

    if-ltz v8, :cond_3

    move v4, v6

    .line 1333
    :goto_0
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v8

    if-nez v8, :cond_4

    move v3, v6

    .line 1334
    :goto_1
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1347
    :cond_0
    :goto_2
    if-eqz v3, :cond_6

    .line 1351
    const/4 v5, 0x0

    .line 1352
    .local v5, plugNotReadyMsg:Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 1353
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v5

    .line 1354
    :cond_1
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plugNotReadyMsg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    if-eqz v5, :cond_5

    .line 1357
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1421
    .end local v5           #plugNotReadyMsg:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v4, v7

    .line 1332
    goto :goto_0

    :cond_4
    move v3, v7

    .line 1333
    goto :goto_1

    .line 1338
    :catch_0
    move-exception v1

    .line 1340
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "[MusicWidget3D]"

    const-string v7, "MediaPlaybackService throws a remote exception"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1342
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1344
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in setErrorText(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1364
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #plugNotReadyMsg:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1367
    :catch_2
    move-exception v1

    .line 1369
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "[MusicWidget3D]"

    const-string v7, "Can\'t get plugNotReadyMsg"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1372
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #plugNotReadyMsg:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    .line 1377
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    goto :goto_3

    .line 1379
    :cond_7
    if-nez v4, :cond_9

    .line 1381
    iget-boolean v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHaveSongsInSD:Z

    if-nez v6, :cond_8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1386
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    goto :goto_3

    .line 1390
    :cond_8
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/htc/MusicWidget3D/MusicUtils;->getTrackCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1391
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v0, v7}, Lcom/htc/MusicWidget3D/MusicUtils;->getDatabaseErrorStr(Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/htc/music/IMediaPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    .line 1392
    if-eqz v0, :cond_2

    .line 1396
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 1398
    :catch_3
    move-exception v1

    .line 1400
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setErrorText, (!isReady), e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1407
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_9
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/htc/MusicWidget3D/MusicUtils;->getTrackCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1408
    .restart local v0       #cursor:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v6, v0, v7}, Lcom/htc/MusicWidget3D/MusicUtils;->getDatabaseErrorStr(Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/htc/music/IMediaPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorString(Ljava/lang/String;)V

    .line 1409
    if-eqz v0, :cond_2

    .line 1413
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 1415
    :catch_4
    move-exception v1

    .line 1417
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setErrorText, else, e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method protected setTrackName(Ljava/lang/String;)V
    .locals 2
    .parameter "trackName"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 847
    :goto_0
    return-void

    .line 846
    :cond_0
    const-string v0, "[MusicWidget3D]"

    const-string v1, "setTrackName mTrackName = null"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected syncRepeatButtonImage()V
    .locals 0

    .prologue
    .line 1753
    return-void
.end method

.method protected syncShuffleButtonImage()V
    .locals 0

    .prologue
    .line 1758
    return-void
.end method

.method protected unbindMusicPlaybackService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1204
    const-string v0, "[MusicWidget3D]"

    const-string v1, "unbindMusicPlaybackService()"

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->unregisterReceiver()V

    .line 1213
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1216
    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1217
    iput-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    .line 1223
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleButtons(Z)V

    .line 1224
    return-void

    .line 1221
    :cond_1
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindMusicPlaybackService(), mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mServiceConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unregisterReceiver()V
    .locals 4

    .prologue
    .line 1540
    :try_start_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1543
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1545
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 1547
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1548
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mSDCardScanStatusReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    :cond_1
    :goto_0
    return-void

    .line 1551
    :catch_0
    move-exception v0

    .line 1553
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateAlbumArt(I)V
    .locals 9
    .parameter "type"

    .prologue
    .line 1762
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumArt(), type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before update AlbumArt mCurrTrans = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_0

    .line 1765
    const-string v6, "[MusicWidget3D]"

    const-string v7, "mMediaPlaybackService is null in updateAlbumArt"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    :goto_0
    return-void

    .line 1770
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1772
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    .line 1773
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbumArt, mMediaPlaybackService == null"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1883
    :catch_0
    move-exception v3

    .line 1884
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbum 4x4 Exception: "

    invoke-static {v6, v7, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1887
    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after update AlbumArt mCurrTrans = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I

    move-result v1

    .line 1778
    .local v1, albumID:I
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, albumArtPath:Ljava/lang/String;
    const/4 v4, 0x1

    .line 1793
    .local v4, isNewAlbumArt:Z
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update Album Art album art path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    if-eqz v4, :cond_3

    .line 1799
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbum albumID != mCurAlbumID"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iget v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtWidth:I

    iget v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtHeight:I

    invoke-static {v0, v6, v7}, Lcom/htc/MusicWidget3D/MusicUtils;->getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1804
    .local v5, newAlbumArt:Landroid/graphics/Bitmap;
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbum , nextAlbumArt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    iput-object v5, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    .line 1807
    if-nez v5, :cond_2

    .line 1808
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1812
    :cond_2
    invoke-virtual {p0, p1, v5, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->playAlbumAnimation(ILandroid/graphics/Bitmap;Z)V

    .line 1813
    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurAlbumPath:Ljava/lang/String;

    .line 1814
    iput v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurAlbumID:I

    .line 1819
    .end local v5           #newAlbumArt:Landroid/graphics/Bitmap;
    :goto_2
    const-string v6, "[MusicWidget3D]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrTrans = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1817
    :cond_3
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbum albumID == mCurAlbumID"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1822
    .end local v0           #albumArtPath:Ljava/lang/String;
    .end local v1           #albumID:I
    .end local v4           #isNewAlbumArt:Z
    :cond_4
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 1823
    .local v2, curPos:I
    const/4 v0, 0x0

    .line 1824
    .restart local v0       #albumArtPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1825
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    .line 1828
    :cond_5
    iget v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginQueuePos:I

    if-eq v6, v2, :cond_9

    .line 1829
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbum()...(mCurPluginQueuePos != curPos)"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtWidth:I

    iget v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtHeight:I

    invoke-static {v0, v6, v7}, Lcom/htc/MusicWidget3D/MusicUtils;->getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1834
    .restart local v5       #newAlbumArt:Landroid/graphics/Bitmap;
    iput-object v5, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    .line 1835
    if-nez v5, :cond_6

    .line 1836
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbumArt()...plugin mode...newAlbumArt == null"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1840
    :cond_6
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v6, v7, :cond_8

    .line 1842
    invoke-virtual {p0, v5}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    .line 1850
    :cond_7
    :goto_3
    iput v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginQueuePos:I

    .line 1851
    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginAlbumArtPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 1845
    :cond_8
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v6, v7, :cond_7

    .line 1847
    invoke-virtual {p0, v5}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1853
    .end local v5           #newAlbumArt:Landroid/graphics/Bitmap;
    :cond_9
    if-eqz v0, :cond_e

    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginAlbumArtPath:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1855
    :cond_a
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbum()...Change album art. From default album art to real album art."

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtWidth:I

    iget v7, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mAlbumArtHeight:I

    invoke-static {v0, v6, v7}, Lcom/htc/MusicWidget3D/MusicUtils;->getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1858
    .restart local v5       #newAlbumArt:Landroid/graphics/Bitmap;
    iput-object v5, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrAlbumArt:Landroid/graphics/Bitmap;

    .line 1860
    if-nez v5, :cond_b

    .line 1861
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbumArt()...plugin mode...newAlbumArt == null"

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1866
    :cond_b
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v6, v7, :cond_d

    .line 1868
    invoke-virtual {p0, v5}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    .line 1875
    :cond_c
    :goto_4
    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurPluginAlbumArtPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 1871
    :cond_d
    iget-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v7, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v6, v7, :cond_c

    .line 1872
    invoke-virtual {p0, v5}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 1879
    .end local v5           #newAlbumArt:Landroid/graphics/Bitmap;
    :cond_e
    const-string v6, "[MusicWidget3D]"

    const-string v7, "updateAlbum()...Do nothing when queue position is the same and album art path is the same as previous one."

    invoke-static {v6, v7}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected updateMusicInfo(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const/4 v13, 0x4

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1558
    iput-boolean v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 1559
    const-string v8, "[MusicWidget3D]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMusicInfo() isWidgetVisible(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1561
    const-string v8, "[MusicWidget3D]"

    const-string v9, "updateMusicInfo(), Don\'t update music info when widget is not in foreground."

    invoke-static {v8, v9}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_e

    .line 1569
    const-string v8, "[MusicWidget3D]"

    const-string v10, "updateMusicInfo start"

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlayPauseState(Z)V

    .line 1573
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 1574
    .local v6, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, artist:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v8, "<unknown>"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1576
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->UNKNOWN_ARTIST:Ljava/lang/String;

    .line 1578
    :cond_2
    const-string v8, "reloadqueue"

    const/4 v10, 0x1

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1580
    .local v4, needReoladQueue:Z
    if-eqz v4, :cond_4

    .line 1581
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 1582
    .local v5, status:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "mounted_ro"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    if-nez v6, :cond_4

    if-nez v0, :cond_4

    .line 1586
    const-string v8, "[MusicWidget3D]"

    const-string v10, "updateMusicInfo()... No information, try to reload queue..."

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 1589
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 1590
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1591
    if-eqz v0, :cond_4

    const-string v8, "<unknown>"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1592
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->UNKNOWN_ARTIST:Ljava/lang/String;

    .line 1596
    .end local v5           #status:Ljava/lang/String;
    :cond_4
    const-string v8, "animationtype"

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1597
    .local v7, type:I
    if-ltz v7, :cond_5

    const/4 v8, 0x2

    if-le v7, v8, :cond_6

    .line 1598
    :cond_5
    const/4 v7, 0x0

    .line 1601
    :cond_6
    invoke-virtual {p0, v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updateAlbumArt(I)V

    .line 1603
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1606
    .local v3, isPluginNotReady:Z
    :goto_1
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v3, :cond_7

    if-nez v6, :cond_a

    if-nez v0, :cond_a

    .line 1610
    :cond_7
    const-string v8, "[MusicWidget3D]"

    const-string v10, "updateMusicInfo()...(title==null && name==null && albumArtPath==null)..."

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    .line 1612
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleNoMusic(Ljava/lang/String;)V

    .line 1645
    :cond_8
    :goto_2
    const-string v8, "[MusicWidget3D]"

    const-string v10, "updateMusicInfo end"

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    .end local v0           #artist:Ljava/lang/String;
    .end local v3           #isPluginNotReady:Z
    .end local v4           #needReoladQueue:Z
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #type:I
    :goto_3
    const-string v8, "[MusicWidget3D]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TrackName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrTrackName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ArtistName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrArtistName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1678
    iput-boolean v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 1679
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v8, :cond_0

    .line 1680
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v8, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1681
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v8, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .restart local v0       #artist:Ljava/lang/String;
    .restart local v4       #needReoladQueue:Z
    .restart local v6       #title:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_9
    move v3, v9

    .line 1603
    goto :goto_1

    .line 1615
    .restart local v3       #isPluginNotReady:Z
    :cond_a
    :try_start_1
    const-string v8, "[MusicWidget3D]"

    const-string v10, "Got Music..."

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-boolean v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    if-eqz v8, :cond_b

    .line 1617
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    .line 1618
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleNoMusic(Ljava/lang/String;)V

    .line 1620
    :cond_b
    invoke-virtual {p0, v7}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->playTrackAnimation(I)V

    .line 1621
    invoke-virtual {p0, v6}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updateTrackName(Ljava/lang/String;)V

    .line 1623
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v8, :cond_c

    .line 1624
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v8, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1626
    :cond_c
    iput-object v6, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrTrackName:Ljava/lang/String;

    .line 1627
    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrArtistName:Ljava/lang/String;

    .line 1630
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->syncRepeatButtonImage()V

    .line 1631
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->syncShuffleButtonImage()V

    .line 1633
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mDuration:J

    .line 1635
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->refreshProgress()V

    .line 1638
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v8, :cond_8

    .line 1639
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1640
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1641
    :cond_d
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v10, 0x1

    const-wide/16 v11, 0x1f4

    invoke-interface {v8, v10, v11, v12}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1672
    .end local v0           #artist:Ljava/lang/String;
    .end local v3           #isPluginNotReady:Z
    .end local v4           #needReoladQueue:Z
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #type:I
    :catch_0
    move-exception v1

    .line 1673
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "[MusicWidget3D]"

    const-string v10, "Access service: IHtcMediaPlaybackService failed in setupContentView()"

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1678
    iput-boolean v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 1679
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v8, :cond_0

    .line 1680
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v8, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1681
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v8, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1647
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_e
    :try_start_3
    const-string v8, "[MusicWidget3D]"

    const-string v10, "updateMusicInfo(), mMediaPlaybackService is null..."

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v10, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v8, v10, :cond_11

    .line 1652
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt02(Landroid/graphics/Bitmap;)V

    .line 1660
    :cond_f
    :goto_4
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setTrackName(Ljava/lang/String;)V

    .line 1661
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v8, :cond_10

    .line 1662
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mArtistName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v10, ""

    invoke-virtual {v8, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1663
    :cond_10
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrTrackName:Ljava/lang/String;

    .line 1664
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mCurrArtistName:Ljava/lang/String;

    .line 1666
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlayPauseState(Z)V

    .line 1668
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mUiHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 1674
    :catch_1
    move-exception v2

    .line 1675
    .local v2, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "[MusicWidget3D]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in update music info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1678
    iput-boolean v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 1679
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v8, :cond_0

    .line 1680
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v8, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1681
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v8, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1655
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_11
    :try_start_5
    iget-object v8, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_nCurrTrans:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v10, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    if-ne v8, v10, :cond_f

    .line 1657
    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->getDefaultAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setAlbumArt01(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 1678
    :catchall_0
    move-exception v8

    iput-boolean v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsUpdatingMusicInfo:Z

    .line 1679
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    if-eqz v9, :cond_12

    .line 1680
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v9, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1681
    iget-object v9, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mNonUiHandler:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;

    invoke-virtual {v9, v13}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$NonUiHandler;->removeMessages(I)V

    :cond_12
    throw v8
.end method

.method protected updatePlayPauseState(Z)V
    .locals 4
    .parameter "isPlaying"

    .prologue
    .line 2084
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayPauseState, isPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayPauseState, m_tl_PlayPause.GetFrame(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    iput-boolean p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsPlaying:Z

    .line 2088
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_0

    .line 2089
    const-string v1, "[MusicWidget3D]"

    const-string v2, "updatePlayPauseState, m_tl_PlayPause is null!"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :goto_0
    return-void

    .line 2093
    :cond_0
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2094
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 2097
    :cond_1
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    .line 2099
    .local v0, currentFrame:F
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayPauseState, current Frame(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    if-eqz p1, :cond_3

    .line 2102
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isButtonPause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2103
    const-string v1, "[MusicWidget3D]"

    const-string v2, "updatePlayPauseState, icon is correct(music playing), should not change the state."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2107
    :cond_2
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "press_play"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 2110
    :cond_3
    invoke-direct {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isButtonPlay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2111
    const-string v1, "[MusicWidget3D]"

    const-string v2, "updatePlayPauseState, icon is correct(music is stopped), should not change the state."

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2114
    :cond_4
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_PlayPause:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "press_stop"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updatePlaybackPanel()V
    .locals 4

    .prologue
    .line 1728
    const-string v2, "[MusicWidget3D]"

    const-string v3, "updatePlaybackPanel()"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mPlayPauseButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v2, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    .line 1735
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlayPauseState(Z)V

    .line 1736
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isWidgetVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1737
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "[MusicWidget3D]"

    const-string v3, "Access service: IHtcMediaPlaybackService failed in updatePlaybackPanel()"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1742
    .local v1, e1:Ljava/lang/NullPointerException;
    const-string v2, "[MusicWidget3D]"

    const-string v3, "updatePlaybackPanel has NullPointerException!!"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1745
    .end local v1           #e1:Ljava/lang/NullPointerException;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlayPauseState(Z)V

    goto :goto_0
.end method

.method protected updateTrackName(Ljava/lang/String;)V
    .locals 7
    .parameter "trackName"

    .prologue
    .line 1687
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1692
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1693
    .local v3, pluginIcon:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1694
    .local v2, makeupString:Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 1695
    .local v1, imageSpan:Landroid/text/style/ImageSpan;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-interface {v2, v1, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1696
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_0

    .line 1697
    iget-object v4, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1702
    .end local v1           #imageSpan:Landroid/text/style/ImageSpan;
    .end local v2           #makeupString:Landroid/text/Spannable;
    .end local v3           #pluginIcon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 1703
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "[MusicWidget3D]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in updateTrackName. Ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1700
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setTrackName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
