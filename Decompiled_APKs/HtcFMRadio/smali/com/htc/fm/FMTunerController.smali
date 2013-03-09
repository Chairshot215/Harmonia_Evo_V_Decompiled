.class public Lcom/htc/fm/FMTunerController;
.super Ljava/lang/Object;
.source "FMTunerController.java"

# interfaces
.implements Lcom/htc/fm/OnStateChangedListener;
.implements Lcom/htc/fm/OnEventChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMTunerController$VolumeHandler;,
        Lcom/htc/fm/FMTunerController$TunerInfo;
    }
.end annotation


# static fields
.field public static FirstPresetId:I = 0x0

.field public static IsRequestTune:Z = false

.field private static final MAX_ILLEGAL_STATE_COUNT:I = 0x5

.field private static final STATE_PENDING:I = 0x2

.field private static final STATE_TURNOFF:I = 0x1

.field private static final STATE_TURNON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FMTunerController"

.field public static mIsVolumeSetting:Z

.field public static mPreCmdSameTimeStamp:J


# instance fields
.field private mAdapter:Lcom/htc/fm/FMPresetAdapter;

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentState:I

.field private mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

.field private mFinalState:I

.field private mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

.field private mIllegalStateTimes:I

.field private mIsNeedRdsOff:Z

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mPresetVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/fm/Preset;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCmdStatus:I

.field private mPrevScannedFreq:I

.field private mStartTunerThread:Ljava/lang/Thread;

.field private mVolume:I

.field private mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

.field private mVolumeStopPooling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 367
    sput-boolean v0, Lcom/htc/fm/FMTunerController;->mIsVolumeSetting:Z

    .line 1110
    sput-boolean v0, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 1478
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    .line 1588
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMTunerController;->FirstPresetId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    .line 54
    iput v0, p0, Lcom/htc/fm/FMTunerController;->mFinalState:I

    .line 57
    iput-object v2, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    .line 59
    iput-object v2, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    .line 65
    iput v1, p0, Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I

    .line 429
    iput-boolean v1, p0, Lcom/htc/fm/FMTunerController;->mIsNeedRdsOff:Z

    .line 893
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    .line 894
    iput v1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 1389
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMTunerController;->mVolume:I

    .line 1391
    iput-boolean v1, p0, Lcom/htc/fm/FMTunerController;->mVolumeStopPooling:Z

    .line 1477
    iput v1, p0, Lcom/htc/fm/FMTunerController;->mPrevCmdStatus:I

    .line 69
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] FMTunerController() - enter"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 72
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] FMTunerController() - exit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerHandler;)Lcom/htc/fm/FMTunerHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/fm/FMTunerController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/FMTunerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->savePresetsToDB()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMPresetAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fm/FMTunerController;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/fm/FMTunerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->checkTunerCmdStatus4AudioStream()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/fm/FMTunerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/fm/FMTunerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I

    return p1
.end method

.method static synthetic access$608(Lcom/htc/fm/FMTunerController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fm/FMTunerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/htc/fm/FMTunerController;->mVolume:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/fm/FMTunerController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/htc/fm/FMTunerController;->mVolume:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/fm/FMTunerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/htc/fm/FMTunerController;->mVolumeStopPooling:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/fm/FMTunerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/htc/fm/FMTunerController;->mVolumeStopPooling:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMTunerController$VolumeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerController$VolumeHandler;)Lcom/htc/fm/FMTunerController$VolumeHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

    return-object p1
.end method

.method private addPreset(Lcom/htc/fm/Preset;)V
    .locals 3
    .parameter "preset"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    .line 1062
    :cond_0
    iget v0, p1, Lcom/htc/fm/Preset;->freq:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-le v0, v1, :cond_1

    iget v0, p1, Lcom/htc/fm/Preset;->freq:I

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-lt v0, v1, :cond_2

    .line 1063
    :cond_1
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner]freq outside of bounds, do not add it"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 1067
    :cond_2
    iget v0, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->freqExists(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] addPreset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1072
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] addPreset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private broadcastCmdState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    return-void
.end method

.method private broadcastState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 516
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] broadcastState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.statechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->getFMBtsUtils()Lcom/htc/fm/IFMBtsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/htc/fm/IFMBtsUtils;->cancelNotification(Landroid/content/Context;)V

    .line 1040
    return-void
.end method

.method private checkTunerCmdStatus4AudioStream()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 1481
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v0

    .line 1482
    .local v0, cmdState:I
    if-nez v0, :cond_1

    .line 1483
    iput v0, p0, Lcom/htc/fm/FMTunerController;->mPrevCmdStatus:I

    .line 1484
    sput-wide v7, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    .line 1508
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1489
    .local v1, now:J
    sget-wide v3, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    .line 1490
    iput v0, p0, Lcom/htc/fm/FMTunerController;->mPrevCmdStatus:I

    .line 1491
    sput-wide v1, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    .line 1494
    :cond_2
    iget v3, p0, Lcom/htc/fm/FMTunerController;->mPrevCmdStatus:I

    if-ne v0, v3, :cond_3

    .line 1495
    sget-wide v3, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1496
    const-string v3, "/data/data/com.htc.fm/audio_fm"

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->deleteFile(Ljava/lang/String;)V

    .line 1497
    sput-wide v7, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    .line 1498
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController] checkTunerCmdStatus4AudioStream() - Delete \'audio_file\' Wait for CMD("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Back!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    :cond_3
    iput v0, p0, Lcom/htc/fm/FMTunerController;->mPrevCmdStatus:I

    .line 1506
    sput-wide v7, Lcom/htc/fm/FMTunerController;->mPreCmdSameTimeStamp:J

    goto :goto_0
.end method

