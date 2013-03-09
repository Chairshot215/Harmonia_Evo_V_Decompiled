.class public Lcom/htc/idlescreen/base/ctrl/MusicCtrl;
.super Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.source "MusicCtrl.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MusicCtrl"

.field public static final MUSIC_STATE_DCS_CONNECTED:I = 0x2

.field public static final MUSIC_STATE_MUSIC_CONNECTED:I = 0x1

.field public static final MUSIC_STATE_NEW_DATA:I = 0x4

.field public static final MUSIC_UPDATE_ALL:I = 0x6

.field public static final MUSIC_UPDATE_COVER:I = 0x4

.field public static final MUSIC_UPDATE_NONE:I = 0x0

.field public static final MUSIC_UPDATE_TITLE:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "<unknown>"

.field public static final WHAT_ON_MUSIC_NEXT:I = 0x3eb

.field public static final WHAT_ON_MUSIC_PLAY:I = 0x3ed

.field public static final WHAT_ON_MUSIC_PRE:I = 0x3ec

.field public static final WHAT_ON_MUSIC_UPDATE:I = 0x3e9

.field public static final WHAT_ON_SD_REMOVED:I = 0x3ea


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mAudioMng:Landroid/media/AudioManager;

.field private mCover:Landroid/graphics/Bitmap;

.field private mCoverPath:Ljava/lang/String;

.field private mIsChecked:Z

.field private mIsPlaying:Z

.field private mIsSDCardReady:Z

.field private mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

.field private mMediaServiceConnection:Landroid/content/ServiceConnection;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 33
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    .line 36
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 62
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsPlaying:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsSDCardReady:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsChecked:Z

    return-void
.end method

.method private _next()V
    .locals 4

    .prologue
    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    const-string v1, "MusicCtrl"

    const-string v2, "next"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->next()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    return-void

    .line 383
    :cond_0
    :try_start_3
    const-string v1, "MusicCtrl"

    const-string v2, "When click at Next Button, MediaPlaybackService is null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When click at Next Button, MediaPlaybackService throw RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 390
    :catch_1
    move-exception v0

    .line 391
    .local v0, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When click at Next Button, MediaPlaybackService throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private _pause()V
    .locals 4

    .prologue
    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 366
    :try_start_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 373
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause~ exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private _play()V
    .locals 4

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 353
    :try_start_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 360
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play~ exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private _pre()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xbb8

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    const-string v1, "MusicCtrl"

    const-string v2, "pre"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->position()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->prev()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    return-void

    .line 413
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/service/music/IHtcMediaPlaybackService;->seek(J)J

    .line 414
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->play()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When click at Previous Button, MediaPlaybackService throw RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 438
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 418
    :cond_1
    :try_start_5
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->position()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->prev()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 434
    :catch_1
    move-exception v0

    .line 435
    .local v0, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When click at Previous Button, MediaPlaybackService throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 422
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_7
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/service/music/IHtcMediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 427
    :cond_3
    const-string v1, "MusicCtrl"

    const-string v2, "When click at Previous Button, MediaPlaybackService is null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;Lcom/htc/service/music/IHtcMediaPlaybackService;)Lcom/htc/service/music/IHtcMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->updateTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->updateImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicServiceConnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicServiceDisConnect()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V

    return-void
.end method

