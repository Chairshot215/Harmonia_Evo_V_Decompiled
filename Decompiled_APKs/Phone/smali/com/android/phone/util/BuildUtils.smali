.class public final Lcom/android/phone/util/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/BuildUtils$CharmIndicator;
    }
.end annotation


# static fields
.field public static final BATTERY_IMPROVEMENT:Z = true

.field public static final DANCING_ROBOT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final HTC_LOCKSCREEN_LITE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IMCOMING_CALL_3D_TEST:Z = false

#the value of this static final field might be set in the static constructor
.field public static final INCOMING_CALL_3D_LOCKSCREEN:Z = false

.field public static final MT_PERFORMANCE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final NEW_NOTIFICATION:Z = false

.field public static final PROPERTY_PHONE_POWER_PATCH:Ljava/lang/String; = "persist.radio.phonePowerPatch"

.field public static final SENSE_LANDSCAPE:Z

.field public static final SENSE_TABLET:Z

.field private static final SN_DEVICES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x42

    const/16 v4, 0x28

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v7, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    .line 40
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v4, :cond_6

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    .line 126
    const-string v0, "ril.ro.incoming_3d_test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/util/BuildUtils;->IMCOMING_CALL_3D_TEST:Z

    .line 130
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v7, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v8, :cond_7

    :cond_0
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/phone/util/BuildUtils;->SN_DEVICES:Z

    .line 135
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9b

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9c

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_8

    :cond_1
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/phone/util/BuildUtils;->HTC_LOCKSCREEN_LITE:Z

    .line 144
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    const/high16 v3, 0x4040

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v4, :cond_2

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SN_DEVICES:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->IMCOMING_CALL_3D_TEST:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->HTC_LOCKSCREEN_LITE:Z

    if-eqz v0, :cond_9

    :cond_2
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    .line 152
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4008

    cmpl-double v0, v3, v5

    if-gez v0, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v7, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v8, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_3

    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->HTC_LOCKSCREEN_LITE:Z

    if-eqz v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    sput-boolean v2, Lcom/android/phone/util/BuildUtils;->NEW_NOTIFICATION:Z

    return-void

    :cond_5
    move v0, v2

    .line 38
    goto :goto_0

    :cond_6
    move v0, v2

    .line 40
    goto :goto_1

    :cond_7
    move v0, v2

    .line 130
    goto :goto_2

    :cond_8
    move v0, v2

    .line 135
    goto :goto_3

    :cond_9
    move v0, v2

    .line 144
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static checkSenseVersionOrThrowException(F)Z
    .locals 3
    .parameter "required"

    .prologue
    .line 94
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v0

    cmpl-float v0, v0, p0

    if-ltz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect sense version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isCFNotificationDisabled()Z
    .locals 2

    .prologue
    .line 87
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isCallBarringDisabled()Z
    .locals 2

    .prologue
    .line 71
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConfirmBeforeTurnOnRadioEnabled()Z
    .locals 2

    .prologue
    .line 102
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isMSISDNalphaTagEditabled()Z
    .locals 2

    .prologue
    .line 54
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd9

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPowerImprovementEnabled()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public static isUSSDCancelDialogDisabled()Z
    .locals 2

    .prologue
    .line 78
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isVoiceMailNumDisabled()Z
    .locals 2

    .prologue
    .line 43
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiCallingEnabled()Z
    .locals 2

    .prologue
    .line 110
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportUserPreferredNetworkList()Z
    .locals 2

    .prologue
    .line 63
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