.method private disableAudioPath()V
    .locals 3

    .prologue
    .line 785
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController][AudioHardware] disableAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 788
    return-void
.end method

.method private enableAudioPath()V
    .locals 3

    .prologue
    .line 773
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController][AudioHardware] enableAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 777
    const/4 v0, 0x0

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    .line 780
    :cond_0
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 781
    return-void
.end method

.method private freqExists(I)Z
    .locals 5
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 1043
    iget-object v4, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    if-nez v4, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return v3

    .line 1045
    :cond_1
    iget-object v4, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1046
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1047
    iget-object v4, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/Preset;

    .line 1048
    .local v1, preset:Lcom/htc/fm/Preset;
    if-nez v1, :cond_3

    .line 1046
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1050
    :cond_3
    iget v4, v1, Lcom/htc/fm/Preset;->freq:I

    if-ne v4, p1, :cond_2

    .line 1051
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getFMBtsUtils()Lcom/htc/fm/IFMBtsUtils;
    .locals 3

    .prologue
    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    if-nez v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.htc.fm.FMBtsUtils"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/IFMBtsUtils;

    iput-object v1, p0, Lcom/htc/fm/FMTunerController;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFmBtsUtils:Lcom/htc/fm/IFMBtsUtils;

    return-object v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getMediaProvider()Landroid/content/IContentProvider;
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMTunerController;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method public static getNowPreset()Lcom/htc/fm/Preset;
    .locals 2

    .prologue
    .line 1019
    new-instance v0, Lcom/htc/fm/Preset;

    invoke-direct {v0}, Lcom/htc/fm/Preset;-><init>()V

    .line 1020
    .local v0, preset:Lcom/htc/fm/Preset;
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 1021
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    iput v1, v0, Lcom/htc/fm/Preset;->rowId:I

    .line 1022
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 1023
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 1024
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->RdsPTY:I

    iput v1, v0, Lcom/htc/fm/Preset;->rds_PTY:I

    .line 1025
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    iput v1, v0, Lcom/htc/fm/Preset;->rssi:I

    .line 1026
    return-object v0
.end method

.method private initAudioFunction()V
    .locals 3

    .prologue
    .line 764
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] initAudioFunction() - IsPrescanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") startVolumePolling()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->startVolumePolling()V

    .line 766
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] initAudioFunction() - mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] initAudioFunction() - IsPrescanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") switchAudioPath()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->enableAudioPath()V

    .line 769
    return-void
.end method

.method private isNeedScan()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 792
    const/4 v0, 0x1

    .line 794
    .local v0, ret:Z
    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AutoPrescanEnabled:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 804
    .end local v0           #ret:Z
    :cond_0
    :goto_0
    return v0

    .line 797
    .restart local v0       #ret:Z
    :cond_1
    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 798
    goto :goto_0

    .line 800
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 801
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetAdapter;->getPresetsNumber()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 802
    goto :goto_0
.end method

.method private isOnAirplane()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 712
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static reloadNowPlaying(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] reloadNowPlaying() - enter"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/htc/fm/FMUtils;->getNowPlaying(Landroid/content/Context;IZ)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 78
    .local v0, preset:Lcom/htc/fm/Preset;
    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 79
    iget v1, v0, Lcom/htc/fm/Preset;->rowId:I

    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    .line 80
    iget-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    sput-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 81
    iget-object v1, v0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    sput-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 82
    iget v1, v0, Lcom/htc/fm/Preset;->rssi:I

    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    .line 83
    iget v1, v0, Lcom/htc/fm/Preset;->rawRssi:I

    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    .line 84
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    sput-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 90
    :cond_1
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 91
    :cond_2
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 92
    sget-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    sput-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 95
    :cond_3
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] reloadNowPlaying() - exit"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private resetPreset(Z)V
    .locals 3
    .parameter "isUpdateBand"

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] resetPreset() - enter"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 101
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 103
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 104
    sput v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    .line 105
    sput v2, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    .line 106
    if-eqz p1, :cond_0

    .line 107
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    sput v0, Lcom/htc/fm/FMDef;->Frequency:I

    .line 109
    :cond_0
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] resetPreset() - exit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private savePresetsToDB()V
    .locals 8

    .prologue
    .line 1591
    iget-object v5, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    if-nez v5, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1594
    :cond_0
    iget-object v5, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1595
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1596
    iget-object v5, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fm/Preset;

    .line 1598
    .local v4, preset:Lcom/htc/fm/Preset;
    :try_start_0
    const-string v5, "FMTunerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMTunerController] savePresetsToDB ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/fm/Preset;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->getMediaProvider()Landroid/content/IContentProvider;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/htc/fm/FMUtils;->savePresetToDB(Landroid/content/IContentProvider;Lcom/htc/fm/Preset;)I

    move-result v2

    .line 1600
    .local v2, id:I
    if-nez v1, :cond_1

    .line 1601
    sput v2, Lcom/htc/fm/FMTunerController;->FirstPresetId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    .end local v2           #id:I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FMTunerController"

    const-string v6, "[FMTunerController] Exception: Cannot save preset to database"

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1608
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #preset:Lcom/htc/fm/Preset;
    :cond_2
    iget-object v5, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    goto :goto_0
.end method