.method private bindMusicService()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;

    invoke-direct {v1, p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;-><init>(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 148
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 153
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v1, "MusicCtrl"

    const-string v2, "bindMusicService mMediaServiceConnection is not null"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 345
    invoke-static {p1, p2, p3}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, img:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private onDCSServiceConnect()V
    .locals 2

    .prologue
    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 502
    return-void
.end method

.method private onDCSServiceDisConnect()V
    .locals 2

    .prologue
    .line 505
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 506
    return-void
.end method

.method private onMusicInfoUpdate(I)V
    .locals 2
    .parameter "updateKind"

    .prologue
    .line 489
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 490
    return-void
.end method

.method private onMusicServiceConnect()V
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 494
    return-void
.end method

.method private onMusicServiceDisConnect()V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 498
    return-void
.end method

.method private registerMusic()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;

    invoke-direct {v1, p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$2;-><init>(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setPlaying(Z)V
    .locals 2
    .parameter "playing"

    .prologue
    const/4 v1, 0x1

    .line 595
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsPlaying:Z

    .line 596
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsChecked:Z

    .line 597
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 598
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsSDCardReady:Z

    .line 600
    :cond_0
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsPlaying:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->startMusicService()V

    .line 603
    :cond_1
    return-void
.end method

.method private unBindMusicService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 163
    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    goto :goto_0
.end method

.method private unRegisterMusic()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 244
    :cond_0
    return-void
.end method

.method private updateImage()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    const-string v5, "MusicCtrl"

    const-string v6, "updateImage"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, albumArtPath:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v5, :cond_0

    .line 310
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v5}, Lcom/htc/service/music/IHtcMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 318
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCoverPath:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    const-string v5, "MusicCtrl"

    const-string v6, "updateImage the same"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 341
    :goto_1
    return-object v5

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MusicCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateImage~ getPath exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 323
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    .line 324
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCoverPath:Ljava/lang/String;

    .line 325
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 326
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 327
    .local v3, maxWidth:I
    const v5, 0x7f050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    float-to-int v2, v5

    .line 329
    .local v2, maxHeight:I
    :try_start_3
    invoke-direct {p0, v0, v3, v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 340
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 331
    .restart local v2       #maxHeight:I
    .restart local v3       #maxWidth:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 332
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MusicCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateImage~ getCover exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 340
    .end local v0           #albumArtPath:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #maxHeight:I
    .end local v3           #maxWidth:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 338
    .restart local v0       #albumArtPath:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    :try_start_6
    iput-object v5, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private updateTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    const-string v1, "MusicCtrl"

    const-string v2, "updateTitle"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mArtist:Ljava/lang/String;

    .line 289
    const-string v1, "<unknown>"

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const v2, 0x7f04004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mArtist:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "MusicCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTitle~ exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    .line 296
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkIsPlaying()V
    .locals 4

    .prologue
    .line 568
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mAudioMng:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    .line 569
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mAudioMng:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 570
    .local v0, bAudioPlay:Z
    if-nez v0, :cond_0

    .line 571
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V

    .line 588
    .end local v0           #bAudioPlay:Z
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v3, :cond_1

    .line 577
    :try_start_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/service/music/IHtcMediaPlaybackService;->isPlaying()Z

    move-result v2

    .line 578
    .local v2, isPlaying:Z
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v2           #isPlaying:Z
    :catch_0
    move-exception v1

    .line 581
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 586
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->startMusicService()V

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 3

    .prologue
    .line 477
    const-string v0, "MusicCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArtist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 483
    const-string v0, "MusicCtrl"

    const-string v1, "getCover is null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    const-string v0, "MusicCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v3, 0x3eb

    const/16 v6, 0x3e9

    const/4 v5, 0x6

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 529
    iget v1, p1, Landroid/os/Message;->what:I

    .line 530
    .local v1, what:I
    packed-switch v1, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 533
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->updateTitle()Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->updateImage()Landroid/graphics/Bitmap;

    .line 535
    invoke-direct {p0, v5}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicInfoUpdate(I)V

    goto :goto_0

    .line 538
    :pswitch_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 539
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 540
    invoke-direct {p0, v2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V

    .line 541
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsSDCardReady:Z

    .line 542
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    .line 543
    invoke-direct {p0, v5}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicInfoUpdate(I)V

    goto :goto_0

    .line 546
    :pswitch_2
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 547
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 548
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->_next()V

    goto :goto_0

    .line 551
    :pswitch_3
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 552
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 553
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->_pre()V

    goto :goto_0

    .line 556
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_0

    .line 557
    .local v0, play:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->_play()V

    goto :goto_0

    .end local v0           #play:Z
    :cond_0
    move v0, v2

    .line 556
    goto :goto_1

    .line 561
    .restart local v0       #play:Z
    :cond_1
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->_pause()V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isMusicPlaying()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->isMusicPlaying(Z)Z

    move-result v0

    return v0
.end method

.method public isMusicPlaying(Z)Z
    .locals 5
    .parameter "useCache"

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, isPlaying:Z
    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 255
    :try_start_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/service/music/IHtcMediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 256
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    move v2, v1

    .line 269
    :goto_1
    return v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 260
    const-string v2, "MusicCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMusicPlaying~ exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 263
    :cond_1
    if-eqz p1, :cond_0

    :try_start_3
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsChecked:Z

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mAudioMng:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mAudioMng:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsPlaying:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isMusicServiceLiving()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSDCardReady()Z
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsSDCardReady:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 4

    .prologue
    const/16 v3, 0x3eb

    .line 398
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 399
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 400
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 401
    return-void
.end method

.method public notifyMusicChanged(ZLjava/lang/Object;)V
    .locals 2
    .parameter "newData"
    .parameter "extra"

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 511
    or-int/lit8 v0, v0, 0x1

    .line 513
    :cond_0
    if-eqz p1, :cond_1

    .line 514
    or-int/lit8 v0, v0, 0x4

    .line 516
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 524
    return-void
.end method

.method public onSDCardRemoved()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->setPlaying(Z)V

    .line 607
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mIsSDCardReady:Z

    .line 608
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    .line 609
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicInfoUpdate(I)V

    .line 610
    return-void
.end method

.method public pre()V
    .locals 4

    .prologue
    const/16 v3, 0x3ec

    .line 442
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 443
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 444
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 445
    return-void
.end method

.method protected startCtrl()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mAudioMng:Landroid/media/AudioManager;

    .line 70
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->registerMusic()V

    .line 71
    return-void
.end method

.method public startMusicService()V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    const-string v0, "MusicCtrl"

    const-string v1, "startMusicService"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->bindMusicService()V

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected stopCtrl()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    .line 78
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->unRegisterMusic()V

    .line 79
    return-void
.end method

.method public stopMusicService()V
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    const-string v0, "MusicCtrl"

    const-string v1, "stopMusicService"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->unBindMusicService()V

    .line 113
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public triggerPlay(Z)V
    .locals 3
    .parameter "bPlay"

    .prologue
    const/16 v2, 0x3ed

    .line 448
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 452
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 453
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 454
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 455
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 453
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
