.class public Lcom/htc/lockscreen/app/ctrl/MusicCtrl;
.super Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.source "MusicCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MusicCtrl"

.field public static final MUSIC_STATE_DCS_CONNECTED:I = 0x2

.field public static final MUSIC_STATE_MUSIC_CONNECTED:I = 0x1

.field public static final MUSIC_STATE_NEW_DATA:I = 0x4

.field public static final MUSIC_UPDATE_ALL:I = 0x6

.field public static final MUSIC_UPDATE_COVER:I = 0x4

.field public static final MUSIC_UPDATE_NONE:I = 0x0

.field public static final MUSIC_UPDATE_TITLE:I = 0x2

.field public static final WHAT_ON_MUSIC_UPDATE:I = 0x3e9

.field public static final WHAT_ON_SD_REMOVED:I = 0x3ea


# instance fields
.field private mCover:Landroid/graphics/Bitmap;

.field private mDCSConnection:Landroid/content/ServiceConnection;

.field private mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

.field private mMediaServiceConnection:Landroid/content/ServiceConnection;

.field private mSDCardReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSymContext:Landroid/content/Context;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 30
    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    .line 32
    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mDCSConnection:Landroid/content/ServiceConnection;

    .line 35
    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 36
    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    return-void
.end method

.method static synthetic access$002(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;Lcom/htc/service/music/IHtcMediaPlaybackService;)Lcom/htc/service/music/IHtcMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->updateTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->updateImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->onMusicServiceConnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->onMusicServiceDisConnect()V

    return-void
.end method

.method private bindMusicService()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;

    invoke-direct {v1, p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;-><init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 142
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 167
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onDCSServiceConnect()V
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 473
    return-void
.end method

.method private onDCSServiceDisConnect()V
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 477
    return-void
.end method

.method private onMusicInfoUpdate(I)V
    .locals 2
    .parameter "updateKind"

    .prologue
    .line 460
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 461
    return-void
.end method

.method private onMusicServiceConnect()V
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 465
    return-void
.end method

.method private onMusicServiceDisConnect()V
    .locals 2

    .prologue
    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->notifyMusicChanged(ZLjava/lang/Object;)V

    .line 469
    return-void
.end method

.method private registerMusic()V
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 190
    new-instance v2, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$2;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$2;-><init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v2, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 220
    new-instance v2, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$SDCardReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v1, filterMedia:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    .end local v1           #filterMedia:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private unBindMusicService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    iput-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaServiceConnection:Landroid/content/ServiceConnection;

    .line 177
    iput-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    goto :goto_0
.end method

.method private unRegisterMusic()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    iput-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    iput-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    :cond_1
    return-void
.end method

.method private updateImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private updateTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    const-string v1, "MusicCtrl"

    const-string v2, "updateTitle"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    return-object v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
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

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

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
.method public getCover()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 454
    const-string v0, "MusicCtrl"

    const-string v1, "getCover is null"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 448
    const-string v0, "MusicCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x3e9

    .line 505
    iget v0, p1, Landroid/os/Message;->what:I

    .line 506
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 519
    :goto_0
    return-void

    .line 508
    :pswitch_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 509
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->updateTitle()Ljava/lang/String;

    .line 510
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->updateImage()Landroid/graphics/Bitmap;

    .line 511
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->onMusicInfoUpdate(I)V

    goto :goto_0

    .line 514
    :pswitch_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 515
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 516
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->stopMusicCtrl()V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleMessageUI(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 546
    return-void
.end method

.method public isMusicPlaying()Z
    .locals 5

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, isPlaying:Z
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 266
    :try_start_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/service/music/IHtcMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 273
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 274
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 270
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

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public isMusicServiceLiving()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 4

    .prologue
    .line 373
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    return-void

    .line 379
    :cond_0
    :try_start_2
    const-string v1, "MusicCtrl"

    const-string v2, "When click at Next Button, MediaPlaybackService is null"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_3
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

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 390
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 386
    :catch_1
    move-exception v0

    .line 387
    .local v0, ex:Ljava/lang/Exception;
    :try_start_4
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

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public notifyMusicChanged(ZLjava/lang/Object;)V
    .locals 2
    .parameter "newData"
    .parameter "extra"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, state:I
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 482
    or-int/lit8 v0, v0, 0x1

    .line 489
    :cond_0
    if-eqz p1, :cond_1

    .line 490
    or-int/lit8 v0, v0, 0x4

    .line 492
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 500
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 363
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 370
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 366
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

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pre()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xbb8

    .line 394
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->position()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->prev()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    return-void

    .line 402
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/service/music/IHtcMediaPlaybackService;->seek(J)J

    .line 403
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->play()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_3
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

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 407
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->position()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/service/music/IHtcMediaPlaybackService;->prev()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    .local v0, ex:Ljava/lang/Exception;
    :try_start_5
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

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 411
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/service/music/IHtcMediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 416
    :cond_3
    const-string v1, "MusicCtrl"

    const-string v2, "When click at Previous Button, MediaPlaybackService is null"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0
.end method

.method protected startCtrl()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->startMusicCtrl(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public startMusicCtrl(Landroid/content/Context;)V
    .locals 2
    .parameter "symContext"

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    const-string v0, "MusicCtrl"

    const-string v1, "startMusicCtrl"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->bindMusicService()V

    .line 90
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->registerMusic()V

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 91
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
    .line 81
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->stopMusicCtrl()V

    .line 82
    return-void
.end method

.method public stopMusicCtrl()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    const-string v0, "MusicCtrl"

    const-string v1, "stopMusicCtrl"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->unBindMusicService()V

    .line 110
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->unRegisterMusic()V

    .line 111
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mTitle:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mCover:Landroid/graphics/Bitmap;

    .line 118
    :cond_0
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public triggerPlay(Z)V
    .locals 4
    .parameter "bPlay"

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 445
    :goto_0
    return-void

    .line 434
    :cond_0
    if-eqz p1, :cond_1

    .line 435
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    .local v1, play:Landroid/content/Intent;
    const-string v2, "android.bluetooth.avrcp.intent.PANEL_OP"

    const-string v3, "Play"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 440
    .end local v1           #play:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.avrcp.intent.action.AVRCP_PANEL_OPERATION"

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .local v0, pause:Landroid/content/Intent;
    const-string v2, "android.bluetooth.avrcp.intent.PANEL_OP"

    const-string v3, "Pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mSymContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