.method private saveRds(JLjava/lang/String;)V
    .locals 8
    .parameter "freq"
    .parameter "rds"

    .prologue
    .line 1612
    const-string v5, "FMTunerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMTunerController] saveRds():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;J)Ljava/util/Vector;

    move-result-object v3

    .line 1618
    .local v3, presetVec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/fm/Preset;>;"
    if-eqz v3, :cond_0

    .line 1622
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1623
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 1624
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fm/Preset;

    .line 1625
    .local v2, preset:Lcom/htc/fm/Preset;
    iput-object p3, v2, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 1626
    iget-object v5, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1627
    :cond_2
    iput-object p3, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 1628
    :cond_3
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->getMediaProvider()Landroid/content/IContentProvider;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/htc/fm/FMUtils;->savePresetToDB(Landroid/content/IContentProvider;Lcom/htc/fm/Preset;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1631
    .end local v1           #i:I
    .end local v2           #preset:Lcom/htc/fm/Preset;
    .end local v3           #presetVec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/fm/Preset;>;"
    .end local v4           #size:I
    :catch_0
    move-exception v0

    .line 1632
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1633
    const-string p3, ""

    goto :goto_0
.end method

.method private setBand()V
    .locals 2

    .prologue
    .line 616
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 620
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private declared-synchronized startFMTunerHandler()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mStartTunerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mStartTunerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    .line 115
    :cond_0
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] startFMTunerHandler() - already created - return!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_1
    new-instance v0, Lcom/htc/fm/FMTunerController$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMTunerController$1;-><init>(Lcom/htc/fm/FMTunerController;)V

    iput-object v0, p0, Lcom/htc/fm/FMTunerController;->mStartTunerThread:Ljava/lang/Thread;

    .line 132
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mStartTunerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startSaveScannedPresets()V
    .locals 5

    .prologue
    .line 136
    const-string v2, "FMTunerController"

    const-string v3, "[FMTunerController][FMTuner] startSaveScannedPresets() START"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    .local v0, needSave2DB:Z
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 142
    const-string v2, "FMTunerController"

    const-string v3, "[FMTunerController][FMTuner] startSaveScannedPresets mPresetVec is null or size is 0"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 156
    new-instance v2, Lcom/htc/fm/FMTunerController$2;

    invoke-direct {v2, p0}, Lcom/htc/fm/FMTunerController$2;-><init>(Lcom/htc/fm/FMTunerController;)V

    invoke-virtual {v2}, Lcom/htc/fm/FMTunerController$2;->start()V

    .line 183
    :goto_1
    return-void

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 145
    const-string v2, "FMTunerController"

    const-string v3, "[FMTunerController][FMTuner] startSaveScannedPresets() only one Frequence"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/Preset;

    .line 147
    .local v1, preset:Lcom/htc/fm/Preset;
    iget v2, v1, Lcom/htc/fm/Preset;->freq:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/htc/fm/Preset;->freq:I

    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-ne v2, v3, :cond_1

    .line 148
    :cond_3
    const-string v2, "FMTunerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTunerController][FMTuner] startSaveScannedPresets() the only one is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    goto :goto_0

    .line 172
    .end local v1           #preset:Lcom/htc/fm/Preset;
    :cond_4
    new-instance v2, Lcom/htc/fm/FMTunerController$3;

    invoke-direct {v2, p0}, Lcom/htc/fm/FMTunerController$3;-><init>(Lcom/htc/fm/FMTunerController;)V

    invoke-virtual {v2}, Lcom/htc/fm/FMTunerController$3;->start()V

    goto :goto_1
.end method

.method private stopVolumePolling()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1536
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] stopVolumePolling()!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

    if-nez v0, :cond_0

    .line 1543
    :goto_0
    return-void

    .line 1539
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMTunerController;->mVolume:I

    .line 1540
    iput-boolean v2, p0, Lcom/htc/fm/FMTunerController;->mVolumeStopPooling:Z

    .line 1541
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

    invoke-virtual {v0, v2}, Lcom/htc/fm/FMTunerController$VolumeHandler;->removeMessages(I)V

    .line 1542
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMTunerController$VolumeHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private syncPresetTitle(I)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetAdapter;->getPresetsNumber()I

    move-result v1

    if-nez v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 1154
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/fm/FMPresetAdapter;->getFrequencyTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, title:Ljava/lang/String;
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] syncPresetTitle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ").Title("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1157
    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public abortScan()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsAbortScan:Z

    .line 478
    return-void
.end method

.method public disableAudio()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    goto :goto_0
.end method

.method public dispatchRequest(I)V
    .locals 4
    .parameter "cmd"

    .prologue
    .line 534
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] dispatchRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] illegalState! mState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mCmdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-eqz v1, :cond_0

    .line 548
    packed-switch p1, :pswitch_data_0

    .line 609
    :pswitch_0
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (Unknown)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] CMD_TUNE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0, p1}, Lcom/htc/fm/FMTunerController;->tune(I)V

    goto :goto_0

    .line 550
    :pswitch_1
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_SEEK_UP)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->seekUp()V

    goto :goto_0

    .line 554
    :pswitch_2
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_SEEK_DOWN)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->seekDown()V

    goto :goto_0

    .line 559
    :pswitch_3
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_RSSI_ON)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setRssiOn()V

    goto :goto_0

    .line 563
    :pswitch_4
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_RSSI_OFF)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setRssiOff()V

    goto :goto_0

    .line 567
    :pswitch_5
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_RDS_ON)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setRdsOn()V

    goto :goto_0

    .line 571
    :pswitch_6
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_RDS_OFF)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setRdsOff()V

    goto :goto_0

    .line 575
    :pswitch_7
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_AUDIO_SPEAKER)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setSpeakerOut()V

    goto :goto_0

    .line 580
    :pswitch_8
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_AUDIO_HEADSET)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setHeadsetOut()V

    goto/16 :goto_0

    .line 585
    :pswitch_9
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_SET_BAND)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->setBand()V

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.fmseekcomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 592
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_a
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_STEREO)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setStereo()V

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.fmseekcomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_b
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_MONO)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setMono()V

    goto/16 :goto_0

    .line 604
    :pswitch_c
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] (CMD_MONO)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->setMono()V

    goto/16 :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 628
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioMode:I

    return v0
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    .line 624
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    return v0
.end method

