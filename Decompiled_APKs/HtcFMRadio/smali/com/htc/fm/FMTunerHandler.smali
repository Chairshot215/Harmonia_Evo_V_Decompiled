.class public Lcom/htc/fm/FMTunerHandler;
.super Landroid/os/Handler;
.source "FMTunerHandler.java"


# static fields
.field public static final CMD_WIPE:I = 0x1bc

.field private static final TAG:Ljava/lang/String; = "FMTunerHandler"

.field private static final TIMEOUT_TURNOFF:I = 0x3a98

.field public static mAudioPath:I

.field public static mIsVolumeSetting:Z


# instance fields
.field private final TAG_UB:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

.field private mFMTuner:Lcom/htc/fm/IFMTuner;

.field private mFMTunerController:Lcom/htc/fm/FMTunerController;

.field private mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x2

    sput v0, Lcom/htc/fm/FMTunerHandler;->mAudioPath:I

    .line 380
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fm/FMTunerHandler;->mIsVolumeSetting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/fm/FMTunerController;Lcom/htc/fm/OnStateChangedListener;Lcom/htc/fm/OnEventChangedListener;)V
    .locals 4
    .parameter "context"
    .parameter "fmTunerController"
    .parameter "statusChangedListener"
    .parameter "eventChangedListener"

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 19
    iput-object v3, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    .line 20
    iput-object v3, p0, Lcom/htc/fm/FMTunerHandler;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    .line 21
    iput-object v3, p0, Lcom/htc/fm/FMTunerHandler;->mFMTunerController:Lcom/htc/fm/FMTunerController;

    .line 184
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Lcom/htc/fm/FMTunerHandler;->TAG_UB:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTunerController:Lcom/htc/fm/FMTunerController;

    .line 26
    const-string v1, "com.htc.fm.FMTuner"

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerHandler;->loadTuner(Ljava/lang/String;)Lcom/htc/fm/IFMTuner;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    .line 27
    iget-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p3, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    .line 32
    iput-object p4, p0, Lcom/htc/fm/FMTunerHandler;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/htc/fm/IFMTuner;->init(Landroid/content/Context;)V

    .line 36
    iget-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v1, v2}, Lcom/htc/fm/IFMTuner;->setOnStateChangedListener(Lcom/htc/fm/OnStateChangedListener;)V

    .line 37
    iget-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1, v2}, Lcom/htc/fm/IFMTuner;->setOnEventChangedListener(Lcom/htc/fm/OnEventChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    const-string v1, "/data/data/com.htc.fm/audio_fm"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/fm/FMUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "/data/data/com.htc.fm/audio_fm"

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->setPublicPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    iput-object v3, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/htc/fm/FMTunerHandler;->sendMediaBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method private loadTuner(Ljava/lang/String;)Lcom/htc/fm/IFMTuner;
    .locals 3
    .parameter "classPath"

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, fmTuner:Lcom/htc/fm/IFMTuner;
    :try_start_0
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fmTuner:Lcom/htc/fm/IFMTuner;
    check-cast v1, Lcom/htc/fm/IFMTuner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .restart local v1       #fmTuner:Lcom/htc/fm/IFMTuner;
    :goto_0
    return-object v1

    .line 51
    .end local v1           #fmTuner:Lcom/htc/fm/IFMTuner;
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 53
    .restart local v1       #fmTuner:Lcom/htc/fm/IFMTuner;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private seekDown()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->seekDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "FMTunerHandler"

    const-string v1, "!!!! @@@@ FMTuner seekDown() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "!!!! @@@@ FMTuner seekDown() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private seekUp()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->seekUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    const-string v0, "FMTunerHandler"

    const-string v1, "!!!! @@@@ FMTuner seekUp() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "!!!! @@@@ FMTuner seekUp() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendMediaBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "act"

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private setBand()V
    .locals 3

    .prologue
    .line 482
    iget-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-static {}, Lcom/htc/fm/FMUtils;->getBand()I

    move-result v0

    .line 485
    .local v0, band:I
    iget-object v1, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v1, v0}, Lcom/htc/fm/IFMTuner;->setBand(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    const-string v1, "FMTunerHandler"

    const-string v2, "[FMTunerHandler][FMTuner] setBand() success!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    const-string v1, "FMTunerHandler"

    const-string v2, "[FMTunerHandler][FMTuner] setBand() failed!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setHeadsetOut()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setHeadsetOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const/4 v0, 0x0

    sput v0, Lcom/htc/fm/FMTunerHandler;->mAudioPath:I

    .line 373
    const-string v0, "FMTunerHandler"

    const-string v1, "[FM]!!!! @@@@ FMTuner setHeadsetOut() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FM]!!!! @@@@ FMTuner setHeadsetOut() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMono()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setMono()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setMono() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setMono() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRdsOff()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setRdsOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setRdsOff() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setRdsOff() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRdsOn()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setRdsOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setRdsOn() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setRdsOn() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRssiOff()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setRssiOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setRssiOff() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setRssiOff() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRssiOn()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setRssiOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] FMTuner setRssiOn() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] FMTuner setRssiOn() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSpeakerOut()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setSpeakerOut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x1

    sput v0, Lcom/htc/fm/FMTunerHandler;->mAudioPath:I

    .line 361
    const-string v0, "FMTunerHandler"

    const-string v1, "[FM]!!!! @@@@ FMTuner setSpeakerOut() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FM]!!!! @@@@ FMTuner setSpeakerOut() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStereo()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->setStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setStereo() success!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler][FMTuner] setStereo() failed!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVolume(I)V
    .locals 7
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    .line 383
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v2, :cond_0

    .line 412
    :goto_0
    return-void

    .line 386
    :cond_0
    int-to-double v2, p1

    const-wide/high16 v4, 0x4030

    div-double v0, v2, v4

    .line 388
    .local v0, volumeP:D
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v2}, Lcom/htc/fm/IFMTuner;->isNeedVolumeAdjust()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 390
    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    .line 393
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 394
    const-wide v2, 0x3fe3333333333333L

    mul-double/2addr v0, v2

    .line 397
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 398
    const-wide v2, 0x3fd999999999999aL

    mul-double/2addr v0, v2

    .line 401
    :cond_3
    if-ne p1, v6, :cond_4

    .line 402
    const-wide v2, 0x3fc999999999999aL

    mul-double/2addr v0, v2

    .line 406
    :cond_4
    sput-boolean v6, Lcom/htc/fm/FMTunerController;->mIsVolumeSetting:Z

    .line 407
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v2, p1, v0, v1}, Lcom/htc/fm/IFMTuner;->setVolume(ID)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler][FMTuner] setVolume success!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_5
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler][FMTuner] setVolume failed!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private start_stop_notify(I)V
    .locals 6
    .parameter "act"

    .prologue
    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/htc/fm/FMTunerHandler;->sendMediaBroadcast(Landroid/content/Context;I)V

    .line 218
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 192
    .local v2, loopMain:Landroid/os/Looper;
    if-nez v2, :cond_1

    .line 193
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "FMRadio.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v2           #loopMain:Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 216
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMRadio.start_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #loopMain:Landroid/os/Looper;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/htc/fm/FMTunerHandler$1;

    invoke-direct {v1, p0, v2, p1}, Lcom/htc/fm/FMTunerHandler$1;-><init>(Lcom/htc/fm/FMTunerHandler;Landroid/os/Looper;I)V

    .line 212
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private tune(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v0, :cond_1

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/IFMTuner;->tune(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler] tune("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler] tune("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private turnOff()V
    .locals 5

    .prologue
    const/16 v4, 0x1bc

    const/4 v3, 0x2

    .line 285
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler] turnOff() - enter"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnStateChangedListener;->onTurningOff()V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->turnOff()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler] FMTuner turnOff success! mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerHandler;->mAudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :try_start_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerHandler;->start_stop_notify(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_2
    :goto_1
    const-string v0, "/data/data/com.htc.fm/audio_fm"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->deleteFile(Ljava/lang/String;)V

    .line 308
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler] [AudioHardware] FMUtils.setAudioPath(FMDef.AUDIO_PATH_DISABLE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 311
    invoke-virtual {p0, v4}, Lcom/htc/fm/FMTunerHandler;->removeMessages(I)V

    .line 312
    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v4, v0, v1}, Lcom/htc/fm/FMTunerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 314
    :cond_3
    const-string v0, "FMTunerHandler"

    const-string v1, "[FMTunerHandler] turnOff() - exit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private turnOn(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 231
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler] turnOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTunerController:Lcom/htc/fm/FMTunerController;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTunerController:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->initPresetAdapter()V

    .line 254
    :cond_1
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-ge p1, v0, :cond_2

    .line 255
    sget p1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    .line 258
    :cond_2
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le p1, v0, :cond_3

    .line 259
    sget p1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0, p1}, Lcom/htc/fm/IFMTuner;->turnOn(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler][FMTuner] turnOn success! mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerHandler;->mAudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerHandler;->start_stop_notify(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_4
    :goto_1
    const-string v0, "/data/data/com.htc.fm/audio_fm"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "/data/data/com.htc.fm/audio_fm"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->setPublicPermission(Ljava/lang/String;)V

    .line 280
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler][FMTuner] turnOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_5
    const-string v0, "FMTunerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerHandler][FMTuner] turnOn failed! mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerHandler;->mAudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getCmdState()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, -0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->getCmdState()I

    move-result v0

    goto :goto_0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, -0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 156
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (Unknown)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_0
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_TURN_ON)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMTunerHandler;->turnOn(I)V

    goto :goto_0

    .line 70
    :sswitch_1
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_TURN_OFF)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->turnOff()V

    goto :goto_0

    .line 75
    :sswitch_2
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_TUNE)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMTunerHandler;->tune(I)V

    goto :goto_0

    .line 80
    :sswitch_3
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_SEEK_UP)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->seekUp()V

    goto :goto_0

    .line 85
    :sswitch_4
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_SEEK_DOWN)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->seekDown()V

    goto :goto_0

    .line 90
    :sswitch_5
    const-string v2, "FMTunerHandler"

    const-string v3, "!!!! @@@@@@ (CMD_RSSI_ON)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setRssiOn()V

    goto :goto_0

    .line 95
    :sswitch_6
    const-string v2, "FMTunerHandler"

    const-string v3, "!!!! @@@@@@ # (CMD_RSSI_OFF)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setRssiOff()V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v2, "FMTunerHandler"

    const-string v3, "!!!! @@@@@@ (CMD_RDS_ON)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setRdsOn()V

    goto :goto_0

    .line 105
    :sswitch_8
    const-string v2, "FMTunerHandler"

    const-string v3, "!!!! @@@@@@ (CMD_RDS_OFF)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setRdsOff()V

    goto :goto_0

    .line 110
    :sswitch_9
    const-string v2, "FMTunerHandler"

    const-string v3, "[FM] !!!! @@@@@@ (CMD_AUDIO_SPEAKER)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setSpeakerOut()V

    goto :goto_0

    .line 115
    :sswitch_a
    const-string v2, "FMTunerHandler"

    const-string v3, "[FM] !!!! @@@@@@ (CMD_AUDIO_HEADSET)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setHeadsetOut()V

    goto/16 :goto_0

    .line 120
    :sswitch_b
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_SET_BAND)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setBand()V

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.fmseekcomplete"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 127
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_c
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_STEREO)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setStereo()V

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.fmseekcomplete"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 134
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_d
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_MONO)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/htc/fm/FMTunerHandler;->setMono()V

    goto/16 :goto_0

    .line 139
    :sswitch_e
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler] (CMD_SET_VOLUME)"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/htc/fm/FMTunerHandler;->setVolume(I)V

    goto/16 :goto_0

    .line 144
    :sswitch_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 145
    .local v1, looper:Landroid/os/Looper;
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 146
    const-string v2, "FMTunerHandler"

    const-string v3, "[FMTunerHandler][FMTuner] quit"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    .end local v1           #looper:Landroid/os/Looper;
    :sswitch_10
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnStateChangedListener;->onTurnOffFailed()V

    goto/16 :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_f
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_c
        0x8 -> :sswitch_d
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xd -> :sswitch_b
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_e
        0x1bc -> :sswitch_10
    .end sparse-switch
.end method

.method public isRdsOn()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 501
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->isRdsOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isRssiOn()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->isRssiOn()Z

    move-result v0

    goto :goto_0
.end method

.method isStateOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v2, :cond_0

    .line 173
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v2}, Lcom/htc/fm/IFMTuner;->status()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isWeakSignal()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerHandler;->mFMTuner:Lcom/htc/fm/IFMTuner;

    invoke-interface {v0}, Lcom/htc/fm/IFMTuner;->isWeakSignal()Z

    move-result v0

    goto :goto_0
.end method
