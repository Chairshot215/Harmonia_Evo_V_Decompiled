.class public Lcom/htc/android/worldclock/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static ALARM_SOUND_LIST_FUNC:Z = false

.field public static AUDIO_FOCUS_FUNC:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CHS_SKU:Z = false

.field public static CT_SKU:Z = false

.field public static DIM_MODE_FUNC:Z = false

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000

.field public static HTC_SENSE_20_FLAG:Z

.field public static JOGBALL_DEVICE:Z

.field public static NON_MULTI_RINGTONE_SELECTION:Z

.field public static final OFF_ALARM_ALERT:Z

.field public static final OFF_ALARM_ALERT_USE_SYS_PROPERTY:Z

.field public static final PREVIEW_IMAGE:Z

.field public static QUALCOMM_DEVICE:Z

.field public static SNOOZE_NOTIFICATION_FUNC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x18

    const-wide/high16 v3, 0x4000

    const/16 v5, 0x3c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-static {v3, v4}, Lcom/htc/android/worldclock/Global;->MeetHtcSenseVersion(D)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->AUDIO_FOCUS_FUNC:Z

    .line 15
    invoke-static {v3, v4}, Lcom/htc/android/worldclock/Global;->MeetHtcSenseVersion(D)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->ALARM_SOUND_LIST_FUNC:Z

    .line 18
    const-wide v3, 0x4000cccccccccccdL

    invoke-static {v3, v4}, Lcom/htc/android/worldclock/Global;->MeetHtcSenseVersion(D)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->DIM_MODE_FUNC:Z

    .line 21
    const-wide/high16 v3, 0x4008

    invoke-static {v3, v4}, Lcom/htc/android/worldclock/Global;->MeetHtcSenseVersion(D)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->SNOOZE_NOTIFICATION_FUNC:Z

    .line 46
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x79

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x19

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x58

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x78

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x59

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x92

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x98

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/android/worldclock/Global;->NON_MULTI_RINGTONE_SELECTION:Z

    .line 71
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x26

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/android/worldclock/Global;->CHS_SKU:Z

    .line 81
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_6

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/android/worldclock/Global;->CT_SKU:Z

    .line 86
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x92

    if-eq v0, v3, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x98

    if-eq v0, v3, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_7

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/htc/android/worldclock/Global;->QUALCOMM_DEVICE:Z

    .line 94
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->ALARM_SOUND_LIST_FUNC:Z

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->HTC_SENSE_20_FLAG:Z

    .line 96
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->CHS_SKU:Z

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT:Z

    .line 98
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT:Z

    sput-boolean v0, Lcom/htc/android/worldclock/Global;->OFF_ALARM_ALERT_USE_SYS_PROPERTY:Z

    .line 103
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->HTC_SENSE_20_FLAG:Z

    if-nez v0, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-eq v0, v3, :cond_8

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/htc/android/worldclock/Global;->PREVIEW_IMAGE:Z

    .line 111
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x19

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/htc/android/worldclock/Global;->JOGBALL_DEVICE:Z

    return-void

    :cond_4
    move v0, v1

    .line 46
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 71
    goto :goto_1

    :cond_6
    move v0, v1

    .line 81
    goto :goto_2

    :cond_7
    move v0, v1

    .line 86
    goto :goto_3

    :cond_8
    move v0, v1

    .line 103
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MeetHtcSenseVersion(D)Z
    .locals 6
    .parameter "version"

    .prologue
    const/4 v3, 0x0

    .line 24
    const-wide/16 v0, 0x0

    .line 26
    .local v0, deviceHtcSenseVersion:D
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "None"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v3

    .line 31
    :cond_1
    :try_start_0
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    cmpg-double v4, v0, p0

    if-ltz v4, :cond_0

    .line 42
    const/4 v3, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Global : HtcBuildFlag.Htc_Sense_Version is not a number exception"

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAlarmAlertFromDB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "alarm_alert"

    return-object v0
.end method

.method public static getAlarmSoundFromDB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "alarm_sound"

    return-object v0
.end method

.method public static getSnoozeNotification()Z
    .locals 2

    .prologue
    .line 123
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/htc/android/worldclock/Global;->SNOOZE_NOTIFICATION_FUNC:Z

    goto :goto_0
.end method

.method public static getWakeLockFlag()I
    .locals 1

    .prologue
    .line 108
    const/high16 v0, 0x68

    return v0
.end method
