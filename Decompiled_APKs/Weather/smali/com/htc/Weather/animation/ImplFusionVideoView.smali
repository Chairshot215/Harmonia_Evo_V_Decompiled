.class public Lcom/htc/Weather/animation/ImplFusionVideoView;
.super Lcom/htc/Weather/animation/AbstractWeatherAnim;
.source "ImplFusionVideoView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImplFusionVideoView"


# instance fields
.field private LANDSCAPE_FULL_H:I

.field private LANDSCAPE_FULL_W:I

.field private LANDSCAPE_TWO_H:I

.field private LANDSCAPE_TWO_W:I

.field private PORTRAIT_FULL_H:I

.field private PORTRAIT_FULL_W:I

.field private PORTRAIT_TWO_H:I

.field private PORTRAIT_TWO_W:I

.field private isPlaying:Z

.field private mVideoLayout:Landroid/widget/RelativeLayout;

.field private mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    .line 21
    iput-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mVideoLayout:Landroid/widget/RelativeLayout;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->isPlaying:Z

    .line 38
    return-void
.end method

.method private stopVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    const-string v0, "ImplFusionVideoView"

    const-string v1, "stop Video"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "nop"

    sput-object v0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0}, Lcom/htc/weather/videoview/WeatherVideoView;->stop()I

    .line 201
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/weather/videoview/WeatherVideoView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->setBackgroundColor(I)V

    .line 204
    iput-boolean v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->isPlaying:Z

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public changeCondition(ILjava/lang/String;)Z
    .locals 4
    .parameter "condition"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 42
    const-string v0, "ImplFusionVideoView"

    const-string v1, "changeCondition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "ImplFusionVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCondition: same path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    :goto_0
    return v3

    .line 48
    :cond_1
    sput-object p2, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "ImplFusionVideoView"

    const-string v1, "changeCondition play"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0, v3}, Lcom/htc/weather/videoview/WeatherVideoView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    sget-object v1, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/weather/videoview/WeatherVideoView;->setVideoPath(Ljava/lang/String;)Z

    .line 54
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0}, Lcom/htc/weather/videoview/WeatherVideoView;->play()I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->isPlaying:Z

    goto :goto_0
.end method

.method public changeConfig(ZZ)Z
    .locals 3
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 63
    const-string v0, "ImplFusionVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeConfig : portrait = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; fullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p2, :cond_2

    .line 65
    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    iget v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_FULL_W:I

    iget v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_FULL_H:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->changeVideoSize(II)Z

    .line 87
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    iget v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_FULL_W:I

    iget v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_FULL_H:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->changeVideoSize(II)Z

    goto :goto_0

    .line 76
    :cond_2
    if-eqz p1, :cond_3

    .line 77
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    iget v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_TWO_W:I

    iget v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_TWO_H:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->changeVideoSize(II)Z

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    iget v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_TWO_W:I

    iget v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_TWO_H:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->changeVideoSize(II)Z

    goto :goto_0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I
    .locals 6
    .parameter "context"
    .parameter "handler"
    .parameter "layout"
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 98
    const-string v2, "ImplFusionVideoView"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p3, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mVideoLayout:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-nez v2, :cond_0

    .line 102
    const-string v2, "ImplFusionVideoView"

    const-string v3, "init video view"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p1}, Lcom/htc/weather/videoview/WeatherVideoUtility;->getWeatherVideoInstance(Landroid/content/Context;)Lcom/htc/weather/videoview/WeatherVideoView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    .line 104
    iget-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v2, p1, v4, v4}, Lcom/htc/weather/videoview/WeatherVideoView;->onInit(Landroid/content/Context;II)I

    .line 105
    iget-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v2}, Lcom/htc/weather/videoview/WeatherVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v2}, Lcom/htc/weather/videoview/WeatherVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 109
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, mRes:Landroid/content/res/Resources;
    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_FULL_W:I

    .line 117
    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_FULL_H:I

    .line 119
    const v2, 0x7f090006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_TWO_W:I

    .line 120
    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->PORTRAIT_TWO_H:I

    .line 122
    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_FULL_W:I

    .line 123
    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_FULL_H:I

    .line 125
    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_TWO_W:I

    .line 126
    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->LANDSCAPE_TWO_H:I

    .line 128
    return v4
.end method

.method public pause()I
    .locals 2

    .prologue
    .line 133
    const-string v0, "ImplFusionVideoView"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplFusionVideoView;->stopVideo()V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public play(ILjava/lang/String;)I
    .locals 3
    .parameter "condition"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 140
    const-string v1, "ImplFusionVideoView"

    const-string v2, "play"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v1, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v0, "ImplFusionVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "same path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, -0x1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    sput-object p2, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v1, v0}, Lcom/htc/weather/videoview/WeatherVideoView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    sget-object v2, Lcom/htc/Weather/animation/ImplFusionVideoView;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->setVideoPath(Ljava/lang/String;)Z

    .line 151
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v1}, Lcom/htc/weather/videoview/WeatherVideoView;->play()I

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->isPlaying:Z

    goto :goto_0
.end method

.method public prepare()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public release()I
    .locals 2

    .prologue
    .line 165
    const-string v0, "ImplFusionVideoView"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplFusionVideoView;->stopVideo()V

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public reset()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    const-string v0, "ImplFusionVideoView"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0, v2}, Lcom/htc/weather/videoview/WeatherVideoView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0}, Lcom/htc/weather/videoview/WeatherVideoView;->getPlayStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->isPlaying:Z

    if-nez v0, :cond_0

    .line 181
    const-string v0, "ImplFusionVideoView"

    const-string v1, "resume play"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    invoke-virtual {v0}, Lcom/htc/weather/videoview/WeatherVideoView;->play()I

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->isPlaying:Z

    .line 186
    :cond_0
    return v2
.end method

.method public setVideoViewVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 208
    const-string v0, "ImplFusionVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoViewVisibility :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    if-eqz v0, :cond_0

    .line 210
    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/weather/videoview/WeatherVideoView;->setVisibility(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplFusionVideoView;->mWeatherVideoView:Lcom/htc/weather/videoview/WeatherVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/weather/videoview/WeatherVideoView;->setVisibility(I)V

    goto :goto_0
.end method

.method public stop()I
    .locals 2

    .prologue
    .line 191
    const-string v0, "ImplFusionVideoView"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplFusionVideoView;->stopVideo()V

    .line 193
    const/4 v0, 0x0

    return v0
.end method
