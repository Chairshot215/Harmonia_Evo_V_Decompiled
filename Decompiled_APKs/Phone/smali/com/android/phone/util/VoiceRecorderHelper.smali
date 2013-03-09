.class public Lcom/android/phone/util/VoiceRecorderHelper;
.super Landroid/os/Handler;
.source "VoiceRecorderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/VoiceRecorderHelper$1;,
        Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ERROR_OCCURED:Ljava/lang/String; = "com.htc.soundrecorder.erroroccured"

.field private static final EXTRA_KEY_CMD:Ljava/lang/String; = "command"

.field private static final EXTRA_KEY_FILENAME:Ljava/lang/String; = "filename"

.field private static final EXTRA_KEY_SET_NOTIFY:Ljava/lang/String; = "setnotify"

.field private static final EXTRA_KEY_TYPE:Ljava/lang/String; = "type"

#the value of this static final field might be set in the static constructor
.field public static final IS_INCALL_RECORDING_ENABLE:Z = false

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOCK:Ljava/lang/Object; = null

.field private static final MSG_PHONE_NEW_RINGING:I = 0x6

.field private static final MSG_PHONE_ONDISCONNECTED:I = 0x2

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x1

.field private static final MSG_RECORD_ON_ERROR:I = 0x5

.field private static final MSG_RECORD_ON_START:I = 0x3

.field private static final MSG_RECORD_ON_STOP:I = 0x4

.field private static final RECORDER_CMD:Ljava/lang/String; = "com.htc.soundrecorder.recordingservicecommand"

.field private static final RECORDING_STARTED:Ljava/lang/String; = "com.htc.soundrecorder.recordingstarted"

.field private static final RECORDING_STOPPED:Ljava/lang/String; = "com.htc.soundrecorder.recordingstopped"

.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.htc.soundrecorder.RecordingService"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.htc.soundrecorder"

.field private static final SERVICE_READY:Ljava/lang/String; = "com.htc.soundrecorder.serviceready"

.field private static final SERVICE_STATE_IDLE:I = 0x0

.field private static final SERVICE_STATE_WAIT_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceRecorderHelper"

.field private static final VALUE_CMD_START:Ljava/lang/String; = "startrecord"

.field private static final VALUE_CMD_STOP:Ljava/lang/String; = "stoprecord"

.field private static final VALUE_SET_NOTIFY_DEFAULT:I = 0x0

.field private static final VALUE_TYPE_AUDIO_ANY:Ljava/lang/String; = "AUDIO_ANY"

.field private static final VDEBUG:Z

.field private static isMediaMounted:Z

.field private static mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private final mContext:Landroid/content/Context;

.field private mIsPhoneListenerRegistered:Z

.field private mIsRecording:Z

.field private mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

.field private mRecordingCall:Lcom/android/internal/telephony/Call;

