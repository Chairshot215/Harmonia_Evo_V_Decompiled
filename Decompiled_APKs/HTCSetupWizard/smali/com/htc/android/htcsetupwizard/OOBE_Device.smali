.class public Lcom/htc/android/htcsetupwizard/OOBE_Device;
.super Ljava/lang/Object;
.source "OOBE_Device.java"


# static fields
.field public static final isAce:Z

.field public static final isBliss:Z

.field public static final isBlissC:Z

.field public static final isChaCha:Z

.field public static final isExpress:Z

.field public static final isExpressKT:Z

.field public static final isFlyer:Z

.field public static final isIconG:Z

.field public static final isLexikon:Z

.field public static final isMecha:Z

.field public static final isPico:Z

.field public static final isPucciniLTE:Z

.field public static final isRider:Z

.field public static final isRuby:Z

.field public static final isSaga:Z

.field public static final isShooter:Z

.field public static final isTagH:Z

.field public static final isVigor:Z

.field public static final isVivoW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isAce:Z

    .line 16
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isBliss:Z

    .line 20
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isBlissC:Z

    .line 24
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    .line 28
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x21

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpress:Z

    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x22

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpressKT:Z

    .line 36
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isFlyer:Z

    .line 40
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x42

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isIconG:Z

    .line 44
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isLexikon:Z

    .line 48
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isMecha:Z

    .line 52
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isPucciniLTE:Z

    .line 56
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isPico:Z

    .line 60
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x88

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isRider:Z

    .line 64
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x89

    if-ne v0, v3, :cond_d

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isRuby:Z

    .line 68
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isSaga:Z

    .line 72
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_f

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isShooter:Z

    .line 76
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isTagH:Z

    .line 80
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isVigor:Z

    .line 84
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_12

    :goto_12
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isVivoW:Z

    return-void

    :cond_0
    move v0, v2

    .line 12
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 16
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 20
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 24
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 28
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 32
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 36
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 40
    goto :goto_7

    :cond_8
    move v0, v2

    .line 44
    goto :goto_8

    :cond_9
    move v0, v2

    .line 48
    goto :goto_9

    :cond_a
    move v0, v2

    .line 52
    goto :goto_a

    :cond_b
    move v0, v2

    .line 56
    goto :goto_b

    :cond_c
    move v0, v2

    .line 60
    goto :goto_c

    :cond_d
    move v0, v2

    .line 64
    goto :goto_d

    :cond_e
    move v0, v2

    .line 68
    goto :goto_e

    :cond_f
    move v0, v2

    .line 72
    goto :goto_f

    :cond_10
    move v0, v2

    .line 76
    goto :goto_10

    :cond_11
    move v0, v2

    .line 80
    goto :goto_11

    :cond_12
    move v1, v2

    .line 84
    goto :goto_12
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLandscape()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpenChannelWorldPhone()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isTagH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isFlyer:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpress:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpressKT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isPucciniLTE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWorldPhone()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isBlissC:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isLexikon:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isTagH:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isVivoW:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
