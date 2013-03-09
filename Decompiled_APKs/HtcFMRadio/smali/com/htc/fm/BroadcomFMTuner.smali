.class public Lcom/htc/fm/BroadcomFMTuner;
.super Ljava/lang/Object;
.source "BroadcomFMTuner.java"

# interfaces
.implements Lcom/htc/fm/IFMTuner;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/BroadcomFMTuner$TunerStatus;,
        Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;,
        Lcom/htc/fm/BroadcomFMTuner$EventHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_FREQUENCY:I = 0x0

.field private static final MAX_RETRY_TURNON:I = 0x5

.field private static final RETRY_DELAY:I = 0xc8

.field private static final RSSI_STATE_MAX:I = 0x4e

.field private static final SCAN_RSSI_THRESHOLD:I = 0x66

.field private static final TOTAL_RSSI_LEVEL:I = 0x7

.field private static final VOLUMES:[I = null

.field private static final WHAT_AUDIO_MODE:I = 0x2

.field private static final WHAT_AUDIO_PATH:I = 0x3

.field private static final WHAT_EVENT_AF_CHANGED:I = 0x7

.field private static final WHAT_EVENT_AUDIO_MODE_CHANGED:I = 0x8

.field private static final WHAT_EVENT_AUDIO_PATH_CHANGED:I = 0x9

.field private static final WHAT_EVENT_FREQ_CHANGED:I = 0x3

.field private static final WHAT_EVENT_MUTE_CHANGED:I = 0x2

.field private static final WHAT_EVENT_RDS_CHANGED:I = 0x5

.field private static final WHAT_EVENT_RDS_UPDATED:I = 0x6

.field private static final WHAT_EVENT_SEEK_COMPLETED:I = 0xa

.field private static final WHAT_EVENT_SIGNAL_CHANGED:I = 0x1

.field private static final WHAT_EVENT_TUNE_COMPLETED:I = 0xb

.field private static final WHAT_EVENT_WORLD_CHANGED:I = 0x4

.field private static final WHAT_LIVE_AUDIO_QUALITY:I = 0x4

.field private static final WHAT_QUIT:I = -0x1

.field private static final WHAT_RDS_DATA:I = 0x6

.field private static final WHAT_RDS_MODE:I = 0x5

.field private static final WHAT_RETRY_TURNON:I = 0xb

.field private static final WHAT_SEEK_COMPLETE:I = 0x8

.field private static final WHAT_STATUS_EVENT:I = 0x7

.field private static final WHAT_STATUS_TURNING_OFF:I = 0x4

.field private static final WHAT_STATUS_TURNING_ON:I = 0x2

.field private static final WHAT_STATUS_TURN_OFF:I = 0x3

.field private static final WHAT_STATUS_TURN_ON:I = 0x1

.field private static final WHAT_TUNE_FIRST:I = 0xa

.field private static final WHAT_VOLUME:I = 0x1

.field private static final WHAT_WORLD_REGION:I = 0x9


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioMode:I

.field private mAudioPath:I

.field private mBand:I

.field private mCmdState:I

.field private mContext:Landroid/content/Context;

.field private mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

.field private mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

.field private mFreq:I

.field private mIsMute:Z

.field mIsSeekUp:Z

.field private mNfl:I

.field private mPendingAfMode:I

.field private mPendingAudioPath:I

.field private mPendingFMVolume:I

.field private mPendingFrequency:I

.field private mPendingLivePollinterval:I

.field private mPendingMute:Z

.field private mPrevVolume:I

.field private mRSSILevelTable:[I

.field private mRetryHandler:Landroid/os/Handler;

.field private mRetryTurnOnTimes:I

.field private mState:I

.field private mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

.field private mWorldRegion:I

.field private muteUpdatePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sput v0, Lcom/htc/fm/BroadcomFMTuner;->DEFAULT_FREQUENCY:I

    .line 826
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/fm/BroadcomFMTuner;->VOLUMES:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    .line 96
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    .line 113
    iput-boolean v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsMute:Z

    .line 118
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mAudioMode:I

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mAudioPath:I

    .line 128
    const-string v0, "BroadcomFMTuner"

    iput-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    .line 141
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mWorldRegion:I

    .line 143
    sget v0, Lcom/htc/fm/BroadcomFMTuner;->DEFAULT_FREQUENCY:I

    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFreq:I

    .line 147
    sget v0, Lcom/htc/fm/BroadcomFMTuner;->DEFAULT_FREQUENCY:I

    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    .line 149
    iput-boolean v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingMute:Z

    .line 151
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAfMode:I

    .line 153
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingLivePollinterval:I

    .line 155
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    .line 157
    iput-boolean v1, p0, Lcom/htc/fm/BroadcomFMTuner;->muteUpdatePending:Z

    .line 166
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryTurnOnTimes:I

    .line 169
    new-instance v0, Lcom/htc/fm/BroadcomFMTuner$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/BroadcomFMTuner$1;-><init>(Lcom/htc/fm/BroadcomFMTuner;)V

    iput-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryHandler:Landroid/os/Handler;

    .line 227
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mBand:I

    .line 435
    iput-boolean v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsSeekUp:Z

    .line 784
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mPrevVolume:I

    .line 841
    iput v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAudioPath:I

    .line 184
    return-void
.end method

.method private RssiToLevel(I)I
    .locals 5
    .parameter "rssi"

    .prologue
    .line 63
    const/4 v1, -0x1

    .line 65
    .local v1, level:I
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 67
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    array-length v2, v3

    .line 68
    .local v2, size:I
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt p1, v3, :cond_1

    .line 69
    const/4 v1, -0x1

    .line 86
    .end local v2           #size:I
    :cond_0
    :goto_0
    return v1

    .line 70
    .restart local v2       #size:I
    :cond_1
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-ge p1, v3, :cond_2

    .line 71
    move v1, v2

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    aget v3, v3, v0

    if-ge p1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-lt p1, v3, :cond_3

    .line 79
    move v1, v0

    .line 80
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/fm/BroadcomFMTuner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/fm/BroadcomFMTuner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFreq:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/fm/BroadcomFMTuner;Lcom/htc/fm/BroadcomFMTuner$EventHandler;)Lcom/htc/fm/BroadcomFMTuner$EventHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/fm/BroadcomFMTuner;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/fm/BroadcomFMTuner;->sendEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/fm/BroadcomFMTuner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mNfl:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/fm/BroadcomFMTuner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    return v0
.end method

.method private createRSSITable()[I
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 29
    const/16 v1, 0x18

    .line 30
    .local v1, RSSIRange:I
    add-int/lit8 v0, v9, 0x1

    .line 31
    .local v0, RSSIInterval:I
    const/4 v7, 0x7

    new-array v2, v7, [I

    .line 32
    .local v2, RSSITable:[I
    const/4 v4, 0x6

    .line 33
    .local v4, lastItem:I
    const/4 v5, 0x2

    .line 34
    .local v5, middle:I
    const/4 v6, 0x0

    .line 37
    .local v6, offset:I
    const/4 v7, 0x0

    const/16 v8, 0x66

    aput v8, v2, v7

    .line 38
    const/16 v7, 0x4e

    aput v7, v2, v4

    .line 40
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 41
    add-int/lit8 v7, v3, -0x1

    aget v7, v2, v7

    add-int/lit8 v7, v7, -0x4

    aput v7, v2, v3

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-gt v3, v5, :cond_1

    .line 45
    rsub-int/lit8 v7, v3, 0x4

    add-int/2addr v6, v7

    .line 46
    aget v7, v2, v3

    sub-int/2addr v7, v6

    aput v7, v2, v3

    .line 47
    sub-int v7, v4, v3

    sub-int v8, v4, v3

    aget v8, v2, v8

    sub-int/2addr v8, v6

    aput v8, v2, v7

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    :cond_1
    aget v7, v2, v9

    sub-int/2addr v7, v6

    aput v7, v2, v9

    .line 53
    return-object v2
.end method

.method private scaleRssi(I)I
    .locals 4
    .parameter "rssi"

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lcom/htc/fm/BroadcomFMTuner;->RssiToLevel(I)I

    move-result v0

    .line 1373
    .local v0, level:I
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] scalRssi(rssi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    return v0
.end method

.method private scaleRssi2(I)I
    .locals 4
    .parameter "rssi"

    .prologue
    .line 1358
    mul-int/lit8 v0, p1, 0x32

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private sendEvent(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    invoke-virtual {v0, p1}, Lcom/htc/fm/BroadcomFMTuner$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 955
    :cond_0
    return-void
.end method

.method private setCmdState(I)V
    .locals 0
    .parameter "cmdStatus"

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    .line 103
    return-void
.end method

.method private setMute(Z)V
    .locals 4
    .parameter "muted"

    .prologue
    const/4 v0, 0x1

    .line 712
    iput-boolean p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingMute:Z

    .line 713
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] setMute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 718
    :cond_0
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v1, v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTuner] Cannot setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), illegal state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_1
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v1, :cond_2

    .line 725
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTuner] Cannot setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), illegal state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_2
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 733
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSettingMute()V

    .line 737
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-boolean v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingMute:Z

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fm/BroadcomFMTuner;->muteUpdatePending:Z

    .line 739
    iget-boolean v0, p0, Lcom/htc/fm/BroadcomFMTuner;->muteUpdatePending:Z

    if-eqz v0, :cond_5

    .line 740
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "[FMTuner] muteAudio success"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_2
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTuner] muteAudio("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 742
    :cond_5
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "[FMTuner] muteAudio failed"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 90
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    .line 91
    return-void
.end method

.method private setVolume(I)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 750
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    .line 752
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] updateFMVolume ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 758
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] Cannot setVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), illegal state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_1
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v1, :cond_2

    .line 764
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] Cannot setVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), illegal cmd state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 769
    :cond_2
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 770
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_3

    .line 771
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1, p1}, Lcom/htc/fm/OnEventChangedListener;->onSettingVolume(I)V

    .line 774
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    move-result v0

    .line 775
    .local v0, ret:I
    if-nez v0, :cond_4

    .line 776
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] updateFMVolume ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") successfully"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 779
    :cond_4
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] updateFMVolume ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFMVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startEventLoop()V
    .locals 3

    .prologue
    .line 917
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    if-eqz v1, :cond_0

    .line 933
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 924
    :cond_1
    new-instance v0, Lcom/htc/fm/BroadcomFMTuner$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/BroadcomFMTuner$2;-><init>(Lcom/htc/fm/BroadcomFMTuner;)V

    .line 932
    .local v0, runner:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private stopEventLoop()V
    .locals 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "[FMTuner] unregisterEventHandler()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->isSystemService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->unregisterEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 946
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/BroadcomFMTuner$EventHandler;->sendEmptyMessage(I)Z

    .line 949
    :cond_1
    return-void

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->unregisterEventHandler()V

    goto :goto_0
