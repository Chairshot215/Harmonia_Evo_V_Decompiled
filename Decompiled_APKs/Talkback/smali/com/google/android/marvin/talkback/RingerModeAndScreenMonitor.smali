.class Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;
.super Landroid/content/BroadcastReceiver;
.source "RingerModeAndScreenMonitor.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;

.field private mInfrastructureInitialized:Z

.field private final mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

.field private final mPhoneStateChangeFilter:Landroid/content/IntentFilter;

.field private mRingerMode:I

.field private mScreenIsOff:Z

.field private final mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;Lcom/google/android/marvin/talkback/NotificationCache;)V
    .locals 2
    .parameter "context"
    .parameter "speechController"
    .parameter "notificationCache"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mPhoneStateChangeFilter:Landroid/content/IntentFilter;

    .line 50
    new-instance v0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;-><init>(Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mHandler:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mRingerMode:I

    .line 66
    iput-object p1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 68
    iput-object p3, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    .line 70
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    iget-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mPhoneStateChangeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mPhoneStateChangeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mPhoneStateChangeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mPhoneStateChangeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mScreenIsOff:Z

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->internalOnReceive(Landroid/content/Intent;)V

    return-void
.end method

.method private appendCachedNotificationSummary(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/NotificationCache;->getFormattedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 231
    .local v0, notificationSummary:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mNotificationCache:Lcom/google/android/marvin/talkback/NotificationCache;

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/NotificationCache;->clear()V

    .line 233
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    return-void
.end method

.method private appendCurrentTimeAnnouncement(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 212
    const/16 v1, 0x1401

    .line 214
    .local v1, timeFlags:I
    iget-object v2, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    or-int/lit16 v1, v1, 0x80

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, dateTime:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    return-void
.end method

.method private appendRingerStateAnouncement(Ljava/lang/StringBuilder;)V
    .locals 10
    .parameter "builder"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 244
    iget v4, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mRingerMode:I

    packed-switch v4, :pswitch_data_0

    .line 259
    const-class v4, Lcom/google/android/marvin/talkback/TalkBackService;

    const/4 v5, 0x6

    const-string v6, "Unknown ringer mode: %d"

    new-array v7, v8, [Ljava/lang/Object;

    .line 260
    iget v8, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mRingerMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 259
    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    const v5, 0x7f090064

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, announcement:Ljava/lang/String;
    :goto_1
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {p1, v4}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    .end local v0           #announcement:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    const v5, 0x7f090063

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0       #announcement:Ljava/lang/String;
    goto :goto_1

    .line 252
    .end local v0           #announcement:Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 253
    .local v1, currentVolume:I
    iget-object v4, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 254
    .local v2, maxVolume:I
    mul-int/lit8 v4, v1, 0x14

    div-int/2addr v4, v2

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    add-double/2addr v4, v6

    double-to-int v4, v4

    mul-int/lit8 v3, v4, 0x5

    .line 256
    .local v3, volumePercent:I
    iget-object v4, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    const v5, 0x7f09003d

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0       #announcement:Ljava/lang/String;
    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleDeviceUnlocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 135
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 136
    iget-object v3, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    const v4, 0x7f090066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    invoke-static {v5, v1}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    .local v0, text:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v2, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->UNINTERRUPTIBLE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    invoke-virtual {v1, v0, v2, v5}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method private handleRingerModeChanged()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, text:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->appendRingerStateAnouncement(Ljava/lang/StringBuilder;)V

    .line 203
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v2, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method private handleScreenOff()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 146
    iput-boolean v2, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mScreenIsOff:Z

    .line 148
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v1, v4}, Lcom/google/android/marvin/talkback/SpeechController;->setScreenIsOn(Z)V

    .line 151
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 157
    invoke-static {v5, v1}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->appendRingerStateAnouncement(Ljava/lang/StringBuilder;)V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v2, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    invoke-virtual {v1, v0, v2, v5}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleScreenOn()V
    .locals 4

    .prologue
    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mScreenIsOff:Z

    .line 177
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/talkback/SpeechController;->setScreenIsOn(Z)V

    .line 179
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->appendCurrentTimeAnnouncement(Ljava/lang/StringBuilder;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->appendCachedNotificationSummary(Ljava/lang/StringBuilder;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->appendRingerStateAnouncement(Ljava/lang/StringBuilder;)V

    .line 190
    iget-object v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v2, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private internalOnReceive(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 87
    iget-boolean v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mInfrastructureInitialized:Z

    if-nez v1, :cond_0

    .line 88
    const-class v1, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    .line 89
    const-string v2, "Service not initialized during  broadcast."

    new-array v3, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {v1, v5, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    .line 98
    const/4 v2, 0x2

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 96
    iput v1, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mRingerMode:I

    .line 100
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->handleRingerModeChanged()V

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->handleScreenOn()V

    goto :goto_0

    .line 103
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->handleScreenOff()V

    goto :goto_0

    .line 105
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->handleDeviceUnlocked()V

    goto :goto_0

    .line 108
    :cond_4
    const-class v1, Lcom/google/android/marvin/talkback/TalkBackService;

    .line 109
    const-string v2, "Registered for but not handling action %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 108
    invoke-static {v1, v5, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mPhoneStateChangeFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mRingerMode:I

    return v0
.end method

.method public isScreenOff()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mScreenIsOff:Z

    return v0
.end method

.method public onInfrastructureStateChange(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "isInitialized"

    .prologue
    .line 115
    iput-boolean p2, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mInfrastructureInitialized:Z

    .line 116
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->mHandler:Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;

    invoke-virtual {v0, p2}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;->onReceive(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
