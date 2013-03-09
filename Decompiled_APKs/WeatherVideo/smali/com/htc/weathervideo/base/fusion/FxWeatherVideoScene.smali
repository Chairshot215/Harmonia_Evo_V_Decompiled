.class public Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;
.super Ljava/lang/Object;
.source "FxWeatherVideoScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherVideo"

.field private static final MESG_HIDE_IMAGE:I = 0x4

.field private static final MESG_HIDE_VIDEO:I = 0x5

.field private static final MESG_LISTENER_MEDIA_COMPLETION:I = 0x3

.field private static final MESG_LISTENER_MEDIA_PREPARED:I = 0x1

.field private static final MESG_LISTENER_MEDIA_SEEKTO:I = 0x2

.field private static final MESG_PREPARE_IMAGE:I = 0x6

.field private static final MESG_WALLPAPER_ANIMATION:I = 0xa

.field private static final MESG_WALLPAPER_EFFECT_RETRY:I = 0x9

.field private static final MESG_WALLPAPER_EFFECT_START:I = 0x7

.field private static final MESG_WALLPAPER_EFFECT_STOP:I = 0x8

.field public static mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;


# instance fields
.field private FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

.field private FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

.field private FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

.field private MacPlayVideoCount:I

.field private Mask:Lcom/htc/fusion/fx/FxTimelineControl;

.field private PREFIX:Ljava/lang/String;

.field private final TIMELINE_NAME:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsFinishedToPlay:Z

.field private mIsFinishedToPrepare:Z

.field private mIsJustPauseVideo:Z

.field private mIsLooping:Z

.field private mIsPausedStatus:Z

.field private mIsPreview:Z

.field private mIsReleasingMedia:Z

.field private mLooper:Landroid/os/Looper;

.field private mM10_PORT:Ljava/lang/String;

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

.field private mPlayVideoManyTimes:Z

.field private mPlayingImageIndex:I

.field private mPlayingVideoIndex:I

.field private mPlayingVideoPath:Ljava/lang/String;

.field private mRequestToPlayVideo:Z

.field private mResourceContext:Landroid/content/Context;

.field private mSceneHeight:I

.field private mSceneWidth:I

.field private mShiftFrame:I

