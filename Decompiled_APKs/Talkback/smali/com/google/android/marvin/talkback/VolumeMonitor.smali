.class public Lcom/google/android/marvin/talkback/VolumeMonitor;
.super Ljava/lang/Object;
.source "VolumeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;,
        Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;
    }
.end annotation


# static fields
.field public static final MIN_API_LEVEL:I = 0xe

.field private static final STREAM_MASTER:I = -0x64


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStream:I

.field private final mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

.field private final mReleaseControl:Ljava/lang/Runnable;

.field private final mSelfAdjustments:[I

.field private mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

.field private final mStartReleaseTimeout:Ljava/lang/Runnable;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeOverlay:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 3
    .parameter "context"
    .parameter "speechController"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSelfAdjustments:[I

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mCurrentStream:I

    .line 303
    new-instance v1, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;-><init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    .line 309
    new-instance v1, Lcom/google/android/marvin/talkback/VolumeMonitor$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$1;-><init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mReleaseControl:Ljava/lang/Runnable;

    .line 320
    new-instance v1, Lcom/google/android/marvin/talkback/VolumeMonitor$2;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$2;-><init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mStartReleaseTimeout:Ljava/lang/Runnable;

    .line 330
    new-instance v1, Lcom/google/android/marvin/talkback/VolumeMonitor$3;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$3;-><init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 70
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 75
    new-instance v1, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;

    invoke-direct {v1, p0, p1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;-><init>(Lcom/google/android/marvin/talkback/VolumeMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mVolumeOverlay:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;

    .line 78
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->releaseControl()V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/VolumeMonitor;)Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/VolumeMonitor;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/VolumeMonitor;->internalOnVolumeChanged(III)V

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/VolumeMonitor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->internalOnControlAcquired(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->internalOnReleaseControl()V

    return-void
.end method

.method private getStreamName(I)Ljava/lang/String;
    .locals 2
    .parameter "streamType"

    .prologue
    .line 257
    sparse-switch p1, :sswitch_data_0

    .line 283
    const-string v1, ""

    .line 286
    :goto_0
    return-object v1

    .line 259
    :sswitch_0
    const v0, 0x7f0900b2

    .line 286
    .local v0, resId:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 262
    .end local v0           #resId:I
    :sswitch_1
    const v0, 0x7f0900b3

    .line 263
    .restart local v0       #resId:I
    goto :goto_1

    .line 265
    .end local v0           #resId:I
    :sswitch_2
    const v0, 0x7f0900b4

    .line 266
    .restart local v0       #resId:I
    goto :goto_1

    .line 268
    .end local v0           #resId:I
    :sswitch_3
    const v0, 0x7f0900b5

    .line 269
    .restart local v0       #resId:I
    goto :goto_1

    .line 271
    .end local v0           #resId:I
    :sswitch_4
    const v0, 0x7f0900b6

    .line 272
    .restart local v0       #resId:I
    goto :goto_1

    .line 274
    .end local v0           #resId:I
    :sswitch_5
    const v0, 0x7f0900b7

    .line 275
    .restart local v0       #resId:I
    goto :goto_1

    .line 277
    .end local v0           #resId:I
    :sswitch_6
    const v0, 0x7f0900b8

    .line 278
    .restart local v0       #resId:I
    goto :goto_1

    .line 280
    .end local v0           #resId:I
    :sswitch_7
    const v0, 0x7f0900b9

    .line 281
    .restart local v0       #resId:I
    goto :goto_1

    .line 257
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x8 -> :sswitch_7
    .end sparse-switch
.end method

.method private getStreamVolume(I)I
    .locals 7
    .parameter "streamType"

    .prologue
    .line 296
    iget-object v3, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 297
    .local v0, currentVolume:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 298
    .local v1, maxVolume:I
    mul-int/lit8 v3, v0, 0x14

    div-int/2addr v3, v1

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v3, v3

    mul-int/lit8 v2, v3, 0x5

    .line 300
    .local v2, volumePercent:I
    return v2
.end method

.method private internalOnControlAcquired(I)V
    .locals 8
    .parameter "streamType"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->getStreamName(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, streamName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->getStreamVolume(I)I

    move-result v2

    .line 160
    .local v2, volume:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    .line 161
    const v4, 0x7f0900b0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 160
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, text:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->shouldAnnounceStream(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mStartReleaseTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mStartReleaseTimeout:Ljava/lang/Runnable;

    invoke-direct {p0, v1, v3}, Lcom/google/android/marvin/talkback/VolumeMonitor;->speakWithCompletion(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private internalOnReleaseControl()V
    .locals 9

    .prologue
    .line 177
    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    invoke-virtual {v4}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->clearReleaseControl()V

    .line 179
    iget v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mCurrentStream:I

    .line 181
    .local v1, streamType:I
    if-gez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->shouldAnnounceStream(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mReleaseControl:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->getStreamName(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, streamName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->getStreamVolume(I)I

    move-result v3

    .line 193
    .local v3, volume:I
    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    .line 194
    const v5, 0x7f0900b1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 193
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mReleaseControl:Ljava/lang/Runnable;

    invoke-direct {p0, v2, v4}, Lcom/google/android/marvin/talkback/VolumeMonitor;->speakWithCompletion(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private internalOnVolumeChanged(III)V
    .locals 2
    .parameter "streamType"
    .parameter "volume"
    .parameter "prevVolume"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/VolumeMonitor;->isSelfAdjusted(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mCurrentStream:I

    if-gez v0, :cond_3

    .line 134
    iput p1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mCurrentStream:I

    .line 135
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mCurrentStream:I

    invoke-static {v0, v1}, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->forceVolumeControlStream(Landroid/media/AudioManager;I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mVolumeOverlay:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mVolumeOverlay:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->show()V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->onControlAcquired(I)V

    goto :goto_0

    .line 143
    :cond_3
    if-eq p2, p3, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->releaseControl()V

    goto :goto_0
.end method

.method private isSelfAdjusted(II)Z
    .locals 2
    .parameter "streamType"
    .parameter "volume"

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSelfAdjustments:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSelfAdjustments:[I

    aget v1, v1, p1

    if-ne v1, p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSelfAdjustments:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private releaseControl()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 203
    iput v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mCurrentStream:I

    .line 204
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/googlecode/eyesfree/compat/media/AudioManagerCompatUtils;->forceVolumeControlStream(Landroid/media/AudioManager;I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mVolumeOverlay:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mVolumeOverlay:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeOverlay;->hide()V

    .line 208
    :cond_0
    return-void
.end method

.method private shouldAnnounceStream(I)Z
    .locals 2
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 217
    packed-switch p1, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 220
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private speakWithCompletion(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "text"
    .parameter "completedAction"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    invoke-virtual {v0, p2}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public setStreamVolume(III)V
    .locals 1
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSelfAdjustments:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSelfAdjustments:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->releaseControl()V

    .line 91
    iget-object v0, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    iput-object v2, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mContext:Landroid/content/Context;

    .line 94
    iput-object v2, p0, Lcom/google/android/marvin/talkback/VolumeMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 95
    return-void
.end method
