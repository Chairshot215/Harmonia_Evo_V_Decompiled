.class public Lcom/htc/Weather/animation/ImplOverlayVideo;
.super Lcom/htc/Weather/animation/AbstractWeatherAnim;
.source "ImplOverlayVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImplOverlayVideo"


# instance fields
.field private mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPortrait_two_h:I

.field private mPortrait_two_w:I

.field private mPreview:Landroid/view/SurfaceView;

.field private mTop_margin:I

.field private mVideoLayout:Landroid/widget/RelativeLayout;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoSizeKnown:Z

    .line 41
    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoReadyToBePlayed:Z

    return-void
.end method

.method private _doCleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoReadyToBePlayed:Z

    .line 132
    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoSizeKnown:Z

    .line 133
    iput v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mWidth:I

    .line 134
    iput v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHeight:I

    .line 135
    return-void
.end method

.method private playVideo()V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->_doCleanUp()V

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    .line 55
    :cond_0
    sget-object v1, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    const-string v2, "nop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 57
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 59
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 60
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 61
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 62
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 63
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 64
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 65
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 66
    const-string v1, "ImplOverlayVideo"

    const-string v2, "playVideo: mPlayer.setLooping"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    .line 128
    :cond_0
    return-void
.end method

.method private setVideoLayout(Z)V
    .locals 5
    .parameter "fullScreen"

    .prologue
    const/4 v4, -0x1

    .line 171
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/Weather/animation/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz p1, :cond_1

    .line 174
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_0
    return-void

    .line 176
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPortrait_two_w:I

    iget v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPortrait_two_h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mTop_margin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private startVideoPlayback()V
    .locals 3

    .prologue
    .line 138
    const-string v0, "ImplOverlayVideo"

    const-string v1, "startVideoPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mWidth:I

    iget v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 145
    :cond_1
    return-void
.end method


# virtual methods
.method protected _Destroy()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->releaseMediaPlayer()V

    .line 120
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->_doCleanUp()V

    .line 121
    return-void
.end method

.method public changeCondition(ILjava/lang/String;)Z
    .locals 5
    .parameter "condition"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 258
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fadeSwitchVideo, path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v1, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCondition: same path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return v4

    .line 265
    :cond_1
    sput-object p2, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 273
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 275
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 277
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 278
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 279
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 280
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 281
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 282
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 283
    const-string v1, "ImplOverlayVideo"

    const-string v2, "changeCondition: mPlayer.setLooping"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 288
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 291
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 292
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public changeConfig(ZZ)Z
    .locals 4
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 304
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeConfig, fullScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/Weather/animation/ImplOverlayVideo;->setVideoLayout(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 318
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 309
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 312
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 313
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    const-string v1, "ImplOverlayVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "layout"
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 150
    const-string v1, "ImplOverlayVideo"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    .line 153
    iput-object p3, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPortrait_two_w:I

    .line 157
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPortrait_two_h:I

    .line 158
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mTop_margin:I

    .line 160
    invoke-direct {p0, p5}, Lcom/htc/Weather/animation/ImplOverlayVideo;->setVideoLayout(Z)V

    .line 161
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    .line 164
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 165
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 167
    const/4 v1, 0x0

    return v1
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "arg0"
    .parameter "percent"

    .prologue
    .line 75
    const-string v0, "ImplOverlayVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 79
    const-string v0, "ImplOverlayVideo"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaplayer"

    .prologue
    .line 98
    const-string v0, "ImplOverlayVideo"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoReadyToBePlayed:Z

    .line 100
    iget-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->startVideoPlayback()V

    .line 103
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    const-string v0, "ImplOverlayVideo"

    const-string v1, "onVideoSizeChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 85
    :cond_0
    const-string v0, "ImplOverlayVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid video width("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoSizeKnown:Z

    .line 89
    iput p2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mWidth:I

    .line 90
    iput p3, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHeight:I

    .line 92
    iget-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->startVideoPlayback()V

    goto :goto_0
.end method

.method public pause()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 187
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 193
    :cond_1
    return v2
.end method

.method public play(ILjava/lang/String;)I
    .locals 3
    .parameter "condition"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 201
    sget-object v1, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const-string v0, "ImplOverlayVideo"

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

    .line 203
    const/4 v0, -0x1

    .line 209
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->startVideoPlayback()V

    .line 208
    sput-object p2, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public prepare()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public release()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->releaseMediaPlayer()V

    .line 221
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 224
    :cond_0
    iput-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    .line 225
    iput-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mHolder:Landroid/view/SurfaceHolder;

    .line 226
    iput-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mVideoLayout:Landroid/widget/RelativeLayout;

    .line 227
    iput-object v2, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public reset()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->startVideoPlayback()V

    .line 326
    return v1
.end method

.method public stop()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    const-string v0, "nop"

    sput-object v0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPath:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 244
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/Weather/animation/ImplOverlayVideo;->mPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 252
    :cond_1
    return v2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "surfaceholder"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 106
    const-string v0, "ImplOverlayVideo"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 114
    const-string v0, "ImplOverlayVideo"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/htc/Weather/animation/ImplOverlayVideo;->playVideo()V

    .line 116
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceholder"

    .prologue
    .line 110
    const-string v0, "ImplOverlayVideo"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method
