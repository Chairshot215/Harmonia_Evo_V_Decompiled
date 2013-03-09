.class public Lcom/htc/Weather/animation/ImplStreamingTexture;
.super Lcom/htc/Weather/animation/AbstractWeatherAnim;
.source "ImplStreamingTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImplStreamingTexture"

.field private static isGLInitialed:Z

.field private static isGLSurfaceOnPause:Z


# instance fields
.field private isFullscreenMode:Z

.field private isPortrait:Z

.field private mCondition:Ljava/lang/String;

.field private mGLContr:Lcom/htc/Weather/GLVideoControl;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLSurfaceOnPause:Z

    .line 32
    sput-boolean v0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLInitialed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;-><init>()V

    .line 23
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mCondition:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    .line 29
    iput-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    .line 37
    return-void
.end method

.method private cleanVideo()V
    .locals 3

    .prologue
    .line 129
    const-string v0, "ImplStreamingTexture"

    const-string v1, "cleanVideo"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLInitialed:Z

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/Weather/GLVideoControl;->VideoIdx:I

    .line 134
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 135
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v1, v1, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/Weather/GLVideoControl;->FadeSwitchVideo(Ljava/lang/String;)Z

    .line 136
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->pauseGLVideo()V

    goto :goto_0
.end method

.method private getVideoIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 81
    .local v1, in:I
    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 87
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 88
    .local v2, index:I
    if-ltz v1, :cond_1

    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 89
    sget-object v3, Lcom/htc/weather/WeatherVideo;->mWeatherVideoMapArray:[I

    aget v2, v3, v1

    .line 92
    :cond_1
    return v2

    .line 83
    .end local v2           #index:I
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "ImplStreamingTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoIndex: can\'t parse string:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/Weather/animation/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initGLVideoPlayback(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 3
    .parameter "context"
    .parameter "SubLayout"

    .prologue
    const/4 v2, 0x1

    .line 45
    const-string v0, "ImplStreamingTexture"

    const-string v1, "initGLVideoPlayback"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-boolean v0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLInitialed:Z

    if-ne v0, v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sput-boolean v2, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLInitialed:Z

    .line 51
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/GLVideoControl;->getGLVideoSurfaceView(Landroid/content/Context;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 53
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public FadeSwitchVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 170
    const-string v0, "ImplStreamingTexture"

    const-string v1, "MainHandler - WHAT_DEMO_NEXT_VIDEO"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/GLVideoControl;->FadeSwitchVideo(Ljava/lang/String;)Z

    .line 173
    return-void
.end method

.method public changeCondition(ILjava/lang/String;)Z
    .locals 1
    .parameter "condition"
    .parameter "path"

    .prologue
    .line 307
    invoke-virtual {p0, p2}, Lcom/htc/Weather/animation/ImplStreamingTexture;->FadeSwitchVideo(Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public changeConfig(ZZ)Z
    .locals 1
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 314
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 315
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->toFullScreen(I)V

    .line 320
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->toTwoPanel()V

    goto :goto_0
.end method

.method public destroyGLVideo()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "ImplStreamingTexture"

    const-string v1, "onDestroy, set mGLContr.glExit = true"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    .line 159
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 161
    :cond_0
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "layout"
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 251
    new-instance v0, Lcom/htc/Weather/GLVideoControl;

    invoke-direct {v0, p2, p1}, Lcom/htc/Weather/GLVideoControl;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    .line 253
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/GLVideoControl;->getGLVideoSurfaceView(Landroid/content/Context;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 255
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initUI(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "mainHandler"

    .prologue
    .line 41
    new-instance v0, Lcom/htc/Weather/GLVideoControl;

    invoke-direct {v0, p2, p1}, Lcom/htc/Weather/GLVideoControl;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "ImplStreamingTexture"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "ImplStreamingTexture"

    const-string v1, "onDestroy, set mGLContr.glExit = true"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    .line 217
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 219
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "ImplStreamingTexture"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->pauseGLVideo()V

    .line 209
    :cond_0
    return-void
.end method

.method public pause()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->pauseGLVideo()V

    .line 267
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLSurfaceOnPause:Z

    .line 269
    invoke-virtual {p0, v1}, Lcom/htc/Weather/animation/ImplStreamingTexture;->setGlViewVisible(Z)V

    .line 271
    return v1
.end method

.method public pauseGLVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "ImplStreamingTexture"

    const-string v1, "pause GLVideo"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    .line 145
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iput-boolean v2, v0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 147
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v0, v2}, Lcom/htc/Weather/GLVideoControl;->setNativeRunState(I)V

    .line 148
    const-string v0, "ImplStreamingTexture"

    const-string v1, "set mGLContr.glExit = true"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public play(ILjava/lang/String;)I
    .locals 4
    .parameter "condition"
    .parameter "path"

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iput-object p2, v1, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/Weather/animation/ImplStreamingTexture;->getVideoIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/Weather/GLVideoControl;->VideoIdx:I

    .line 235
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->resumeGLVideo()V

    .line 236
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v3, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 237
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, v2, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/GLVideoControl;->FadeSwitchVideo(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/Weather/animation/ImplStreamingTexture;->setGlViewVisible(Z)V

    .line 245
    const/4 v1, 0x0

    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepare()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public release()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->onDestroy()V

    .line 279
    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 280
    iput-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public reset()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public resetPath()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public resume()I
    .locals 4

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    sget-object v2, Lcom/htc/Weather/animation/ImplStreamingTexture;->mPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mCondition:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/Weather/animation/ImplStreamingTexture;->getVideoIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/Weather/GLVideoControl;->VideoIdx:I

    .line 330
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->resumeGLVideo()V

    .line 331
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v3, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 332
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, v2, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/GLVideoControl;->FadeSwitchVideo(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/Weather/animation/ImplStreamingTexture;->setGlViewVisible(Z)V

    .line 340
    const/4 v1, 0x0

    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public resumeGLVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "ImplStreamingTexture"

    const-string v1, "resume GLVideo"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iput-boolean v2, v0, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iput-boolean v2, v0, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-nez v0, :cond_2

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 118
    sput-boolean v2, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLSurfaceOnPause:Z

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->setGlViewVisible(Z)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_3
    const-string v0, "ImplStreamingTexture"

    const-string v1, "mGLSurfaceView==null"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGlViewVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "ImplStreamingTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlViewVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public toFullScreen(I)V
    .locals 4
    .parameter "animDuration"

    .prologue
    const/4 v3, 0x1

    .line 188
    iput-boolean v3, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    .line 189
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 190
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v0, v3, p1}, Lcom/htc/Weather/GLVideoControl;->startAnimation(II)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->resumeGLVideo()V

    .line 194
    return-void
.end method

.method public toTwoPanel()V
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    .line 199
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 200
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/GLVideoControl;->startAnimation(II)V

    .line 201
    return-void
.end method

.method public updateVideo(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "SubLayout"
    .parameter "id"
    .parameter "path"

    .prologue
    .line 58
    sget-boolean v1, Lcom/htc/Weather/animation/ImplStreamingTexture;->isGLInitialed:Z

    if-nez v1, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/Weather/animation/ImplStreamingTexture;->initGLVideoPlayback(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v1, v1, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iput-object p4, v1, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-direct {p0, p3}, Lcom/htc/Weather/animation/ImplStreamingTexture;->getVideoIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/Weather/GLVideoControl;->VideoIdx:I

    .line 67
    invoke-virtual {p0}, Lcom/htc/Weather/animation/ImplStreamingTexture;->resumeGLVideo()V

    .line 68
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v3, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 69
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, v2, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/GLVideoControl;->FadeSwitchVideo(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public whatChangeVideoSizeToDemoMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 177
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v2, v1}, Lcom/htc/Weather/GLVideoControl;->startAnimation(II)V

    .line 178
    return-void
.end method

.method public whatChangeVideoToDemoMode(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 181
    const-string v1, "ImplStreamingTexture"

    const-string v2, "MainHandler - WHAT_CHANGE_VIDEO_TO_DEMO_MODE"

    invoke-static {v1, v2}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iput-object v0, v1, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v1, v0}, Lcom/htc/Weather/GLVideoControl;->FadeSwitchVideo(Ljava/lang/String;)Z

    .line 185
    return-void
.end method

.method public whatFinishOrientation()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "ImplStreamingTexture"

    const-string v1, "MainHandler - WHAT_ON_FINISH_ORIENTATION_CHANGE"

    invoke-static {v0, v1}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->mGLContr:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isPortrait:Z

    iget-boolean v2, p0, Lcom/htc/Weather/animation/ImplStreamingTexture;->isFullscreenMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 168
    :cond_0
    return-void
.end method