.end method

.method private volumeMapping(I)I
    .locals 2
    .parameter "volumeLevel"

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    .local v0, vol:I
    if-ltz p1, :cond_0

    sget-object v1, Lcom/htc/fm/BroadcomFMTuner;->VOLUMES:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 838
    .end local v0           #vol:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #vol:I
    :cond_1
    sget-object v1, Lcom/htc/fm/BroadcomFMTuner;->VOLUMES:[I

    aget v0, v1, p1

    goto :goto_0
.end method


# virtual methods
.method public getAudioMode()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mAudioMode:I

    return v0
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mAudioPath:I

    return v0
.end method

.method public getCmdState()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    return v0
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    return v0
.end method

.method public handleEvent(I)V
    .locals 9
    .parameter "what"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 966
    packed-switch p1, :pswitch_data_0

    .line 1247
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 968
    :pswitch_1
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner] CALLBACK EventHandler Loop"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 970
    .local v0, looper:Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 971
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnStateChangedListener;->onTurnOff()V

    .line 972
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@@ EventHandler Loop Quit!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v0           #looper:Landroid/os/Looper;
    :pswitch_2
    sput-boolean v4, Lcom/htc/fm/FMTunerController;->mIsVolumeSetting:Z

    .line 975
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onVolumeEvent() status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") volume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->volume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mRdsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 979
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->volume:I

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onSetVolumeComplete(I)V

    goto :goto_0

    .line 986
    :pswitch_3
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onAudioModeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->audioMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mRdsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_1

    .line 990
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->getCmdState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 991
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetMonoComplete()V

    .line 996
    :cond_1
    :goto_1
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    goto/16 :goto_0

    .line 992
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->getCmdState()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 993
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetStereoComplete()V

    goto :goto_1

    .line 1001
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1002
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner] CALLBACK WHAT_AUDIO_PATH"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1008
    :pswitch_5
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] onLiveAudioQualityEvent Rssi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi2(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mIsRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mIsRdsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-ne v1, v7, :cond_3

    .line 1013
    sput-boolean v5, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRssiOn:Z

    .line 1014
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onLiveAudioQualityEvent Rssi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi2(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mIsRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1018
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetRssiOnComplete()V

    .line 1021
    :cond_3
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1022
    sput-boolean v4, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRssiOn:Z

    .line 1023
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onLiveAudioQualityEvent Rssi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi2(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mIsRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1027
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetRssiOffComplete()V

    .line 1030
    :cond_4
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi(I)I

    move-result v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-interface {v1, v2, v3}, Lcom/htc/fm/OnEventChangedListener;->onRssiChanged(II)V

    goto/16 :goto_0

    .line 1038
    :pswitch_6
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsMode:I

    if-nez v1, :cond_5

    .line 1039
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@ ###### onRdsModeEvent() RDS_MODE_OFF"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    sput-boolean v4, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRdsOn:Z

    .line 1043
    :cond_5
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsMode:I

    if-ne v1, v7, :cond_6

    .line 1044
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@ ###### onRdsModeEvent() RDS_MODE_RBDS_ON"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_6
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsMode:I

    if-ne v1, v6, :cond_7

    .line 1048
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@ ###### onRdsModeEvent() RDS_MODE_RDS_ON"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_7
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsMode:I

    if-ne v1, v5, :cond_8

    .line 1052
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@ ###### onRdsModeEvent() RDS_MODE_DEFAULT_ON"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    sput-boolean v5, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRdsOn:Z

    .line 1056
    :cond_8
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1058
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onRdsModeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->alternateFreqHopEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mRdsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1064
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetRdsOnComplete()V

    goto/16 :goto_0

    .line 1066
    :cond_9
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetRdsOffComplete()V

    goto/16 :goto_0

    .line 1071
    :pswitch_7
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CALLBACK onRdsDataEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsDataType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsDataType:I

    if-ne v1, v8, :cond_a

    sget-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1075
    sget-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    .line 1076
    sget-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->setRds(Ljava/lang/String;)V

    .line 1077
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_a

    .line 1078
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget-object v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onRdsDataChanged(Ljava/lang/String;)V

    .line 1082
    :cond_a
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsDataType:I

    if-ne v1, v6, :cond_0

    .line 1084
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsIndex:I

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->setRdsPTY(I)V

    .line 1085
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsIndex:I

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onRdsPTYDataChanged(I)V

    goto/16 :goto_0

    .line 1094
    :pswitch_8
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onStatusEvent() radioIsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") status("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CmdStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@@@ ###### onStatusEvent() mRdsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### freq("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### rssi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### radioIsOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### rdsProgramType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### rdsProgramService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### rdsRadioText("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsRadioText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### rdsProgramTypeName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!! @@@@ ###### isMute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    sget-boolean v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    if-eqz v1, :cond_c

    .line 1111
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-ne v1, v6, :cond_b

    .line 1112
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-nez v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner] onStatusEvent() - FMDef.STATE_ON"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0, v5}, Lcom/htc/fm/BroadcomFMTuner;->setState(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->tuneFirst()Z

    goto/16 :goto_0

    .line 1120
    :cond_b
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-ne v1, v5, :cond_e

    .line 1121
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-ne v1, v7, :cond_e

    .line 1122
    sput-boolean v5, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRssiOn:Z

    .line 1123
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onStatusEvent() But CMD is CMD_STATUS_SET_RSSI_ON Rssi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi2(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mIsRssiOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1127
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetRssiOnComplete()V

    goto/16 :goto_0

    .line 1133
    :cond_c
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-ne v1, v7, :cond_d

    .line 1134
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner] onStatusEvent - FMDef.STATE_OFF"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setState(I)V

    .line 1136
    sput-boolean v4, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRdsOn:Z

    .line 1137
    sput-boolean v4, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRssiOn:Z

    .line 1139
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v1, :cond_d

    .line 1140
    invoke-direct {p0}, Lcom/htc/fm/BroadcomFMTuner;->stopEventLoop()V

    .line 1144
    :cond_d
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-ne v1, v6, :cond_e

    .line 1145
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner] onStatusEvent - Radio is off while Tunring on"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_e
    sget-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramService:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1150
    sget-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramService:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rdsProgramService:Ljava/lang/String;

    .line 1153
    :cond_f
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    if-eqz v1, :cond_10

    .line 1154
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_10

    .line 1155
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner] Callback for CMD_STATUS_TUNING_FIRST"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1157
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    mul-int/lit8 v2, v2, 0xa

    invoke-interface {v1, v2}, Lcom/htc/fm/OnStateChangedListener;->onTurnOn(I)V

    goto/16 :goto_0

    .line 1164
    :cond_10
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_12

    sget-boolean v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    if-eqz v1, :cond_12

    .line 1165
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_11

    .line 1166
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1167
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    mul-int/lit8 v2, v2, 0xa

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onTuneComplete(I)V

    .line 1169
    :cond_11
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi(I)I

    move-result v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-interface {v1, v2, v3}, Lcom/htc/fm/OnEventChangedListener;->onRssiChanged(II)V

    .line 1172
    :cond_12
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->radioIsOn:Z

    if-eqz v1, :cond_0

    .line 1173
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1174
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v1}, Lcom/htc/fm/OnEventChangedListener;->onSetMuteComplete()V

    goto/16 :goto_0

    .line 1182
    :pswitch_9
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK seek onSeekCompleteEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->seeksuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mCmdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") IsSeekUp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsSeekUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    sget-boolean v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->seeksuccess:Z

    if-eqz v1, :cond_14

    .line 1188
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    .line 1199
    :goto_2
    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 1201
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    div-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_13

    .line 1202
    sget v1, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    div-int/lit8 v1, v1, 0xa

    sput v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    .line 1203
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    .line 1206
    :cond_13
    sget-boolean v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->seeksuccess:Z

    if-eqz v1, :cond_16

    .line 1207
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] seek successfully!! freq("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    .line 1210
    iget-boolean v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsSeekUp:Z

    if-eqz v1, :cond_15

    .line 1211
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    mul-int/lit8 v2, v2, 0xa

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onSeekUpComplete(I)V

    .line 1215
    :goto_3
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi(I)I

    move-result v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-interface {v1, v2, v3}, Lcom/htc/fm/OnEventChangedListener;->onRssiChanged(II)V

    goto/16 :goto_0

    .line 1190
    :cond_14
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    sput v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    goto :goto_2

    .line 1213
    :cond_15
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    mul-int/lit8 v2, v2, 0xa

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onSeekDownComplete(I)V

    goto :goto_3

    .line 1218
    :cond_16
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!! @@@@@@@@@ seek Failed!! freq("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->freq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v1, :cond_0

    .line 1221
    iget-boolean v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsSeekUp:Z

    if-eqz v1, :cond_17

    .line 1222
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    add-int/lit16 v2, v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onSeekUpComplete(I)V

    .line 1227
    :goto_4
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi(I)I

    move-result v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-interface {v1, v2, v3}, Lcom/htc/fm/OnEventChangedListener;->onRssiChanged(II)V

    goto/16 :goto_0

    .line 1224
    :cond_17
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    sget v2, Lcom/htc/fm/FMDef;->FREQUENCE_END:I

    add-int/lit16 v2, v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/htc/fm/OnEventChangedListener;->onSeekDownComplete(I)V

    goto :goto_4

    .line 1234
    :pswitch_a
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] CALLBACK onWorldRegionEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->worldRegion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->worldRegion:I

    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mWorldRegion:I

    goto/16 :goto_0

    .line 1242
    :pswitch_b
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] WHAT_TUNE_FIRST("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFreq:I

    invoke-virtual {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->tune(I)Z

    goto/16 :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ create BroadcomFMTuner instance - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->isSystemService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    invoke-direct {v0, p0}, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;-><init>(Lcom/htc/fm/BroadcomFMTuner;)V

    iput-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    .line 199
    const-string v0, "bluetooth_fm_receiver_service"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getSystemProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    iput-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 201
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "Fail. Can\'t get fm service"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/fm/BroadcomFMTuner;->createRSSITable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mRSSILevelTable:[I

    .line 212
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "!!!! @@@@ create BroadcomFMTuner instance - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsMute:Z

    return v0
.end method

.method public isNeedVolumeAdjust()Z
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method public isRdsOn()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRdsOn:Z

    return v0
.end method

.method public isRssiOn()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRssiOn:Z

    return v0
.end method

.method public isWeakSignal()Z
    .locals 2

    .prologue
    .line 1457
    sget v1, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi(I)I

    move-result v0

    .line 1458
    .local v0, level:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1459
    const/4 v1, 0x1

    .line 1461
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "ProxyObject"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "onProxyAvailable"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->isSystemService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    check-cast p1, Lcom/broadcom/bt/service/fm/FmReceiver;

    .end local p1
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 221
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    invoke-direct {v0, p0}, Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;-><init>(Lcom/htc/fm/BroadcomFMTuner;)V

    iput-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiverEventHandler:Lcom/htc/fm/BroadcomFMTuner$FmReceiverEventHandler;

    .line 225
    :cond_0
    return-void
.end method

.method public seekDown()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 394
    iput-boolean v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsSeekUp:Z

    .line 395
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "[FMTuner] CMD seekDown()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v3, :cond_0

    .line 432
    :goto_0
    return v1

    .line 400
    :cond_0
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v3, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot seekDown(), illegal state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_1
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_2

    .line 408
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot seekDown("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_2
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 416
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_3

    .line 417
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v3}, Lcom/htc/fm/OnEventChangedListener;->onSeekingDown()V

    .line 420
    :cond_3
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v4, 0x69

    invoke-virtual {v3, v1, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 422
    .local v0, ret:I
    if-nez v0, :cond_4

    .line 423
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "[FMTuner] seekDown() successfully!!"

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 424
    goto :goto_0

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "[FMTuner] seekDown() failed!!"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_5

    .line 428
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    mul-int/lit8 v4, v4, 0xa

    invoke-interface {v3, v4}, Lcom/htc/fm/OnEventChangedListener;->onSeekDownComplete(I)V

    .line 430
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    move v1, v2

    .line 432
    goto/16 :goto_0
.end method

.method public seekUp()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 437
    iput-boolean v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mIsSeekUp:Z

    .line 438
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "[FMTuner] CMD seekUp()"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v3, :cond_0

    .line 473
    :goto_0
    return v1

    .line 442
    :cond_0
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v3, v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot seekUp(), illegal state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_2

    .line 449
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot seekUp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 457
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_3

    .line 458
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v3}, Lcom/htc/fm/OnEventChangedListener;->onSeekingUp()V

    .line 461
    :cond_3
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v4, 0x80

    const/16 v5, 0x69

    invoke-virtual {v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    .line 463
    .local v0, ret:I
    if-nez v0, :cond_4

    .line 464
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "[FMTuner] seekUp() successfully!!"

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 465
    goto :goto_0

    .line 467
    :cond_4
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "[FMTuner] seekUp() failed!!"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_5

    .line 469
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    mul-int/lit8 v4, v4, 0xa

    invoke-interface {v3, v4}, Lcom/htc/fm/OnEventChangedListener;->onSeekUpComplete(I)V

    .line 471
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    move v1, v2

    .line 473
    goto/16 :goto_0
.end method

.method public setBand(I)Z
    .locals 1
    .parameter "band"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0, p1}, Lcom/htc/fm/OnEventChangedListener;->onSettingBand(I)V

    .line 233
    :cond_0
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mBand:I

    .line 234
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0, p1}, Lcom/htc/fm/OnEventChangedListener;->onSetBandComplete(I)V

    .line 237
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setHeadsetOut()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 845
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v2, v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] Cannot setHeadsetOut(), illegal state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_0
    return v0

    .line 850
    :cond_0
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v2, :cond_1

    .line 851
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] Cannot setHeadsetOut(), illegal cmd state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_1
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 856
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_2

    .line 857
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSettingHeadsetOut()V

    .line 859
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAudioPath:I

    .line 860
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending audio path ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAudioPath:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v2, "FMUtils"

    const-string v3, "[FMTuner] [AudioHardware] setHeadsetOut()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 863
    invoke-direct {p0, v0}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 864
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetHeadsetOutComplete()V

    :cond_3
    move v0, v1

    .line 867
    goto :goto_0