.method public getBand()I
    .locals 1

    .prologue
    .line 632
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Band:I

    return v0
.end method

.method public getCmdState()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerHandler;->getCmdState()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstPresetId()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1572
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    if-nez v2, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return v1

    .line 1574
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetAdapter;->getFirstPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1575
    .local v0, preset:Lcom/htc/fm/Preset;
    if-eqz v0, :cond_0

    .line 1577
    iget v1, v0, Lcom/htc/fm/Preset;->rowId:I

    goto :goto_0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 636
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    return v0
.end method

.method public getHeadsetWarningMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPresetId()I
    .locals 1

    .prologue
    .line 640
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    return v0
.end method

.method public getRawRssi()I
    .locals 1

    .prologue
    .line 648
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    return v0
.end method

.method public getRdsData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 654
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 657
    :cond_1
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    return-object v0
.end method

.method public getRdsPTYData()I
    .locals 1

    .prologue
    .line 663
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->RdsPTY:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 644
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerHandler;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public getStateMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f090021

    .line 1646
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v1

    .line 1647
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 1654
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 1665
    :goto_0
    return-object v2

    .line 1649
    :pswitch_0
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1651
    :pswitch_1
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1658
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v0

    .line 1659
    .local v0, cmdState:I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1663
    :pswitch_2
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1661
    :pswitch_3
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1659
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public initPresetAdapter()V
    .locals 2

    .prologue
    .line 205
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AutoPrescanEnabled:Z

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerHandler] initPresetAdapter() - enter"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/htc/fm/FMPresetAdapter;

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/fm/FMPresetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    .line 216
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->resetPreset(Z)V

    .line 218
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 219
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerHandler] initPresetAdapter() - exit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public isRdsOn()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v0, :cond_0

    .line 675
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerHandler;->isRdsOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isRssiOn()Z
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 670
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerHandler;->isRssiOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 512
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    return v0
.end method

.method public isStatusOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v2}, Lcom/htc/fm/FMTunerHandler;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onAFChanged(I)V
    .locals 0
    .parameter "afMode"

    .prologue
    .line 1170
    return-void
.end method

.method public onFrequencyChanged(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 1387
    return-void
.end method

.method public onHeadsetPlugged()V
    .locals 1

    .prologue
    .line 1638
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1639
    return-void
.end method

.method public onHeadsetUnPlugged()V
    .locals 1

    .prologue
    .line 1642
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1643
    return-void
.end method

.method public onNopresetScanned()V
    .locals 1

    .prologue
    .line 1678
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1679
    return-void
.end method

.method public onPresetUpdated(I)V
    .locals 3
    .parameter "rowId"

    .prologue
    .line 1682
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController][FMTuner] - syncPresetTitle onPresetUpdated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - I Current RowId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    if-eqz v0, :cond_0

    .line 1684
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController][FMTuner] - syncPresetTitle onPresetUpdated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - II"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 1686
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 1687
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->syncPresetTitle(I)V

    .line 1689
    :cond_0
    return-void
.end method

.method public onRdsDataChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "rds"

    .prologue
    .line 1213
    sput-object p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 1214
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onRdsDataChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1217
    :cond_0
    sput-object p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 1220
    :cond_1
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner] onRdsDataChanged - updateNotification()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 1222
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/fm/FMTunerController;->saveRds(JLjava/lang/String;)V

    .line 1223
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1224
    return-void
.end method

.method public onRdsPTYDataChanged(I)V
    .locals 3
    .parameter "nCode"

    .prologue
    .line 1228
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->RdsPTY:I

    .line 1229
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onRdsPTYDataChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->RdsPTY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner] onRdsPTYDataChanged - updateNotification()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 1234
    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1235
    return-void
.end method

.method public onRemoteTuneComplete(I)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 1167
    return-void
.end method

.method public onRssiChanged(II)V
    .locals 3
    .parameter "rssi"
    .parameter "rawRssi"

    .prologue
    .line 1239
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    .line 1240
    sput p2, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    .line 1242
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onRssiChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1245
    return-void
.end method

.method public onScanComplete()V
    .locals 3

    .prologue
    .line 1551
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] onScanComplete()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/16 v1, 0x76

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1554
    sget-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsNewScanBehavior:Z

    if-eqz v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    invoke-static {v1, v2}, Lcom/htc/fm/FMUtils;->getFirstChannel(Landroid/content/Context;I)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1556
    .local v0, preset:Lcom/htc/fm/Preset;
    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMTunerController;->tune(I)V

    .line 1569
    :goto_0
    return-void

    .line 1558
    .end local v0           #preset:Lcom/htc/fm/Preset;
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/fm/FMTunerController;->FirstPresetId:I

    invoke-static {v1, v2}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;I)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1559
    .restart local v0       #preset:Lcom/htc/fm/Preset;
    if-nez v0, :cond_1

    .line 1560
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] onScanComplete() no FirstPreset!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMTunerController;->tune(I)V

    goto :goto_0

    .line 1564
    :cond_1
    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 1565
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 1566
    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMTunerController;->tune(I)V

    goto :goto_0
.end method

