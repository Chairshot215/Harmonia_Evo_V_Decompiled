.class Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurPercentage:F

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mIsPrepared:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSessionID:I

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$1;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$2;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$4;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;

    invoke-direct {v0, p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$6;-><init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->initNewMediaPlayer()V

    return-void
.end method

.method static synthetic access$4502(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;F)F
    .locals 0

    iput p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F

    return p1
.end method

.method static synthetic access$4600(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private initNewMediaPlayer()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "initNewMediaPlayer()...call mMediaPlayer.release()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNewMediaPlayer()... mSessionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    return-void
.end method

.method public duration()J
    .locals 4

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "duration()...mMediaPlayer is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration()...mDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mSessionID:I

    return v0
.end method

.method public getPercentage()F
    .locals 1

    iget v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "isPlaying()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "pause()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 4

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    const-string v2, "[DMPMusicPlaybackService]"

    const-string v3, "position()...mMediaPlayer is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->stop()V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "II internal multiplayer...release()... calling mMediaPlayer.release();"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "release()...mMediaPlayer is null!!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seek(J)J
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    return-wide p1

    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")...mMediaPlayer is null..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync()... path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDuration:J

    invoke-direct {p0}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->initNewMediaPlayer()V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->bufferUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->seekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@@ prepareAsync() @@@@@ mIsInitialized = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "prepareAsync finished, IOException ex"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "prepareAsync finished, IllegalArgumentException ex"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "prepareAsync finished, IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_0

    :catch_3
    move-exception v0

    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 5

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$4400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$4300(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** start(), IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "start()...mMediaPlayer is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "II internal multiplayer... stop()...before calling mMediaPlayer.reset();"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z

    iput-boolean v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[DMPMusicPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "II stop(), Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "stop()...mMediaPlayer is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