.end method

.method public setMono()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 653
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] CMD setMono(), mAudioMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mAudioMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v2, :cond_0

    .line 678
    :goto_0
    return v1

    .line 659
    :cond_0
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setMono("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 667
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSettingMono()V

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioMode(I)I

    move-result v0

    .line 672
    .local v0, ret:I
    if-nez v0, :cond_3

    .line 673
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "[FMTuner]set FM Audio mode to STEREO mode successfully!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v1, 0x1

    goto :goto_0

    .line 675
    :cond_3
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "[FMTuner] set FM Audio mode to STEREO mode  failed!!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnEventChangedListener(Lcom/htc/fm/OnEventChangedListener;)V
    .locals 0
    .parameter "onEventChangedListener"

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    .line 1408
    return-void
.end method

.method public setOnStateChangedListener(Lcom/htc/fm/OnStateChangedListener;)V
    .locals 0
    .parameter "onStatusChangedListener"

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    .line 1403
    return-void
.end method

.method public setRdsOff()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] CMD setRdsOff() - start, mIsRdsOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!! @@@@@@@ ##### setRdsOff() - Illegal state RDS Off"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 534
    :cond_1
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setRdsOff("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v2, :cond_0

    .line 541
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 543
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSettingRdsOff()V

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v3, 0x7c

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAfMode:I

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mNfl:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->setRdsMode(IIII)I

    move-result v0

    .line 555
    .local v0, ret:I
    if-nez v0, :cond_4

    .line 556
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@@ ##### setRdsOff() successfully!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 558
    :cond_4
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@@ ##### setRdsOff() failed!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRdsOn()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] CMD setRdsOn() - start, mIsRdsOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!! @@@@@@@ ##### setRdsOn() - Illegal state RDS ON"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    :goto_0
    return v1

    .line 492
    :cond_1
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setRdsOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v2, :cond_0

    .line 499
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 501
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_3

    .line 502
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSettingRdsOn()V

    .line 505
    :cond_3
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/4 v3, 0x2

    const/16 v4, 0x7c

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAfMode:I

    iget v6, p0, Lcom/htc/fm/BroadcomFMTuner;->mNfl:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/broadcom/bt/service/fm/FmReceiver;->setRdsMode(IIII)I

    move-result v0

    .line 513
    .local v0, ret:I
    if-nez v0, :cond_4

    .line 514
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@@@@ ##### setRdsOn() - successfully!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x1

    goto :goto_0

    .line 516
    :cond_4
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!! @@@@@@@ ##### setRdsOn() - failed!!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRssiOff()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 604
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v5, "[FMTuner] CMD setTunerRssiOff() - start"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v4, :cond_0

    .line 648
    :goto_0
    return v2

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 610
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!! @@@@@@@ ###### setTunerRssiOff() - failed mRssiOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_1
    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v4, :cond_2

    .line 617
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] Cannot setRssiOff("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), illegal cmd state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_2
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 624
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v4, :cond_3

    .line 625
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v4}, Lcom/htc/fm/OnEventChangedListener;->onSettingRssiOff()V

    .line 628
    :cond_3
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingLivePollinterval:I

    invoke-virtual {v4, v2, v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->setLiveAudioPolling(ZI)I

    move-result v1

    .line 630
    .local v1, ret:I
    if-nez v1, :cond_5

    move v0, v3

    .line 631
    .local v0, isOk:Z
    :goto_1
    if-nez v0, :cond_6

    .line 632
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "!!!! @@@@@@@ ###### setTunerRssiOff() failed!!"

    invoke-static {v2, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!! @@@@@@@ ###### setTunerRssiOff() - end,  mRssiOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mRdsOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 648
    goto/16 :goto_0

    .end local v0           #isOk:Z
    :cond_5
    move v0, v2

    .line 630
    goto :goto_1

    .line 634
    .restart local v0       #isOk:Z
    :cond_6
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v5, "!!!! @@@@@@@ ###### setTunerRssiOff() successfully!!"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    sput-boolean v2, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->isRssiOn:Z

    .line 636
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMTuner] CALLBACK onLiveAudioQualityEvent Rssi("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/fm/BroadcomFMTuner$TunerStatus;->rssi:I

    invoke-direct {p0, v6}, Lcom/htc/fm/BroadcomFMTuner;->scaleRssi2(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") mIsRssiOn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 640
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_4

    .line 641
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSetRssiOffComplete()V

    goto/16 :goto_2
.end method

.method public setRssiOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 567
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] CMD setRssiOn() - mIsRssiOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v3, :cond_0

    .line 599
    :goto_0
    return v0

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!! @@@@@@ ##### setRssiOn() - failed Illegal state mRssiOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRssiOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mRdsOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fm/BroadcomFMTuner;->isRdsOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_1
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v3, :cond_2

    .line 580
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setRssiOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 587
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_3

    .line 588
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v3}, Lcom/htc/fm/OnEventChangedListener;->onSettingRssiOn()V

    .line 591
    :cond_3
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingLivePollinterval:I

    invoke-virtual {v3, v2, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setLiveAudioPolling(ZI)I

    move-result v1

    .line 593
    .local v1, ret:I
    if-nez v1, :cond_4

    move v0, v2

    .line 594
    .local v0, isOk:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 595
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!! @@@@@@@ ###### setTunerRssiOn() successfully!!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :cond_5
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!! @@@@@@@ ###### setTunerRssiOn() failed!!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setSpeakerOut()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 872
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v2, v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] Cannot setSpeakerOut(), illegal state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    return v0

    .line 877
    :cond_0
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v2, :cond_1

    .line 878
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMTuner] Cannot setSpeakerOut(), illegal cmd state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_1
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 883
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_2

    .line 884
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSettingSpeakerOut()V

    .line 887
    :cond_2
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAudioPath:I

    .line 888
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending audio path ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingAudioPath:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v2, "FMUtils"

    const-string v3, "[FMTuner] [AudioHardware] setSpeakerOut()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 896
    invoke-direct {p0, v0}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 897
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v0, :cond_3

    .line 898
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v0}, Lcom/htc/fm/OnEventChangedListener;->onSetSpeakerOutComplete()V

    :cond_3
    move v0, v1

    .line 900
    goto :goto_0