.method public onSeekDownComplete(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 1082
    invoke-static {}, Lcom/htc/fm/FMTunerController;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 1084
    .local v0, prePlaying:Lcom/htc/fm/Preset;
    const/4 v1, -0x1

    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    .line 1085
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 1086
    const-string v1, ""

    sput-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 1087
    const-string v1, ""

    sput-object v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 1089
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->syncPresetTitle(I)V

    .line 1090
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController][FMTuner] onSeekDownComplete - updateNotification()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le p1, v1, :cond_0

    .line 1094
    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 1095
    iget v1, v0, Lcom/htc/fm/Preset;->freq:I

    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 1099
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 1100
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] onSeekDownComplete()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1102
    return-void

    .line 1097
    :cond_0
    invoke-static {}, Lcom/htc/fm/FMTunerController;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    goto :goto_0
.end method

.method public onSeekUpComplete(I)V
    .locals 8
    .parameter "freq"

    .prologue
    const/16 v7, 0x6a

    const/4 v6, 0x0

    .line 898
    invoke-static {}, Lcom/htc/fm/FMTunerController;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    .line 900
    .local v0, prePlaying:Lcom/htc/fm/Preset;
    const/4 v3, -0x1

    sput v3, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    .line 901
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 902
    const-string v3, ""

    sput-object v3, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 903
    const-string v3, ""

    sput-object v3, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 905
    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-nez v3, :cond_0

    .line 906
    sget v3, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-direct {p0, v3}, Lcom/htc/fm/FMTunerController;->syncPresetTitle(I)V

    .line 907
    const-string v3, "FMTunerController"

    const-string v4, "[FMTunerController][FMTuner] onSeekUpComplete updateNotification()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-le p1, v3, :cond_6

    .line 911
    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 912
    iget v3, v0, Lcom/htc/fm/Preset;->freq:I

    sput v3, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 917
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 919
    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsNewScanBehavior:Z

    if-eqz v3, :cond_9

    .line 920
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController][FMTuner] onSeekUpComplete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") new scan behavior"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget v3, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    if-nez v3, :cond_1

    .line 923
    iput p1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 925
    :cond_1
    iget v3, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    if-le v3, p1, :cond_2

    .line 926
    iput v6, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 927
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->stopScan()V

    .line 931
    :cond_2
    sget v3, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    .line 932
    const/16 v3, 0x77

    invoke-direct {p0, v3}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 933
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onSeekUpComplete]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/fm/FMTunerController$TunerInfo;->nNumScanChans:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    sget v3, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 936
    invoke-static {}, Lcom/htc/fm/FMUtils;->clearFirstChannel()V

    .line 937
    new-instance v2, Lcom/htc/fm/Preset;

    invoke-direct {v2}, Lcom/htc/fm/Preset;-><init>()V

    .line 938
    .local v2, tmpPreset:Lcom/htc/fm/Preset;
    iput p1, v2, Lcom/htc/fm/Preset;->freq:I

    .line 939
    invoke-static {v2}, Lcom/htc/fm/FMUtils;->saveFirstChannel(Lcom/htc/fm/Preset;)V

    .line 942
    .end local v2           #tmpPreset:Lcom/htc/fm/Preset;
    :cond_3
    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-ge p1, v3, :cond_4

    sget v3, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    sget v4, Lcom/htc/fm/FMTunerController$TunerInfo;->nNumScanChans:I

    if-ge v3, v4, :cond_4

    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsAbortScan:Z

    if-eqz v3, :cond_8

    .line 945
    :cond_4
    iput v6, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 948
    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsAbortScan:Z

    if-eqz v3, :cond_7

    .line 949
    const/16 v3, 0x78

    invoke-direct {p0, v3}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 953
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->stopScan()V

    .line 1016
    :cond_5
    :goto_2
    return-void

    .line 914
    :cond_6
    invoke-static {}, Lcom/htc/fm/FMTunerController;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    goto/16 :goto_0

    .line 951
    :cond_7
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->onScanComplete()V

    goto :goto_1

    .line 955
    :cond_8
    iput p1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 956
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->seekUp()V

    goto :goto_2

    .line 963
    :cond_9
    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-eqz v3, :cond_e

    .line 964
    iget v3, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    if-nez v3, :cond_a

    .line 965
    iput p1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 967
    :cond_a
    iget v3, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    if-le v3, p1, :cond_b

    .line 968
    iput v6, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 969
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->stopScan()V

    .line 971
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController][FMTuner] onSeekUpComplete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0, v7}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 974
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->startSaveScannedPresets()V

    goto :goto_2

    .line 975
    :cond_b
    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-lt p1, v3, :cond_d

    .line 977
    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-ne p1, v3, :cond_c

    iget-object v3, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v3}, Lcom/htc/fm/FMTunerHandler;->isWeakSignal()Z

    move-result v3

    if-nez v3, :cond_c

    .line 978
    new-instance v1, Lcom/htc/fm/Preset;

    invoke-direct {v1}, Lcom/htc/fm/Preset;-><init>()V

    .line 979
    .local v1, preset:Lcom/htc/fm/Preset;
    sget v3, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    iput v3, v1, Lcom/htc/fm/Preset;->freq:I

    .line 980
    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->addPreset(Lcom/htc/fm/Preset;)V

    .line 983
    .end local v1           #preset:Lcom/htc/fm/Preset;
    :cond_c
    iput v6, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 984
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->stopScan()V

    .line 986
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController][FMTuner] onSeekUpComplete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, v7}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 989
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->startSaveScannedPresets()V

    goto/16 :goto_2

    .line 992
    :cond_d
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController][FMTuner] onSeekUpComplete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-direct {p0, v7}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 995
    iput p1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 996
    new-instance v1, Lcom/htc/fm/Preset;

    invoke-direct {v1}, Lcom/htc/fm/Preset;-><init>()V

    .line 997
    .restart local v1       #preset:Lcom/htc/fm/Preset;
    iput p1, v1, Lcom/htc/fm/Preset;->freq:I

    .line 998
    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->addPreset(Lcom/htc/fm/Preset;)V

    .line 999
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController][FMTuner] add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preset("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->seekUp()V

    goto/16 :goto_2

    .line 1004
    .end local v1           #preset:Lcom/htc/fm/Preset;
    :cond_e
    const-string v3, "FMTunerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTunerController][FMTuner] onSeekUpComplete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-direct {p0, v7}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1007
    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    if-eqz v3, :cond_5

    .line 1008
    new-instance v1, Lcom/htc/fm/Preset;

    invoke-direct {v1}, Lcom/htc/fm/Preset;-><init>()V

    .line 1009
    .restart local v1       #preset:Lcom/htc/fm/Preset;
    iput p1, v1, Lcom/htc/fm/Preset;->freq:I

    .line 1010
    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->addPreset(Lcom/htc/fm/Preset;)V

    .line 1011
    const-string v3, "FMTunerController"

    const-string v4, "[FMTunerController][FMTuner] IsStopScanning!!"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    sput-boolean v6, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    .line 1013
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->startSaveScannedPresets()V

    goto/16 :goto_2
.end method

.method public onSeekingDown()V
    .locals 2

    .prologue
    .line 1076
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSeekingDown()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1078
    return-void
.end method

.method public onSeekingUp()V
    .locals 2

    .prologue
    .line 888
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSeekingUp()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 890
    return-void
.end method

.method public onSetBandComplete(I)V
    .locals 3
    .parameter "band"

    .prologue
    .line 1248
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Band:I

    .line 1250
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSetBandComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Band:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1253
    return-void
.end method

.method public onSetHeadsetOutComplete()V
    .locals 2

    .prologue
    .line 1185
    const/4 v0, 0x0

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    .line 1186
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSetHeadsetOutComplete()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const/16 v0, 0x71

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1188
    return-void
.end method

.method public onSetMonoComplete()V
    .locals 2

    .prologue
    .line 1173
    const/4 v0, 0x1

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioMode:I

    .line 1174
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSetMonoComplete()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1176
    return-void
.end method

.method public onSetMuteComplete()V
    .locals 2

    .prologue
    .line 1197
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    .line 1198
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSetMuteComplete()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1200
    return-void
.end method

.method public onSetRdsOffComplete()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1256
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    .line 1257
    iput-boolean v1, p0, Lcom/htc/fm/FMTunerController;->mIsNeedRdsOff:Z

    .line 1258
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] onSetRdsOffComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1262
    return-void