.field private mVideoIndex:I

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "videoIndex"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "[FxWeatherVideoScene]: "

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    .line 46
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    .line 47
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPreview:Z

    .line 48
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsLooping:Z

    .line 49
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    .line 51
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 52
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingImageIndex:I

    .line 53
    sget-object v0, Lcom/htc/weather/WeatherVideo;->DEFAULT_VIDEO_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoManyTimes:Z

    .line 57
    iput v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->MacPlayVideoCount:I

    .line 58
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 63
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    .line 66
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    .line 67
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 68
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    .line 69
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mShiftFrame:I

    .line 70
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    .line 71
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    .line 72
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsJustPauseVideo:Z

    .line 75
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    .line 78
    const-string v0, "Port/Weather_wallpaper.m10"

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mM10_PORT:Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 80
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 81
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 82
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 83
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 84
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mask"

    aput-object v1, v0, v4

    const-string v1, "timeline.weather_still"

    aput-object v1, v0, v2

    const-string v1, "dynamicImg"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "timeline.weather_A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Weather_A"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->TIMELINE_NAME:[Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 95
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 97
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 98
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 99
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 102
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    .line 104
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    .line 117
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mSceneWidth:I

    .line 118
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mSceneHeight:I

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxSceneVideo(Landroid/content/Context;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6
    .parameter "context"
    .parameter "videoIndex"
    .parameter "isPreview"
    .parameter "isDockMode"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "[FxWeatherVideoScene]: "

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    .line 46
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    .line 47
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPreview:Z

    .line 48
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsLooping:Z

    .line 49
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 50
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    .line 51
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 52
    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingImageIndex:I

    .line 53
    sget-object v0, Lcom/htc/weather/WeatherVideo;->DEFAULT_VIDEO_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoManyTimes:Z

    .line 57
    iput v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->MacPlayVideoCount:I

    .line 58
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 63
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    .line 66
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    .line 67
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 68
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    .line 69
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mShiftFrame:I

    .line 70
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    .line 71
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    .line 72
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsJustPauseVideo:Z

    .line 75
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    .line 78
    const-string v0, "Port/Weather_wallpaper.m10"

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mM10_PORT:Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 80
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 81
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 82
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 83
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 84
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mask"

    aput-object v1, v0, v4

    const-string v1, "timeline.weather_still"

    aput-object v1, v0, v2

    const-string v1, "dynamicImg"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "timeline.weather_A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Weather_A"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->TIMELINE_NAME:[Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 95
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 97
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 98
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 99
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 102
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    .line 104
    iput-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    .line 117
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mSceneWidth:I

    .line 118
    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mSceneHeight:I

    .line 124
    iput-boolean p3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPreview:Z

    .line 126
    const-string v0, "[FxWeatherVideoScene_"

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    .line 127
    if-eqz p3, :cond_2

    .line 128
    if-eqz p4, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DockMode]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    .line 137
    :goto_0
    if-gez p2, :cond_0

    .line 138
    const/4 p2, 0x0

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxSceneVideo(Landroid/content/Context;I)V

    .line 141
    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Preview]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Wallpaper]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method private FxSceneVideo(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "videoIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    new-instance v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    invoke-direct {v1, p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    sput-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    .line 151
    const-string v1, "com.htc.weathervideo.base"

    invoke-static {p1, v1}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    .line 154
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->getDefValue(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mM10_PORT:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 165
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitHandler()V

    .line 166
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitFusionListener()V

    .line 167
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitFusion()V

    .line 168
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitMediaListener()V

    .line 171
    iput v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 172
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    .line 173
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    .line 174
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    .line 175
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsJustPauseVideo:Z

    .line 179
    iput p2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 180
    iput p2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    .line 181
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    if-ltz v1, :cond_0

    .line 182
    invoke-direct {p0, v3, v3, v3}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 184
    :cond_0
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    .line 185
    return-void

    .line 159
    :cond_1
    :try_start_1
    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->getDefValue(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _onCompletion()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoManyTimes:Z

    if-eqz v1, :cond_2

    .line 447
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 448
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->MacPlayVideoCount:I

    if-ge v1, v2, :cond_2

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 451
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    if-lt v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 460
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WeatherVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_onCompletion() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    .line 471
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->clearPausedStatus()V

    .line 472
    invoke-direct {p0, v3, v3, v4}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 473
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private _onPrepared()V
    .locals 4

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->startMediaPlayer()V

    .line 478
    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsLooping:Z

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 482
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_2
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WeatherVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_onPrepared() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private _onStartEffect(Z)V
    .locals 3
    .parameter "isPlayVideo"

    .prologue
    const/4 v2, 0x0

    .line 694
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-eqz v0, :cond_2

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->playVideo()V

    .line 717
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    if-eq v0, v1, :cond_3

    .line 710
    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 711
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->prepareImage()V

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    .line 714
    invoke-direct {p0, v2, v2, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    goto :goto_0
.end method

.method private _onStopEffect(Z)V
    .locals 2
    .parameter "justPause"

    .prologue
    const/4 v1, 0x0

    .line 733
    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    .line 734
    iput-boolean p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsJustPauseVideo:Z

    .line 735
    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 736
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    .line 741
    if-eqz p1, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 747
    :goto_0
    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPreview:Z

    if-eqz v0, :cond_0

    .line 748
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 753
    :cond_0
    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    .line 754
    return-void

    .line 745
    :cond_1
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->engineInvisible()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onCompletion()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onPrepared()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->prepareImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onStartEffect(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onStopEffect(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->initVideo()V

    return-void
.end method

.method private checkVideoEffectStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 964
    iget-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    if-eqz v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 971
    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 972
    invoke-direct {p0, v1, v0, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 973
    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    .line 974
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 975
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->clearPausedStatus()V

    .line 976
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->initVideo()V

    .line 992
    :goto_0
    return v0

    .line 984
    :cond_0
    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsJustPauseVideo:Z

    if-eqz v1, :cond_1

    .line 985
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 989
    :goto_1
    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    goto :goto_0

    .line 987
    :cond_1
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->engineInvisible()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 992
    goto :goto_0
.end method

.method private engineInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->clearPausedStatus()V

    .line 802
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 804
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideVideo()V

    .line 805
    return-void
.end method

.method private getCachedFrame()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 757
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->freezeVideoScreen()Z

    move-result v0

    .line 760
    .local v0, freezed:Z
    if-eqz v0, :cond_2

    .line 761
    iput v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 762
    iget-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    .line 766
    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mShiftFrame:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 770
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    if-gez v1, :cond_1

    .line 771
    iput v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 779
    :cond_2
    invoke-direct {p0, v2, v2, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 780
    iget-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    if-eqz v2, :cond_3

    .line 781
    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    if-nez v2, :cond_1

    .line 782
    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    goto :goto_0

    .line 787
    :cond_3
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    if-nez v2, :cond_1

    .line 792
    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    goto :goto_0
.end method

.method private getDefaultValue()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method private hideImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1041
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1042
    .local v1, photoTLC:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1043
    .local v0, photoDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v1, :cond_0

    .line 1044
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1045
    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1050
    :cond_0
    return-void
.end method

.method private hideVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 922
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 923
    .local v0, videoTLC:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 924
    .local v1, videoVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;
    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 926
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 928
    :cond_0
    if-eqz v1, :cond_1

    .line 929
    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 931
    return-void
.end method

.method private initMediaPlayer()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1119
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 1121
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1128
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_6

    .line 1130
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-nez v4, :cond_0

    .line 1131
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 1133
    :cond_0
    iget v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 1134
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    .line 1139
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1141
    const/4 v2, 0x0

    .line 1142
    .local v2, mConnected:Z
    const/4 v3, 0x0

    .line 1143
    .local v3, mRetryTimes:I
    const/4 v1, 0x0

    .line 1144
    .local v1, mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 1145
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v4, :cond_2

    .line 1147
    if-nez v1, :cond_1

    .line 1148
    :try_start_2
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->connectMediaPlayer(Landroid/media/MediaPlayer;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1151
    :cond_1
    const-wide/16 v7, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v7, v8, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 1167
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1122
    .end local v1           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v2           #mConnected:Z
    .end local v3           #mRetryTimes:I
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "WeatherVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "initMediaPlayer() - InterruptedException - sleep(1000)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1153
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .restart local v2       #mConnected:Z
    .restart local v3       #mRetryTimes:I
    :catch_1
    move-exception v0

    .line 1154
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 1156
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_3

    .line 1157
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    const v7, 0x43958000

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1161
    :cond_3
    const/4 v2, 0x0

    .line 1165
    goto :goto_2

    .line 1162
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 1163
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1164
    const/4 v2, 0x0

    goto :goto_2

    .line 1169
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "WeatherVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

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

    .line 1171
    if-eqz v2, :cond_7

    .line 1173
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1174
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1176
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1177
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 1178
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsLooping:Z

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1179
    iget-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-nez v4, :cond_5

    .line 1180
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoCount:I

    .line 1182
    :cond_5
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .end local v1           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v2           #mConnected:Z
    .end local v3           #mRetryTimes:I
    :cond_6
    move v4, v6

    .line 1198
    :goto_3
    return v4

    .line 1184
    .restart local v1       #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .restart local v2       #mConnected:Z
    .restart local v3       #mRetryTimes:I
    :cond_7
    const-string v4, "WeatherVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FxVT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", !FxVT.connectMediaPlayer(mMediaPlayer).get()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v4, v5

    .line 1187
    goto :goto_3

    .line 1189
    .end local v1           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v2           #mConnected:Z
    .end local v3           #mRetryTimes:I
    :catch_3
    move-exception v0

    .line 1193
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1194
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    move v4, v5

    .line 1195
    goto :goto_3
.end method

.method private initVideo()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 870
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->initMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 871
    :cond_0
    const-string v0, "WeatherVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "initVideo() - !initMediaPlayer() || mMediaPlayer==null ---> showImage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 875
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoPath:Ljava/lang/String;

    .line 876
    const/4 v0, 0x1

    invoke-direct {p0, v3, v3, v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 877
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 884
    :cond_1
    return-void
.end method

.method private loadImage(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "VideoIndex"

    .prologue
    .line 1084
    iget v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingImageIndex:I

    if-ne v4, p1, :cond_1

    .line 1085
    const/4 v0, 0x0

    .line 1107
    :cond_0
    :goto_0
    return-object v0

    .line 1087
    :cond_1
    const/4 v0, 0x0

    .line 1088
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1090
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    if-eqz v3, :cond_0

    .line 1091
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1092
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1093
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1094
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/htc/weather/WeatherVideo;->getWeatherImagePath(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1097
    .local v2, id:I
    iget-object v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1099
    iput p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingImageIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v2           #id:I
    :catch_0
    move-exception v1

    .line 1102
    .local v1, e:Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitFusion()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_5

    .line 294
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 297
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->TIMELINE_NAME:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 298
    .local v0, mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 299
    aget-object v1, v0, v4

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 300
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 301
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 303
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 304
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 310
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 311
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxVideoTexture;

    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 313
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 315
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 316
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_5

    .line 326
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v3, v3}, Lcom/htc/fusion/fx/FxScene;->playFrames(II)V

    .line 337
    .end local v0           #mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    :cond_5
    return-void
.end method

.method private onInitFusionListener()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$2;

    invoke-direct {v0, p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$2;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;

    invoke-direct {v0, p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 391
    :cond_1
    return-void
.end method

.method private onInitHandler()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WeatherVideoSceneHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    .line 285
    :cond_1
    return-void
.end method

.method private onInitMediaListener()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;

    invoke-direct {v0, p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-nez v0, :cond_1

    .line 413
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$5;

    invoke-direct {v0, p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$5;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-nez v0, :cond_2

    .line 427
    new-instance v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$6;

    invoke-direct {v0, p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$6;-><init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    iput-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 443
    :cond_2
    return-void
.end method

.method private pauseMediaPlayer()Z
    .locals 2

    .prologue
    .line 1305
    :try_start_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    const/4 v1, 0x1

    .line 1317
    :goto_0
    return v1

    .line 1309
    :catch_0
    move-exception v0

    .line 1314
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1315
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 1317
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playVideo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 819
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z

    .line 820
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    if-nez v1, :cond_0

    .line 825
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 826
    invoke-direct {p0, v4, v5, v4}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 860
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 839
    :cond_1
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 841
    :try_start_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_2
    :goto_1
    invoke-direct {p0, v4, v5, v4}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 852
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideVideo()V

    .line 853
    iput-boolean v4, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    .line 859
    :goto_2
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->initVideo()V

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WeatherVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

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

    .line 849
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 855
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    .line 856
    invoke-direct {p0, v4, v5, v4}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    goto :goto_2
.end method

.method private prepareImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1056
    iget v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingVideoIndex:I

    invoke-direct {p0, v3}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->loadImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1059
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1061
    .local v2, photoTLC:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1062
    .local v1, photoDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v2, :cond_0

    .line 1063
    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1064
    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1069
    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1073
    .end local v1           #photoDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v2           #photoTLC:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_0
    if-eqz v0, :cond_1

    .line 1074
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1075
    const/4 v0, 0x0

    .line 1076
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1078
    :cond_1
    return-void
.end method

.method private declared-synchronized releaseMediaPlayer()V
    .locals 9

    .prologue
    .line 1202
    monitor-enter p0

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    .line 1203
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 1207
    :try_start_1
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 1209
    const/4 v3, 0x0

    .line 1210
    .local v3, mDisConnected:Z
    const/4 v4, 0x0

    .line 1211
    .local v4, mRetryTimes:I
    const/4 v2, 0x0

    .line 1212
    .local v2, mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 1213
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v5, :cond_1

    .line 1215
    if-nez v2, :cond_0

    .line 1216
    :try_start_2
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->disconnectMediaPlayer()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 1218
    :cond_0
    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 1228
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 1222
    const/4 v3, 0x0

    .line 1226
    goto :goto_1

    .line 1223
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 1224
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1225
    const/4 v3, 0x0

    goto :goto_1

    .line 1230
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v5, "WeatherVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "releaseMediaPlayer() - mDisConnected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1237
    :try_start_4
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 1238
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 1239
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1252
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1273
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v3           #mDisConnected:Z
    .end local v4           #mRetryTimes:I
    :cond_3
    :goto_2
    const/4 v5, 0x0

    :try_start_6
    iput-boolean v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1274
    monitor-exit p0

    return-void

    .line 1259
    .restart local v2       #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .restart local v3       #mDisConnected:Z
    .restart local v4       #mRetryTimes:I
    :catch_2
    move-exception v0

    .line 1260
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v5, "WeatherVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "releaseMediaPlayer() - Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1202
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #mBooleanFuture:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v3           #mDisConnected:Z
    .end local v4           #mRetryTimes:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1232
    :catch_3
    move-exception v0

    .line 1233
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v5, "WeatherVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "releaseMediaPlayer() - Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1237
    :try_start_9
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 1238
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 1239
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1252
    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    .line 1259
    .end local v1           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v0

    .line 1260
    :try_start_b
    const-string v5, "WeatherVideo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "releaseMediaPlayer() - Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1237
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 1238
    iget-object v6, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 1239
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1252
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.ml.VST_MEDIA_RELEASE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 1263
    .end local v1           #intent:Landroid/content/Intent;
    :goto_3
    :try_start_d
    throw v5

    .line 1259
    :catch_5
    move-exception v0

    .line 1260
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "WeatherVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "releaseMediaPlayer() - Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3
.end method

.method private showImage(ZZZ)V
    .locals 5
    .parameter "hasFadeIn"
    .parameter "hasFadeOut"
    .parameter "isForceUpdate"

    .prologue
    const v4, 0x43958000

    const/4 v3, 0x1

    .line 997
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 998
    .local v1, photoTLC:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 999
    .local v0, photoDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->prepareImage()V

    .line 1007
    if-eqz v1, :cond_3

    .line 1008
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1009
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1012
    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1014
    :cond_1
    if-eqz p1, :cond_4

    .line 1015
    const/high16 v2, 0x41a8

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1016
    const-string v2, "fade_in"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1031
    :goto_1
    if-eqz v0, :cond_2

    .line 1032
    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1033
    :cond_2
    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1035
    :cond_3
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    goto :goto_0

    .line 1021
    :cond_4
    if-eqz p2, :cond_5

    .line 1022
    const/high16 v2, 0x4396

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1023
    const-string v2, "fadeout"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 1029
    :cond_5
    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_1
.end method

.method private showVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 887
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->checkVideoEffectStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 894
    .local v0, videoTLC:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_3

    .line 899
    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    if-eqz v1, :cond_2

    .line 900
    :cond_1
    invoke-direct {p0, v3, v2, v2}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showImage(ZZZ)V

    .line 902
    :cond_2
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 903
    const v1, 0x43958000

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 904
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 908
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->thaw()V

    .line 909
    iput-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    .line 911
    :cond_3
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    .line 913
    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    if-nez v1, :cond_4

    .line 914
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideImage()V

    .line 916
    :cond_4
    iput-boolean v3, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mNeedToFadeInVideo:Z

    goto :goto_0
.end method

.method private startMediaPlayer()V
    .locals 2

    .prologue
    .line 1282
    :try_start_0
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->isMediaPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    if-nez v1, :cond_0

    .line 1283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    .line 1284
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1289
    :catch_0
    move-exception v0

    .line 1294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1295
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private unInitHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 551
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mLooper:Landroid/os/Looper;

    .line 553
    :cond_1
    iput-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandlerThread:Landroid/os/HandlerThread;

    .line 554
    return-void
.end method


# virtual methods
.method public changeSceneSize(IIZ)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "first"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40a0

    const/4 v3, 0x0

    .line 596
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    sget-boolean v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mClockAP:Z

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    .line 639
    :goto_1
    iget-object v6, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 640
    .local v6, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v6, :cond_0

    .line 641
    invoke-virtual {v6, v3, v3}, Lcom/htc/fusion/fx/FxScene;->playFrames(II)V

    goto :goto_0

    .line 600
    .end local v6           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_2
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoView;->mConfig:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;->P:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoConst$Orientation;

    if-ne v0, v1, :cond_6

    .line 602
    if-eqz p3, :cond_4

    .line 603
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v0, v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    if-ne p2, v0, :cond_3

    .line 604
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_FULL:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_FULL:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_1

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_1

    .line 609
    :cond_4
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v0, v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    if-ne p2, v0, :cond_5

    .line 610
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_FULL:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_1

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_FULL:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_1

    .line 619
    :cond_6
    if-eqz p3, :cond_8

    .line 620
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v0, v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    if-ne p2, v0, :cond_7

    .line 621
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_FULL:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_FULL:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_1

    .line 623
    :cond_7
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_HALF:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_HALF:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto :goto_1

    .line 626
    :cond_8
    sget-object v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v0, v0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    if-ne p2, v0, :cond_9

    .line 627
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_HALF:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_FULL:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto/16 :goto_1

    .line 631
    :cond_9
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    sget-object v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v1, v1, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_FULL:I

    sget-object v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mark_stamp:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;

    iget v2, v2, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_HALF:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto/16 :goto_1
.end method

.method public clearPausedStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 666
    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsPausedStatus:Z

    .line 667
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mCurrentPosition:I

    .line 668
    return-void
.end method

.method public freezeVideoScreen()Z
    .locals 6

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 939
    .local v1, mFreezed:Z
    iget-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->pauseMediaPlayer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    :try_start_0
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

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

    .line 956
    :cond_0
    :goto_0
    return v1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFxScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public isMediaPlaying()Z
    .locals 3

    .prologue
    .line 1323
    const/4 v1, 0x0

    .line 1325
    .local v1, isplaying:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsReleasingMedia:Z

    if-nez v2, :cond_0

    .line 1326
    iget-object v2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1340
    :cond_0
    :goto_0
    return v1

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1335
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->unInitHandler()V

    .line 499
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 501
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Photo:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 505
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxTLC_Video:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 507
    :cond_1
    invoke-direct {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->releaseMediaPlayer()V

    .line 508
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->clearHandle()V

    .line 510
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxVT:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_3

    .line 513
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->FxDI:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 515
    :cond_3
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->Mask:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 516
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 518
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 520
    :cond_4
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mResourceContext:Landroid/content/Context;

    .line 521
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mContext:Landroid/content/Context;

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPlay:Z

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsFinishedToPrepare:Z

    .line 524
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Photo:Lcom/htc/fusion/fx/MessageListener;

    .line 525
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mMessageListener_Video:Lcom/htc/fusion/fx/MessageListener;

    .line 526
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 527
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 528
    iput-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 529
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayingImageIndex:I

    .line 530
    invoke-virtual {p0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->clearPausedStatus()V

    .line 531
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 532
    return-void
.end method

.method public onStartEffect(Z)V
    .locals 4
    .parameter "isPlayVideo"

    .prologue
    const/4 v3, 0x7

    .line 671
    iget v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    if-gez v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 686
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStopEffect(Z)V
    .locals 4
    .parameter "justPause"

    .prologue
    const/16 v3, 0x8

    .line 722
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 730
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public playframe()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1, v1}, Lcom/htc/fusion/fx/FxScene;->playFrames(II)V

    .line 648
    :cond_0
    return-void
.end method

.method public setLoopingMode(Z)V
    .locals 1
    .parameter "isLooping"

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsLooping:Z

    .line 567
    iget-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mIsLooping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mPlayVideoManyTimes:Z

    .line 568
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSceneDefaultSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 588
    iput p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mSceneWidth:I

    .line 589
    iput p2, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mSceneHeight:I

    .line 590
    return-void
.end method

.method public setSceneVisibility(Z)V
    .locals 1
    .parameter "visibe"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 652
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 654
    :cond_0
    return-void
.end method

.method public setVideoIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 573
    iput p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoIndex:I

    .line 574
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 579
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mVideoPath:Ljava/lang/String;

    .line 582
    :cond_0
    return-void
.end method