.end method

.method public setStereo()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] CMD setStereo(), mAudioMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mAudioMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v2, :cond_0

    .line 708
    :goto_0
    return v1

    .line 689
    :cond_0
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v2, :cond_1

    .line 690
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setStereo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_1
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 697
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnEventChangedListener;->onSettingStereo()V

    .line 701
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v2, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioMode(I)I

    move-result v0

    .line 702
    .local v0, ret:I
    if-nez v0, :cond_3

    .line 703
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!! @@@@ ##### set FM Audio mode to STEREO mode successfully!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x1

    goto :goto_0

    .line 705
    :cond_3
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!! @@@@ ##### set FM Audio mode to STEREO mode  failed!!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(ID)Z
    .locals 6
    .parameter "volumeLevel"
    .parameter "volumePercent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 788
    move v0, p1

    .line 789
    .local v0, vol:I
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] updateFMVolume setVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] updateFMVolume vol("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - mPrevVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mPrevVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v3, v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :goto_0
    return v1

    .line 798
    :cond_0
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v3, :cond_1

    .line 799
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot setVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_1
    if-gtz v0, :cond_2

    .line 805
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] updateFMVolume setVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - mute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setVolume(I)V

    .line 821
    :goto_1
    iput v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mPrevVolume:I

    .line 822
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] updateFMVolume setVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 823
    goto :goto_0

    .line 809
    :cond_2
    iget v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPrevVolume:I

    if-nez v1, :cond_3

    .line 810
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] updateFMVolume setVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - unmute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-direct {p0, v0}, Lcom/htc/fm/BroadcomFMTuner;->setVolume(I)V

    goto :goto_1

    .line 817
    :cond_3
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] updateFMVolume setVolume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-direct {p0, v0}, Lcom/htc/fm/BroadcomFMTuner;->setVolume(I)V

    goto :goto_1
