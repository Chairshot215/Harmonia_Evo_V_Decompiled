.class public Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;
.super Ljava/lang/Object;
.source "FxSceneController.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final MESG_HIDE_IMAGE:I = 0x4

.field private static final MESG_HIDE_VIDEO:I = 0x5

.field private static final MESG_INIT_VIDEO:I = 0x8

.field private static final MESG_LISTENER_MEDIA_COMPLETION:I = 0x1

.field private static final MESG_LISTENER_MEDIA_PREPARED:I = 0x2

.field private static final MESG_LISTENER_MEDIA_SEEKTO:I = 0x3

.field private static final MESG_PREPARE_IMAGE:I = 0x6

.field private static final MESG_START_EFFECT:I = 0x7


# instance fields
.field private FRAME_FADEIN:I

.field private FRAME_FADEOUT:I

.field private FRAME_L_FULL:I

.field private FRAME_P_FULL:I

.field private FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

.field private FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

.field private FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

.field private FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

.field private MARKER_FADEIN:Ljava/lang/String;

.field private MARKER_FADEOUT:Ljava/lang/String;

.field private MAX_PLAY_VIDEO_COUNT:I

.field private PLAY_VIDEO_MANY_TIMES:Z

.field private PREFIX:Ljava/lang/String;

.field private final TIMELINE_NAME:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mHandler:Landroid/os/Handler;

.field private mHasPrepareImage:Z

.field private mIsFinishedToPlay:Z

.field private mIsFinishedToPrepare:Z

.field private mIsJustPauseVideo:Z

.field private mIsLooping:Z

.field private mIsPausedStatus:Z

.field private mIsPortrait:Z

.field private mIsPreview:Z

.field private mIsReleasingMedia:Z

.field private mIsSurfaceChanged:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToFadeInVideo:Z

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mPlayVideoCount:I

.field private mPlayingImageIndex:I

.field private mPlayingVideoIndex:I

.field private mPlayingVideoPath:Ljava/lang/String;

.field private mRequestToPlayVideo:Z

.field private mResourceContext:Landroid/content/Context;

.field private mShiftFrame:I

