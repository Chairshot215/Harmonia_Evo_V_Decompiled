.class public Lcom/muvee/video/trimer/view/MVideoView;
.super Landroid/view/SurfaceView;
.source "MVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.muvee.video.trimer.view.MVideoView"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/MVideoView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/MVideoView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/MVideoView;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 37
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getOnCompletionListener()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 112
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, -0x1

    .line 166
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 59
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .parameter "currentPosition"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mVideoFile:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/view/MVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 68
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 69
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "onCompletionListener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 102
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 3
    .parameter "videoFile"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mVideoFile:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mVideoFile:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/view/MVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 51
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 52
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 53
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/MVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mVideoFile:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/view/MVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-static {v0, v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 82
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 84
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    const-string v0, "com.muvee.video.trimer.view.MVideoView"

    const-string v1, "::surfaceChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object p1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 119
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 121
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 125
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 129
    const-string v0, "com.muvee.video.trimer.view.MVideoView"

    const-string v1, "::surfaceCreated:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object p1, p0, Lcom/muvee/video/trimer/view/MVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 131
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 133
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 137
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 141
    const-string v0, "com.muvee.video.trimer.view.MVideoView"

    const-string v1, "::surfaceDestroyed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 144
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 145
    iget-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/MVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 149
    :cond_0
    return-void
.end method