.end method

.method public status()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    return v0
.end method

.method public tune(I)Z
    .locals 7
    .parameter "freq"

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] CMD tune("

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

    .line 348
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v3, :cond_0

    .line 390
    :goto_0
    return v1

    .line 351
    :cond_0
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v3, v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot tune("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-eqz v3, :cond_2

    .line 358
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot tune("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), illegal cmd state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_2
    div-int/lit8 p1, p1, 0xa

    .line 364
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    .line 365
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-ne v3, v6, :cond_3

    .line 366
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] tune("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") first time!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_3
    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mCmdState:I

    if-nez v3, :cond_4

    .line 370
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 371
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] tune("

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

    .line 372
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_4

    .line 373
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    mul-int/lit8 v4, p1, 0xa

    invoke-interface {v3, v4}, Lcom/htc/fm/OnEventChangedListener;->onTuning(I)V

    .line 377
    :cond_4
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    move-result v0

    .line 378
    .local v0, ret:I
    if-nez v0, :cond_5

    .line 379
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] tune("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") successfully!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 381
    goto/16 :goto_0

    .line 383
    :cond_5
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] tune("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    if-eqz v3, :cond_6

    .line 386
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventChangedListener:Lcom/htc/fm/OnEventChangedListener;

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mPendingFrequency:I

    mul-int/lit8 v4, v4, 0xa

    invoke-interface {v3, v4}, Lcom/htc/fm/OnEventChangedListener;->onTuneComplete(I)V

    .line 388
    :cond_6
    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    move v1, v2

    .line 390
    goto/16 :goto_0
.end method

.method public tuneFirst()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v1, "[FMTuner] tuneFirst()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 339
    :cond_0
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 340
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/fm/BroadcomFMTuner$EventHandler;->sendEmptyMessage(I)Z

    .line 341
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public turnOff()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v5, "[FMTuner] CMD turnOff()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v4, :cond_0

    .line 331
    :goto_0
    return v2

    .line 311
    :cond_0
    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eq v4, v3, :cond_1

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 312
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMTuner] Cannot turnOff(), illegal state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    iget v0, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    .line 318
    .local v0, preStatus:I
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    .line 319
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v4, :cond_2

    .line 320
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v4}, Lcom/htc/fm/OnStateChangedListener;->onTurningOff()V

    .line 323
    :cond_2
    iget-object v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    move-result v1

    .line 324
    .local v1, ret:I
    if-nez v1, :cond_3

    .line 325
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "[FM]!!!! @@@@ ####### turnOff successfully!!"

    invoke-static {v2, v4}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 326
    goto :goto_0

    .line 329
    :cond_3
    iget-object v3, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v4, "[FM]!!!! @@@@ ####### turnOff failed!!"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public turnOn(I)Z
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] CMD turnOn("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput p1, p0, Lcom/htc/fm/BroadcomFMTuner;->mFreq:I

    .line 246
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v2, :cond_2

    .line 248
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryTurnOnTimes:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 250
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "FmReceiver is not ready yet, retry turn on"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryTurnOnTimes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryTurnOnTimes:I

    .line 252
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryTurnOnTimes:I

    .line 257
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "FmReceiver doesn\'t exist, please check FmRecevier service"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mRetryTurnOnTimes:I

    .line 264
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    if-eqz v2, :cond_3

    .line 265
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMTuner] Cannot turnOn() illegal state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/htc/fm/BroadcomFMTuner;->setState(I)V

    .line 271
    invoke-direct {p0, v1}, Lcom/htc/fm/BroadcomFMTuner;->setCmdState(I)V

    .line 272
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v2, :cond_4

    .line 273
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    iget v3, p0, Lcom/htc/fm/BroadcomFMTuner;->mFreq:I

    invoke-interface {v2, v3}, Lcom/htc/fm/OnStateChangedListener;->onTurningOn(I)V

    .line 276
    :cond_4
    const/4 v0, 0x0

    .line 277
    .local v0, ret:I
    invoke-static {}, Lcom/htc/fm/FMUtils;->getBand()I

    move-result v2

    iput v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mBand:I

    .line 278
    invoke-direct {p0}, Lcom/htc/fm/BroadcomFMTuner;->startEventLoop()V

    .line 279
    iget v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mBand:I

    if-nez v2, :cond_5

    .line 280
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!! @@@@@ ####### turnOn - mBand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mBand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - NA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    .line 290
    :goto_1
    if-nez v0, :cond_6

    .line 291
    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v2, "!!!!! @@@@@ ####### turnOn successfully!!"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!! @@@@@ ####### turnOn - mBand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/BroadcomFMTuner;->mBand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - JP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    goto :goto_1

    .line 294
    :cond_6
    iput v1, p0, Lcom/htc/fm/BroadcomFMTuner;->mState:I

    .line 295
    invoke-direct {p0}, Lcom/htc/fm/BroadcomFMTuner;->stopEventLoop()V

    .line 296
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;

    const-string v3, "!!!!! @@@@@ ####### turnOn failed!!"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner;->mStateChangedListener:Lcom/htc/fm/OnStateChangedListener;

    invoke-interface {v2}, Lcom/htc/fm/OnStateChangedListener;->onTurnOff()V

    goto/16 :goto_0
.end method

.method public volumeDown()Z
    .locals 1

    .prologue
    .line 1420
    const/4 v0, 0x0

    return v0
.end method

.method public volumeUp()Z
    .locals 1

    .prologue
    .line 1425
    const/4 v0, 0x0

    return v0
.end method
