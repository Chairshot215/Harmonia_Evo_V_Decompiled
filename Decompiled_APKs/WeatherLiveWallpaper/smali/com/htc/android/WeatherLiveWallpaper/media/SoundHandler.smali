.class public Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;
.super Ljava/lang/Object;
.source "SoundHandler.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"


# instance fields
.field private PREFIX:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mSoundEffect:Lcom/htc/Weather/SoundEffect;

.field private mWeatherConditionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "isPreview"
    .parameter "isDockMode"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "[SoundHandler_Wallpaper]: "

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->PREFIX:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mContext:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 21
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 22
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 23
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mLooper:Landroid/os/Looper;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mWeatherConditionId:I

    .line 29
    if-eqz p2, :cond_0

    .line 30
    if-eqz p3, :cond_1

    .line 31
    const-string v0, "[SoundHandler_DockMode]:"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->PREFIX:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->onInit()V

    .line 37
    return-void

    .line 33
    :cond_1
    const-string v0, "[SoundHandler_Preview]:"

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->PREFIX:Ljava/lang/String;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 87
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    iget v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mWeatherConditionId:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/SoundEffect;->startMediaPlayer(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private onInit()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lcom/htc/Weather/SoundEffect;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/Weather/SoundEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WeatherSoundHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mLooper:Landroid/os/Looper;

    .line 49
    :cond_0
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler$1;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler$1;-><init>(Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 57
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mWeatherConditionId:I

    .line 58
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 73
    :cond_2
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mLooper:Landroid/os/Looper;

    .line 74
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 75
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 76
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 77
    return-void
.end method

.method public startSound(I)V
    .locals 3
    .parameter "conditionId"

    .prologue
    const/16 v2, 0x7d2

    .line 102
    iput p1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mWeatherConditionId:I

    .line 103
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public stopSound()V
    .locals 3

    .prologue
    const/16 v2, 0x7d3

    .line 113
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/media/SoundHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    :cond_0
    return-void
.end method