.end method

.method public onSetRdsOnComplete()V
    .locals 4

    .prologue
    .line 1265
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    .line 1266
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] onSetRdsOnComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1270
    return-void
.end method

.method public onSetRssiOffComplete()V
    .locals 4

    .prologue
    .line 1273
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController][FMTuner] onSetRssiOffComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1277
    return-void
.end method

.method public onSetRssiOnComplete()V
    .locals 4

    .prologue
    .line 1280
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController][FMTuner] onSetRssiOnComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1284
    return-void
.end method

.method public onSetSpeakerOutComplete()V
    .locals 2

    .prologue
    .line 1191
    const/4 v0, 0x1

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    .line 1192
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSetSpeakerOutComplete()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1194
    return-void
.end method

.method public onSetStereoComplete()V
    .locals 2

    .prologue
    .line 1179
    const/4 v0, 0x0

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioMode:I

    .line 1180
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSetStereoComplete()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1182
    return-void
.end method

.method public onSetUnMuteComplete()V
    .locals 4

    .prologue
    .line 1287
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    .line 1288
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] onSetUnMuteComplete("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x70

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1292
    return-void
.end method

.method public onSetUnmuteComplete()V
    .locals 2

    .prologue
    .line 1204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    .line 1205
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onSetUnmuteComplete()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1207
    return-void
.end method

.method public onSetVolumeComplete(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 1370
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSetVolumeComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Volume:I

    .line 1372
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1373
    iget v0, p0, Lcom/htc/fm/FMTunerController;->mVolume:I

    if-gtz v0, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->onSetMuteComplete()V

    .line 1379
    :goto_0
    return-void

    .line 1376
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->onSetUnMuteComplete()V

    goto :goto_0
.end method

.method public onSettingBand(I)V
    .locals 3
    .parameter "band"

    .prologue
    .line 1295
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingBand("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Band:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1298
    return-void
.end method

.method public onSettingHeadsetOut()V
    .locals 3

    .prologue
    .line 1301
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingHeadsetOut("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1304
    return-void
.end method

.method public onSettingMono()V
    .locals 3

    .prologue
    .line 1307
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingMono("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1310
    return-void
.end method

.method public onSettingMute()V
    .locals 4

    .prologue
    .line 1313
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] onSettingMute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1317
    return-void
.end method

.method public onSettingRdsOff()V
    .locals 3

    .prologue
    .line 1320
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingRdsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1323
    return-void
.end method

.method public onSettingRdsOn()V
    .locals 3

    .prologue
    .line 1326
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingRdsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1329
    return-void
.end method

.method public onSettingRssiOff()V
    .locals 3

    .prologue
    .line 1332
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingRssiOff("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1335
    return-void
.end method

.method public onSettingRssiOn()V
    .locals 3

    .prologue
    .line 1338
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingRssiOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1341
    return-void
.end method

.method public onSettingSpeakerOut()V
    .locals 3

    .prologue
    .line 1344
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingSpeakerOut("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1347
    return-void
.end method

.method public onSettingStereo()V
    .locals 3

    .prologue
    .line 1350
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingStereo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1353
    return-void
.end method

.method public onSettingUnMute()V
    .locals 3

    .prologue
    .line 1356
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingUnMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1359
    return-void
.end method

.method public onSettingVolume(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 1362
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSettingVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Volume:I

    .line 1365
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1366
    return-void
.end method

.method public onSignalChanged(I)V
    .locals 3
    .parameter "rssi"

    .prologue
    .line 859
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    .line 860
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSignalChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 862
    return-void
.end method

.method public onSignalUpdate(II)V
    .locals 3
    .parameter "rssi"
    .parameter "rawRssi"

    .prologue
    .line 866
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    .line 867
    sput p2, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    .line 868
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onSignalChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 871
    return-void
.end method

.method public onStartScan()V
    .locals 2

    .prologue
    .line 1546
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onStartScan()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1548
    return-void
.end method

.method public onTuneComplete(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 1113
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 1114
    sget-boolean v0, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    .line 1116
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 1117
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 1118
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->syncPresetTitle(I)V

    .line 1120
    :cond_0
    sput-boolean v3, Lcom/htc/fm/FMTunerController;->IsRequestTune:Z

    .line 1123
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsNewScanBehavior:Z

    if-nez v0, :cond_1

    .line 1124
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController][FMTuner] onTuneCompleted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isStopScanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isScanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isScanning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") IsPrescanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1126
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner] onTuneComplete - updateNotification()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 1131
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-eqz v0, :cond_3

    .line 1132
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->seekUp()V

    .line 1144
    :cond_2
    :goto_0
    invoke-static {}, Lcom/htc/fm/FMTunerController;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 1145
    return-void

    .line 1134
    :cond_3
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    if-eqz v0, :cond_2

    .line 1135
    :cond_4
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    if-eqz v0, :cond_5

    .line 1136
    sput-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    .line 1138
    :cond_5
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    if-eqz v0, :cond_6

    .line 1139
    sput-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    .line 1141
    :cond_6
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->initAudioFunction()V

    goto :goto_0
.end method

.method public onTunerHandlerReady()V
    .locals 4

    .prologue
    .line 699
    const-string v2, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] onTunerHandlerReady() mFMTunerHandler?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_1

    .line 709
    :goto_1
    return-void

    .line 699
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 705
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 706
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 707
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 708
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/fm/FMTunerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public onTuning(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 1105
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 1106
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onTuning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1108
    return-void
.end method

.method public onTurnOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 815
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 816
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 817
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] @@@@ onTurnOff() - mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "FMTunerController"

    const-string v1, "sendBroadcast Intent(Intent.ACTION_FM) state=1"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    const/16 v1, 0x1bc

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMTunerHandler;->removeMessages(I)V

    .line 824
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMTunerHandler;->sendEmptyMessage(I)Z

    .line 825
    iput-object v3, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->stopVolumePolling()V

    .line 830
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastState(I)V

    .line 831
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->cancelNotification()V

    .line 832
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mMediaProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 834
    iput-object v3, p0, Lcom/htc/fm/FMTunerController;->mMediaProvider:Landroid/content/IContentProvider;

    .line 837
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    .line 839
    iget v0, p0, Lcom/htc/fm/FMTunerController;->mFinalState:I

    iget v1, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    if-eq v0, v1, :cond_2

    .line 840
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMTunerController;->turnOn(I)V

    .line 842
    :cond_2
    return-void
.end method

.method public onTurnOffFailed()V
    .locals 2

    .prologue
    .line 845
    const-string v0, "FMTunerController"

    const-string v1, "<Critial>Turnoff Timeout! Force to reset state"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v0, "FMTunerController"

    const-string v1, "<Critial>It should have some errors in FM tuner, please check tuner side"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->onTurnOff()V

    .line 848
    return-void
.end method

.method public onTurnOn(I)V
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 718
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 720
    const-string v0, "FMTunerController"

    const-string v1, "sendBroadcast Intent(Intent.ACTION_FM) state=1"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 724
    :cond_1
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->syncPresetTitle(I)V

    .line 726
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMTunerController;->mVolume:I

    .line 727
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner] onTurnOn - updateNotification()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-direct {p0, v3}, Lcom/htc/fm/FMTunerController;->broadcastState(I)V

    .line 730
    iput v2, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    .line 733
    sget-boolean v0, Lcom/htc/fm/FMUtils;->TurnOffAtTurningOn:Z

    if-eqz v0, :cond_4

    .line 734
    sput-boolean v2, Lcom/htc/fm/FMUtils;->TurnOffAtTurningOn:Z

    .line 735
    const-string v0, "FMTunerController"

    const-string v1, "turn off FM when it is turing on! - turnOff()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->turnOff()V

    .line 761
    :cond_3
    :goto_0
    return-void

    .line 741
    :cond_4
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->isOnAirplane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 742
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner] Airplane Mode! - turnOff()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->turnOff()V

    goto :goto_0

    .line 747
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 749
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->isNeedScan()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 750
    sput-boolean v3, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    .line 751
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->scan()V

    goto :goto_0

    .line 755
    :cond_6
    sput-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    .line 756
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->initAudioFunction()V

    .line 758
    iget v0, p0, Lcom/htc/fm/FMTunerController;->mFinalState:I

    iget v1, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    if-eq v0, v1, :cond_3

    .line 759
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->turnOff()V

    goto :goto_0
.end method

.method public onTurningOff()V
    .locals 3

    .prologue
    .line 851
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onTurningOff() - mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->cancelNotification()V

    .line 855
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastState(I)V

    .line 856
    return-void
.end method

.method public onTurningOn(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 808
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] onTurningOn() - mAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastState(I)V

    .line 811
    return-void
.end method

.method public onVolumeChanged()V
    .locals 2

    .prologue
    .line 1162
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] onVolumeChanged"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lcom/htc/fm/FMTunerController;->broadcastCmdState(I)V

    .line 1164
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 1383
    return-void
.end method

.method public onWorldRegionChanged(I)V
    .locals 0
    .parameter "worldRegion"

    .prologue
    .line 1210
    return-void
.end method

.method public reloadPresets()V
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;

    if-eqz v1, :cond_0

    .line 235
    new-instance v0, Lcom/htc/fm/FMTunerController$4;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMTunerController$4;-><init>(Lcom/htc/fm/FMTunerController;)V

    .line 251
    .local v0, runner:Ljava/lang/Thread;
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerHandler] reloadPresets() - enter"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public scan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMTunerController;->FirstPresetId:I

    .line 483
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    .line 484
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    .line 485
    iput v1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 487
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 490
    :cond_0
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] scan() setAudioPath disable!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->disableAudioPath()V

    .line 492
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->onStartScan()V

    .line 493
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMTunerController;->tune(I)V

    .line 494
    return-void