.field private mVideoIndex:I

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;ZZZILandroid/content/Context;)V
    .locals 6
    .parameter "context"
    .parameter "scene"
    .parameter "isPortrait"
    .parameter "isPreview"
    .parameter "isDockMode"
    .parameter "index"
    .parameter "resourceContext"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "[FxSceneController_"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    .line 38
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    .line 39
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    .line 40
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 41
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPortrait:Z

    .line 42
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPreview:Z

    .line 43
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 44
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    .line 45
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingImageIndex:I

    .line 47
    sget-object v0, Lcom/htc/android/WeatherLiveWallpaper/WeatherConst;->DEFAULT_VIDEO_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/htc/android/WeatherLiveWallpaper/WeatherConst;->DEFAULT_VIDEO_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    .line 49
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsLooping:Z

    .line 50
    const-string v0, "fadein"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEIN:Ljava/lang/String;

    .line 51
    const-string v0, "fadeout"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEOUT:Ljava/lang/String;

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_P_FULL:I

    .line 54
    const/16 v0, 0xd2

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_L_FULL:I

    .line 56
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEIN:I

    .line 57
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    .line 59
    iput-boolean v5, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PLAY_VIDEO_MANY_TIMES:Z

    .line 60
    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MAX_PLAY_VIDEO_COUNT:I

    .line 61
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 63
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 66
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z

    .line 69
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    .line 70
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    .line 71
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    .line 72
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mShiftFrame:I

    .line 73
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    .line 74
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mRequestToPlayVideo:Z

    .line 75
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsJustPauseVideo:Z

    .line 78
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    .line 80
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsSurfaceChanged:Z

    .line 82
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 83
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 84
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 85
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 86
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mask"

    aput-object v1, v0, v3

    const-string v1, "timeline.weather_still"

    aput-object v1, v0, v5

    const-string v1, "dynamicImg"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "timeline.weather_A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Weather_A"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->TIMELINE_NAME:[Ljava/lang/String;

    .line 97
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 98
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 100
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 101
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 102
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 105
    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    .line 123
    iput-object p7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 125
    iput-boolean p3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPortrait:Z

    .line 126
    iput-boolean p4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPreview:Z

    .line 128
    if-eqz p4, :cond_2

    .line 129
    if-eqz p5, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DockMode]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitHandler()V

    .line 139
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitFusionListener()V

    .line 140
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitFusion()V

    .line 141
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitMediaListener()V

    .line 143
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 144
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 145
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    .line 146
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    .line 147
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mRequestToPlayVideo:Z

    .line 148
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsJustPauseVideo:Z

    .line 151
    if-ltz p6, :cond_0

    .line 152
    iput p6, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 153
    iput p6, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    .line 155
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 156
    iput-boolean v5, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    .line 159
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsSurfaceChanged:Z

    .line 160
    return-void

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Preview]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Wallpaper]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method private _onCompletion()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 356
    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PLAY_VIDEO_MANY_TIMES:Z

    if-eqz v1, :cond_2

    .line 357
    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 358
    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MAX_PLAY_VIDEO_COUNT:I

    if-ge v1, v2, :cond_2

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 361
    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    if-lt v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 367
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 376
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    .line 377
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->clearPausedStatus()V

    .line 378
    invoke-direct {p0, v3, v3}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 379
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private _onPrepared()V
    .locals 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsLooping:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->startMediaPlayer()V

    .line 387
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->startMediaPlayer()V

    .line 392
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->_onCompletion()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->_onPrepared()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->prepareImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->startEffect(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->initVideo()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEOUT:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized checkDisplayMode()V
    .locals 2

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsSurfaceChanged:Z

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 529
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPortrait:Z

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_P_FULL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 537
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsSurfaceChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_1
    monitor-exit p0

    return-void

    .line 534
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_L_FULL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkVideoEffectStatus()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 802
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mRequestToPlayVideo:Z

    if-eqz v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 805
    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 806
    invoke-direct {p0, v1, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 807
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    .line 808
    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 809
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->clearPausedStatus()V

    .line 811
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 813
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 831
    :cond_0
    :goto_0
    return v0

    .line 822
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsJustPauseVideo:Z

    if-eqz v1, :cond_2

    .line 823
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 828
    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    goto :goto_0

    .line 826
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->engineInvisible()V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 831
    goto :goto_0
.end method

.method private engineInvisible()V
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->clearPausedStatus()V

    .line 664
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->freezeVideoScreen()V

    .line 665
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 666
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 667
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideVideo()V

    .line 668
    return-void
.end method

.method private fadeoutImage()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 905
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 906
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 909
    :cond_0
    return-void
.end method

.method private freezeVideoScreen()V
    .locals 6

    .prologue
    .line 784
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->pauseMediaPlayer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    const/4 v1, 0x0

    .line 787
    .local v1, mFreezed:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->freeze()Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 797
    .end local v1           #mFreezed:Z
    :cond_0
    :goto_0
    return-void

    .line 791
    .restart local v1       #mFreezed:Z
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCachedFrame()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 617
    const/4 v1, 0x0

    .line 620
    .local v1, mFreezed:Z
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->freeze()Ljava/util/concurrent/Future;

    move-result-object v2

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 633
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 634
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    .line 635
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    .line 637
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-eqz v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 639
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mShiftFrame:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    .line 640
    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    if-gez v2, :cond_1

    .line 641
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    .line 658
    :cond_1
    :goto_2
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 628
    const/4 v1, 0x0

    .line 629
    invoke-direct {p0, v3, v3}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v2, v4

    .line 635
    goto :goto_1

    .line 647
    :cond_3
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    if-eqz v2, :cond_4

    .line 648
    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    if-nez v2, :cond_1

    .line 649
    iput-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    goto :goto_2

    .line 653
    :cond_4
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    if-nez v2, :cond_1

    .line 655
    iput-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    goto :goto_2
.end method

.method private hideImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 890
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 892
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 893
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 895
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 898
    :cond_0
    return-void
.end method

.method private hideVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 774
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .line 778
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 779
    return-void
.end method

.method private declared-synchronized initMediaPlayer()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 951
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 953
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 954
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_6

    .line 957
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 959
    iget-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-nez v4, :cond_0

    .line 960
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 962
    :cond_0
    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    iput v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 963
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    .line 964
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 966
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 968
    const/4 v2, 0x0

    .line 969
    .local v2, mConnected:Z
    const/4 v3, 0x0

    .line 970
    .local v3, mRetryTimes:I
    const/4 v1, 0x0

    .line 971
    .local v1, mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 973
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_2

    .line 975
    if-nez v1, :cond_1

    .line 976
    :try_start_2
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->connectMediaPlayer(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 978
    :cond_1
    const-wide/16 v7, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v7, v8, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 994
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 983
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_3

    .line 984
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 987
    :cond_3
    const/4 v2, 0x0

    .line 992
    goto :goto_1

    .line 989
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 990
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 991
    const/4 v2, 0x0

    goto :goto_1

    .line 996
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "WeatherLiveWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "initMediaPlayer() - mConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz v2, :cond_7

    .line 998
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 999
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1000
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1001
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 1002
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsLooping:Z

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1003
    iget-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-nez v4, :cond_5

    .line 1004
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 1006
    :cond_5
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v2           #mConnected:Z
    .end local v3           #mRetryTimes:I
    :cond_6
    move v4, v6

    .line 1021
    :goto_2
    monitor-exit p0

    return v4

    .line 1009
    .restart local v1       #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .restart local v2       #mConnected:Z
    .restart local v3       #mRetryTimes:I
    :cond_7
    :try_start_4
    const-string v4, "WeatherLiveWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FxVT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", !FxVT.connectMediaPlayer(mMediaPlayer).get()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v4, v5

    .line 1011
    goto :goto_2

    .line 1014
    .end local v1           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v2           #mConnected:Z
    .end local v3           #mRetryTimes:I
    :catch_2
    move-exception v0

    .line 1016
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1017
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v5

    .line 1018
    goto :goto_2

    .line 951
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initVideo()V
    .locals 3

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mRequestToPlayVideo:Z

    if-eqz v0, :cond_1

    .line 730
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->initMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 731
    :cond_0
    const-string v0, "WeatherLiveWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "initVideo() - !initMediaPlayer() || mMediaPlayer==null ---> showImage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 733
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    .line 734
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 738
    :cond_1
    return-void
.end method

.method private isMediaPlaying()Z
    .locals 3

    .prologue
    .line 1100
    const/4 v1, 0x0

    .line 1102
    .local v1, isplaying:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z

    if-nez v2, :cond_0

    .line 1103
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1113
    :cond_0
    :goto_0
    return v1

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1110
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private loadImage(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "VideoIndex"

    .prologue
    .line 914
    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingImageIndex:I

    if-ne v4, p1, :cond_1

    .line 915
    const/4 v0, 0x0

    .line 937
    :cond_0
    :goto_0
    return-object v0

    .line 917
    :cond_1
    const/4 v0, 0x0

    .line 918
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 920
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    if-eqz v3, :cond_0

    .line 921
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 922
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 923
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 924
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/htc/weather/WeatherVideo;->getWeatherImagePath(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 927
    .local v2, id:I
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 928
    iput p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingImageIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 931
    .end local v2           #id:I
    :catch_0
    move-exception v1

    .line 932
    .local v1, e:Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 934
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitFusion()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 216
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "FRAME_P_FULL"

    const-string v4, "integer"

    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, id:I
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_P_FULL:I

    .line 220
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "FRAME_L_FULL"

    const-string v4, "integer"

    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_L_FULL:I

    .line 225
    .end local v0           #id:I
    :cond_0
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 228
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->TIMELINE_NAME:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 230
    .local v1, mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 232
    aget-object v2, v1, v7

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 233
    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 234
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 236
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 237
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 242
    :cond_2
    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 243
    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 244
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 246
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 247
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    if-eqz v2, :cond_4

    .line 250
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .line 252
    :cond_4
    iput-boolean v7, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsSurfaceChanged:Z

    .line 253
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->checkDisplayMode()V

    .line 262
    .end local v1           #mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    :cond_5
    return-void
.end method

.method private onInitFusionListener()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$2;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$2;-><init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;-><init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 311
    :cond_1
    return-void
.end method

.method private onInitHandler()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;-><init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    .line 212
    :cond_0
    return-void
.end method

.method private onInitMediaListener()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;-><init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$5;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$5;-><init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-nez v0, :cond_2

    .line 341
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$6;

    invoke-direct {v0, p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$6;-><init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 352
    :cond_2
    return-void
.end method

.method private pauseMediaPlayer()Z
    .locals 2

    .prologue
    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    const/4 v1, 0x1

    .line 1094
    :goto_0
    return v1

    .line 1089
    :catch_0
    move-exception v0

    .line 1091
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 1094
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized playVideo()V
    .locals 5

    .prologue
    .line 689
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mRequestToPlayVideo:Z

    .line 690
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 721
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 698
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 700
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 701
    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    iput v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 711
    :cond_3
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 712
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    .line 715
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 717
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "WeatherLiveWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "playVideo() - mMediaPlayer.pause() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized prepareImage()V
    .locals 3

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    invoke-direct {p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 839
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 842
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 845
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 846
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 850
    :cond_0
    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 852
    const/4 v0, 0x0

    .line 853
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_1
    monitor-exit p0

    return-void

    .line 837
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized releaseMediaPlayer()V
    .locals 6

    .prologue
    .line 1026
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z

    .line 1027
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1030
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1037
    :try_start_2
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 1038
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1039
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1042
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    invoke-static {v2, v3, v4}, Lcom/htc/android/WeatherLiveWallpaper/utility/CustomizeUtility;->disconnectMediaPlayer(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxVideoTexture;I)Z

    .line 1047
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1059
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1060
    monitor-exit p0

    return-void

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "WeatherLiveWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "releaseMediaPlayer() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1037
    :try_start_4
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 1038
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1039
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1042
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    invoke-static {v2, v3, v4}, Lcom/htc/android/WeatherLiveWallpaper/utility/CustomizeUtility;->disconnectMediaPlayer(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxVideoTexture;I)Z

    .line 1047
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1026
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1037
    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1038
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1039
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1042
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iget v5, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    invoke-static {v3, v4, v5}, Lcom/htc/android/WeatherLiveWallpaper/utility/CustomizeUtility;->disconnectMediaPlayer(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxVideoTexture;I)Z

    .line 1047
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 1050
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1053
    :cond_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized showImage(ZZ)V
    .locals 2
    .parameter "hasFadeIn"
    .parameter "isForceUpdate"

    .prologue
    .line 859
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->isMediaPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 885
    :goto_0
    monitor-exit p0

    return-void

    .line 863
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    if-nez v0, :cond_1

    .line 864
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->prepareImage()V

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_4

    .line 868
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 870
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 872
    :cond_2
    if-eqz p1, :cond_5

    .line 873
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEIN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 874
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 880
    :goto_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 882
    :cond_3
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 884
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 878
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private showVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 742
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->checkVideoEffectStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 748
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    if-eqz v0, :cond_2

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->fadeoutImage()V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 753
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FRAME_FADEOUT:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 754
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 757
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->thaw()V

    .line 758
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    .line 760
    :cond_3
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    .line 762
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    if-nez v0, :cond_4

    .line 764
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideImage()V

    .line 766
    :cond_4
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mNeedToFadeInVideo:Z

    goto :goto_0
.end method

.method private startEffect(Z)V
    .locals 2
    .parameter "isPlayVideo"

    .prologue
    .line 553
    monitor-enter p0

    .line 556
    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    if-eqz v0, :cond_2

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->playVideo()V

    .line 573
    :cond_1
    :goto_0
    monitor-exit p0

    .line 574
    return-void

    .line 561
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->isMediaPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    if-nez v0, :cond_4

    .line 566
    :cond_3
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 567
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->prepareImage()V

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startMediaPlayer()V
    .locals 2

    .prologue
    .line 1066
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsReleasingMedia:Z

    if-nez v1, :cond_0

    .line 1067
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    .line 1068
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1075
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private unInitHandler()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPausedStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    .line 487
    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    .line 488
    return-void
.end method

.method public getPausedPosition()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    return v0
.end method

.method public isPausedStatus()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    return v0
.end method

.method public onClearEffect()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideVideo()V

    .line 611
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideImage()V

    .line 612
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    .line 402
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->unInitHandler()V

    .line 403
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 415
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 416
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->clearHandle()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_4

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 423
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mContext:Landroid/content/Context;

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHasPrepareImage:Z

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPlay:Z

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    .line 428
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->clearPausedStatus()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 434
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingImageIndex:I

    .line 435
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 437
    monitor-exit p0

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStartEffect(Z)V
    .locals 4
    .parameter "isPlayVideo"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->checkDisplayMode()V

    .line 546
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    :cond_0
    return-void
.end method

.method public onStopEffect(Z)Z
    .locals 2
    .parameter "justPause"

    .prologue
    .line 578
    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mRequestToPlayVideo:Z

    .line 586
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsJustPauseVideo:Z

    .line 587
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoIndex:I

    .line 588
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayingVideoPath:Ljava/lang/String;

    .line 591
    if-eqz p1, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->pauseMediaPlayer()Z

    .line 593
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->getCachedFrame()V

    .line 594
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->releaseMediaPlayer()V

    .line 599
    :goto_0
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPreview:Z

    if-eqz v0, :cond_1

    .line 600
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showImage(ZZ)V

    .line 603
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsFinishedToPrepare:Z

    .line 604
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    monitor-exit p0

    return v0

    .line 597
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->engineInvisible()V

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplayMode(Z)V
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsSurfaceChanged:Z

    .line 518
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPortrait:Z

    .line 519
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->checkDisplayMode()V

    .line 521
    return-void
.end method

.method public setLoopingMode(Z)V
    .locals 1
    .parameter "isLooping"

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsLooping:Z

    .line 474
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsLooping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->PLAY_VIDEO_MANY_TIMES:Z

    .line 475
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPausedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mIsPausedStatus:Z

    .line 499
    iput p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mCurrentPosition:I

    .line 501
    return-void
.end method

.method public setPlayCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 511
    iput p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mPlayVideoCount:I

    .line 513
    return-void
.end method

.method public setVideoIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 459
    iput p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoIndex:I

    .line 460
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 465
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mVideoPath:Ljava/lang/String;

    .line 468
    :cond_0
    return-void
.end method
