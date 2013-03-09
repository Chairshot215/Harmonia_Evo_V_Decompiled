.class public Lcom/google/android/finsky/previews/MediaPlayerWrapper;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mCurrentState:I

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/previews/StatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 41
    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 42
    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 43
    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 50
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 51
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 52
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 55
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 57
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 152
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 157
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 160
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 168
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 143
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 148
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    .line 131
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 132
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    .line 107
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    .line 100
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 137
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 138
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 139
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    .line 80
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 81
    return-void
.end method

.method public resetWhileStayingAwake()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    .line 87
    return-void
.end method

.method public setBetweenTrackState()V
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 164
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 93
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 73
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 68
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 112
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 122
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 124
    return-void
.end method
