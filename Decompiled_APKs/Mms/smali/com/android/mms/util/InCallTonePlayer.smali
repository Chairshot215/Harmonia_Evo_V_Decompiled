.class public Lcom/android/mms/util/InCallTonePlayer;
.super Ljava/lang/Thread;
.source "InCallTonePlayer.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final TONE_OFF:I = 0x0

.field private static final TONE_ON:I = 0x1

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field private static final TONE_STOPPED:I = 0x2

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mState:I

.field private mStreamtype:I

.field private mTimeMilli:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneId:I

.field private mVolume:I

.field private mbCmas:Z

.field private mbSpeakeron:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "InCallTonePlayer"

    sput-object v0, Lcom/android/mms/util/InCallTonePlayer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "toneId"
    .parameter "timeMilli"
    .parameter "volume"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mTimeMilli:I

    .line 56
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mVolume:I

    .line 57
    iput v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mStreamtype:I

    .line 58
    iput-boolean v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mbCmas:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mbSpeakeron:Z

    .line 79
    iput p2, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneId:I

    .line 80
    iput v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mState:I

    .line 81
    iput-object p1, p0, Lcom/android/mms/util/InCallTonePlayer;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 83
    iget-object v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    iput p3, p0, Lcom/android/mms/util/InCallTonePlayer;->mTimeMilli:I

    .line 85
    iput p4, p0, Lcom/android/mms/util/InCallTonePlayer;->mVolume:I

    .line 88
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 89
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mbSpeakeron:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 3
    .parameter "context"
    .parameter "toneId"
    .parameter "volume"
    .parameter "bcmas"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mTimeMilli:I

    .line 56
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mVolume:I

    .line 57
    iput v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mStreamtype:I

    .line 58
    iput-boolean v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mbCmas:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mbSpeakeron:Z

    .line 63
    iput p2, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneId:I

    .line 64
    iput v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mState:I

    .line 65
    iput-object p1, p0, Lcom/android/mms/util/InCallTonePlayer;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 67
    iget-object v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    iput p3, p0, Lcom/android/mms/util/InCallTonePlayer;->mVolume:I

    .line 69
    iput-boolean p4, p0, Lcom/android/mms/util/InCallTonePlayer;->mbCmas:Z

    .line 72
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 73
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/util/InCallTonePlayer;->mbSpeakeron:Z

    .line 75
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 179
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 180
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 183
    .local v0, isOffHook:Z
    :goto_0
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/mms/util/InCallTonePlayer;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/mms/util/InCallTonePlayer;->mbSpeakeron:Z

    invoke-static {v3, v4, v2}, Lcom/android/mms/util/InCallTonePlayer;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0, v2}, Lcom/android/mms/util/InCallTonePlayer;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 187
    return-void

    .line 180
    .end local v0           #isOffHook:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .parameter "cm"

    .prologue
    .line 211
    iget-object v3, p0, Lcom/android/mms/util/InCallTonePlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 213
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 214
    .local v2, modeBefore:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->setAudioMode()V

    .line 215
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 217
    .local v1, modeAfter:I
    if-eq v2, v1, :cond_0

    .line 221
    :cond_0
    return-void
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "flag"
    .parameter "store"

    .prologue
    .line 190
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 192
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 207
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 112
    :try_start_0
    iget-boolean v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mbCmas:Z

    if-eqz v6, :cond_4

    const/4 v4, 0x5

    .line 114
    .local v4, stream:I
    :goto_0
    new-instance v5, Landroid/media/ToneGenerator;

    iget v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mVolume:I

    invoke-direct {v5, v4, v6}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v4           #stream:I
    .local v5, toneGenerator:Landroid/media/ToneGenerator;
    :goto_1
    const/4 v1, 0x1

    .line 135
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 137
    .local v2, okToPlayTone:Z
    if-eqz v5, :cond_0

    .line 138
    iput-object v5, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 139
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 140
    .local v3, ringerMode:I
    const/4 v2, 0x1

    .line 143
    .end local v3           #ringerMode:I
    :cond_0
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_1

    .line 144
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget v7, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneId:I

    invoke-virtual {v6, v7}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 146
    :cond_1
    iget v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mTimeMilli:I

    add-int/lit8 v6, v6, 0x14

    int-to-long v6, v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 148
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_2

    .line 149
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 150
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 151
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 167
    :cond_2
    iget-object v6, p0, Lcom/android/mms/util/InCallTonePlayer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/android/mms/util/InCallTonePlayer;->resetAudioStateAfterDisconnect()V

    .line 170
    :cond_3
    return-void

    .line 112
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v5           #toneGenerator:Landroid/media/ToneGenerator;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    .restart local v5       #toneGenerator:Landroid/media/ToneGenerator;
    goto :goto_1
.end method

.method public stopTone()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/util/InCallTonePlayer;->mState:I

    .line 97
    iget-object v0, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 99
    iget-object v0, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/InCallTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 102
    :cond_0
    return-void
.end method