.end method

.method public scan(I)V
    .locals 3
    .parameter "nChans"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 463
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMTunerController;->FirstPresetId:I

    .line 464
    sput-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsNewScanBehavior:Z

    .line 465
    sput-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    .line 466
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    .line 467
    iput v1, p0, Lcom/htc/fm/FMTunerController;->mPrevScannedFreq:I

    .line 468
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->nNumScanChans:I

    .line 470
    const-string v0, "FMTunerController"

    const-string v1, "scan(nChans) setAudioPath disable!"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->disableAudioPath()V

    .line 472
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->onStartScan()V

    .line 473
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMTunerController;->tune(I)V

    .line 474
    return-void
.end method

.method public seekDown()V
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 334
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seekUp()V
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 341
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 342
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAudoPrescanEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1669
    sput-boolean p1, Lcom/htc/fm/FMTunerController$TunerInfo;->AutoPrescanEnabled:Z

    .line 1670
    return-void
.end method

.method public setHeadsetOut()V
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 358
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setMono()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 449
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 450
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setRdsOff()V
    .locals 2

    .prologue
    .line 432
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    sget-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    if-nez v1, :cond_1

    .line 436
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fm/FMTunerController;->mIsNeedRdsOff:Z

    .line 440
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 441
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 438
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fm/FMTunerController;->mIsNeedRdsOff:Z

    goto :goto_1