.field private mServiceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xd8

    const/4 v0, 0x1

    const/4 v3, 0x2

    .line 63
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->IS_CMCC:Z

    if-nez v1, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v1

    const v2, 0x40066666

    cmpl-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v1, v3, :cond_2

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v4, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v1, v3, :cond_3

    :cond_2
    :goto_0
    sput-boolean v0, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->LOCK:Ljava/lang/Object;

    return-void

    .line 63
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mServiceState:I

    .line 167
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 168
    :cond_0
    const-string v0, "VoiceRecorderHelper"

    const-string v1, "no context or phone given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    iput-object p1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 174
    invoke-direct {p0, p1}, Lcom/android/phone/util/VoiceRecorderHelper;->init(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/util/VoiceRecorderHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/util/VoiceRecorderHelper;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/util/VoiceRecorderHelper;ZLcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/util/VoiceRecorderHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mServiceState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/util/VoiceRecorderHelper;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/phone/util/VoiceRecorderHelper;->startRecording(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static appendCallerName(Lcom/android/internal/telephony/Call;Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "call"
    .parameter "builder"

    .prologue
    const/4 v5, 0x0

    .line 295
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    sget-object v3, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e00a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 304
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_3

    .line 305
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 306
    .local v2, userDate:Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 307
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 308
    .local v0, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/android/phone/util/VoiceRecorderHelper;->appendCallerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_2
    const-string v3, "VoiceRecorderHelper"

    const-string v4, "appendCallerName: CallerInfo not loaded yet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v3}, Lcom/android/phone/util/VoiceRecorderHelper;->appendCallerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v2           #userDate:Ljava/lang/Object;
    :cond_3
    const-string v3, "VoiceRecorderHelper"

    const-string v4, "appendCallerName: no connection existed!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {p1, v5, v5}, Lcom/android/phone/util/VoiceRecorderHelper;->appendCallerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static appendCallerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "name"
    .parameter "number"

    .prologue
    const v1, 0x10402db

    .line 323
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e028b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static appendTimeStamp(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 355
    if-eqz p0, :cond_0

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, currentTime:J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 359
    .local v3, timeFormat:Ljava/text/SimpleDateFormat;
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .end local v0           #currentTime:J
    .end local v2           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v3           #timeFormat:Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method private changeStatus(ZLcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "recording"
    .parameter "call"

    .prologue
    const/4 v2, -0x1

    .line 257
    iget-boolean v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    if-eq v1, p1, :cond_0

    .line 258
    if-eqz p1, :cond_2

    .line 259
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 260
    .local v0, pattern:[J
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/Ringer;->startVibrate([JI)V

    .line 261
    if-nez p2, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mRecordingCall:Lcom/android/internal/telephony/Call;

    .line 274
    .end local v0           #pattern:[J
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/phone/util/VoiceRecorderHelper;->updateStateIcon(ZLcom/android/internal/telephony/Call;)V

    .line 276
    return-void

    .line 264
    .restart local v0       #pattern:[J
    :cond_1
    iput-object p2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mRecordingCall:Lcom/android/internal/telephony/Call;

    goto :goto_0

    .line 267
    .end local v0           #pattern:[J
    :cond_2
    const/4 v1, 0x4

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    .line 268
    .restart local v0       #pattern:[J
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/Ringer;->startVibrate([JI)V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mRecordingCall:Lcom/android/internal/telephony/Call;

    .line 270
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mServiceState:I

    goto :goto_0

    .line 259
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 267
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static final destroyInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 220
    if-nez p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    if-eqz v0, :cond_0

    .line 228
    sget-object v1, Lcom/android/phone/util/VoiceRecorderHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    if-eqz v0, :cond_2

    .line 230
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    invoke-virtual {v0, p0}, Lcom/android/phone/util/VoiceRecorderHelper;->destroy(Landroid/content/Context;)V

    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    .line 233
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getIncallRecordingFileName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 3
    .parameter "cm"

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, name:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->isOkToStartRecord(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/util/VoiceRecorderHelper;->appendCallerName(Lcom/android/internal/telephony/Call;Ljava/lang/StringBuilder;)V

    .line 285
    invoke-static {v0}, Lcom/android/phone/util/VoiceRecorderHelper;->appendTimeStamp(Ljava/lang/StringBuilder;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    return-object v1
.end method

.method public static getInstance()Lcom/android/phone/util/VoiceRecorderHelper;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    if-nez v0, :cond_0

    .line 187
    :cond_0
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/util/VoiceRecorderHelper;
    .locals 2
    .parameter "context"
    .parameter "cm"

    .prologue
    .line 201
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    if-nez v0, :cond_2

    .line 202
    sget-object v1, Lcom/android/phone/util/VoiceRecorderHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/phone/util/VoiceRecorderHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/util/VoiceRecorderHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    .line 206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 208
    :cond_2
    if-eqz p1, :cond_1

    .line 209
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mInstance:Lcom/android/phone/util/VoiceRecorderHelper;

    invoke-virtual {v0, p1}, Lcom/android/phone/util/VoiceRecorderHelper;->setPhone(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->registerPhoneListener()V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    .line 250
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->registerReceiver()V

    .line 253
    :cond_0
    return-void
.end method

.method private static isOkToStartRecord(Lcom/android/internal/telephony/CallManager;)Z
    .locals 3
    .parameter "cm"

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, result:Z
    if-eqz p0, :cond_1

    .line 425
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 427
    :cond_0
    const/4 v0, 0x0

    .line 433
    :cond_1
    :goto_0
    return v0

    .line 429
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRecordingCallAlive(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, result:Z
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mRecordingCall:Lcom/android/internal/telephony/Call;

    if-ne v1, p1, :cond_0

    .line 677
    const/4 v0, 0x1

    .line 680
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 774
    const-string v0, "VoiceRecorderHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecordingCallAlive(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->stop()Z

    goto :goto_0
.end method

.method private onNewRinging()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->registerReceiver()V

    .line 672
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->updateReceiverState()V

    .line 649
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecordingCallAlive(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->stop()Z

    goto :goto_0
.end method

.method private onStart()V
    .locals 2

    .prologue
    .line 533
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V

    .line 534
    return-void
.end method

.method private onStop()V
    .locals 2

    .prologue
    .line 543
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V

    .line 547
    return-void
.end method

.method private registerPhoneListener()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 685
    iget-boolean v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsPhoneListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "VoiceRecorderHelper"

    const-string v1, "duplicate register phone listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 691
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 693
    iput-boolean v3, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsPhoneListenerRegistered:Z

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    if-eqz v2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    if-nez v2, :cond_0

    .line 558
    new-instance v2, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;-><init>(Lcom/android/phone/util/VoiceRecorderHelper;Lcom/android/phone/util/VoiceRecorderHelper$1;)V

    iput-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.soundrecorder.recordingstopped"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v2, "com.htc.soundrecorder.erroroccured"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v2, "com.htc.soundrecorder.recordingstarted"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v2, "com.htc.soundrecorder.serviceready"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 567
    .local v1, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setMediaMounted(Z)V
    .locals 0
    .parameter "mounted"

    .prologue
    .line 826
    sput-boolean p0, Lcom/android/phone/util/VoiceRecorderHelper;->isMediaMounted:Z

    .line 827
    return-void
.end method

.method private startRecording(Lcom/android/internal/telephony/CallManager;)V
    .locals 4
    .parameter "cm"

    .prologue
    .line 407
    invoke-static {p1}, Lcom/android/phone/util/VoiceRecorderHelper;->getIncallRecordingFileName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, startIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "startrecord"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v2, "filename"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v2, "type"

    const-string v3, "AUDIO_ANY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method private startService()V
    .locals 6

    .prologue
    .line 394
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v2, serviceIntent:Landroid/content/Intent;
    const-string v3, "com.htc.soundrecorder"

    const-string v4, "com.htc.soundrecorder.RecordingService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 398
    .local v0, component:Landroid/content/ComponentName;
    const-string v3, "VoiceRecorderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v0           #component:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "VoiceRecorderHelper"

    const-string v4, "startRecordService exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterPhoneListener()V
    .locals 2

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsPhoneListenerRegistered:Z

    if-nez v0, :cond_0

    .line 699
    const-string v0, "VoiceRecorderHelper"

    const-string v1, "duplicate unregister phone listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 704
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 705
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsPhoneListenerRegistered:Z

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    if-nez v1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 581
    .local v0, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mReceiver:Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;

    goto :goto_0
.end method

.method private updateReceiverState()V
    .locals 3

    .prologue
    .line 814
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    .line 816
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    if-eqz v0, :cond_0

    .line 817
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 818
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->unregisterReceiver()V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->registerReceiver()V

    goto :goto_0
.end method

.method private updateStateIcon(ZLcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "recording"
    .parameter "call"

    .prologue
    .line 464
    if-eqz p1, :cond_1

    .line 465
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 470
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    goto :goto_0
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->unregisterPhoneListener()V

    .line 239
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->unregisterReceiver()V

    .line 240
    iput-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mRecordingCall:Lcom/android/internal/telephony/Call;

    .line 241
    sget-object v0, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 242
    sput-object v1, Lcom/android/phone/util/VoiceRecorderHelper;->mResources:Landroid/content/res/Resources;

    .line 244
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 612
    iget v0, p1, Landroid/os/Message;->what:I

    .line 613
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 639
    const-string v1, "VoiceRecorderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown message what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    :pswitch_0
    return-void

    .line 615
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/util/VoiceRecorderHelper;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 619
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/phone/util/VoiceRecorderHelper;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 623
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->onStart()V

    goto :goto_0

    .line 627
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->onStop()V

    goto :goto_0

    .line 635
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->onNewRinging()V

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    .line 499
    const/4 v2, 0x1

    .line 500
    .local v2, isEnabled:Z
    iget-object v3, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 501
    .local v0, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 502
    .local v1, foregroundState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v1, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    :cond_0
    const/4 v2, 0x0

    .line 508
    :cond_1
    sget-boolean v3, Lcom/android/phone/util/VoiceRecorderHelper;->isMediaMounted:Z

    and-int/2addr v2, v3

    .line 510
    return v2
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    return v0
.end method

.method public setPhone(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iput-object p1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 194
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    iget-boolean v3, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    if-eqz v3, :cond_1

    .line 376
    const-string v2, "VoiceRecorderHelper"

    const-string v3, "Incall record is processing. Duplicate request"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 382
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isOkToStartRecord(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->startService()V

    .line 389
    iput v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mServiceState:I

    move v1, v2

    .line 390
    goto :goto_0
.end method

.method public startOrStop()Z
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->stop()Z

    move-result v0

    .line 489
    :goto_0
    return v0

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/util/VoiceRecorderHelper;->start()Z

    move-result v0

    goto :goto_0
.end method

.method public stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, result:Z
    iget-boolean v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z

    if-eqz v2, :cond_0

    .line 447
    const-string v2, "stop recorder"

    invoke-static {v2}, Lcom/android/phone/util/VoiceRecorderHelper;->log(Ljava/lang/String;)V

    .line 448
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, stopIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "stoprecord"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v2, "setnotify"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V

    .line 455
    const/4 v0, 0x1

    .line 460
    .end local v1           #stopIntent:Landroid/content/Intent;
    :goto_0
    return v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