.end method

.method public setRdsOn()V
    .locals 2

    .prologue
    .line 421
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 425
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 426
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setRssiOff()V
    .locals 4

    .prologue
    .line 402
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] setRssiOff() IsRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v1

    if-nez v1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 417
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setRssiOn()V
    .locals 4

    .prologue
    .line 381
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] setRssiOn() IsRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v1

    if-nez v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->isScreenOn:Z

    if-eqz v1, :cond_0

    .line 395
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 397
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setSpeakerOut()V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 349
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 350
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setStereo()V
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 458
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 370
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] setVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 376
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public startVolumePolling()V
    .locals 3

    .prologue
    .line 1512
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] startVolumePolling()!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mVolumeHandler:Lcom/htc/fm/FMTunerController$VolumeHandler;

    if-eqz v1, :cond_0

    .line 1515
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] startVolumePolling() return! not null!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :goto_0
    return-void

    .line 1519
    :cond_0
    new-instance v0, Lcom/htc/fm/FMTunerController$5;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMTunerController$5;-><init>(Lcom/htc/fm/FMTunerController;)V

    .line 1532
    .local v0, runner:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopScan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    sget-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    .line 502
    :goto_0
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    .line 505
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsNewScanBehavior:Z

    .line 506
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    .line 507
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsAbortScan:Z

    .line 509
    return-void

    .line 500
    :cond_0
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    goto :goto_0
.end method

.method public tune(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-nez v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 325
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 326
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    invoke-virtual {v1, v0}, Lcom/htc/fm/FMTunerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public turnOff()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 296
    iget v1, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    if-nez v1, :cond_2

    .line 297
    iput v2, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    .line 298
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v0

    .line 299
    .local v0, state:I
    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 300
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] illegalState! mState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mCmdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local v0       #state:I
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMTunerHandler;->sendEmptyMessage(I)Z

    .line 315
    .end local v0           #state:I
    :cond_2
    iput v3, p0, Lcom/htc/fm/FMTunerController;->mFinalState:I

    goto :goto_0
.end method

.method public turnOn(I)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 257
    iget v1, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 258
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/fm/FMTunerController;->mCurrentState:I

    .line 259
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] illegalState! mState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mCmdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const-string v1, "FMTunerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTunerController] illegalState! mState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mCmdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    if-lt p1, v1, :cond_2

    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    if-gt p1, v1, :cond_2

    .line 274
    sput p1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 278
    :goto_1
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    if-eqz v1, :cond_3

    .line 279
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] turnOn()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    sget v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 285
    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/fm/FMTunerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 276
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController] Frequency is out of the range of the band!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_3
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->startFMTunerHandler()V

    .line 291
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/fm/FMTunerController;->mFinalState:I

    goto :goto_0
.end method

.method public updateCmdStateComplete(I)V
    .locals 3
    .parameter "cmdState"

    .prologue
    .line 680
    const-string v0, "FMTunerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTunerController] updateCmdStateComplete() IsStopScanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") IsScanning("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cmdState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-direct {p0}, Lcom/htc/fm/FMTunerController;->getFMBtsUtils()Lcom/htc/fm/IFMBtsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/fm/FMTunerController;->getNowPreset()Lcom/htc/fm/Preset;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/fm/IFMBtsUtils;->updateNotification(Landroid/content/Context;Lcom/htc/fm/Preset;)V

    goto :goto_0
.end method
