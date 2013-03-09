.class public Lcom/android/systemui/statusbar/StatusBarFlag;
.super Ljava/lang/Object;
.source "StatusBarFlag.java"


# static fields
.field public static final HTC_ATT_ONS:Z

.field public static final HTC_CALL_TIMER:Z

.field public static final HTC_CHINA:Z

.field public static final HTC_CONFIG_FEATURE:Z

.field public static final HTC_FEATURE_AUTOSYNC_ENHANCE:Z

.field public static final HTC_GLOW_STATIC:Z

.field public static final HTC_QS_POWER_EFFICIENCY:Z

.field public static final HTC_QS_POWER_SAVER:Z

.field public static final HTC_QS_TASK_MANAGER:Z

.field public static final HTC_QS_VOLUME:Z

.field public static final HTC_QUICK_SETTINGS:Z

.field public static final HTC_RECEENT_APP_BACKGROUND:Z

.field public static final HTC_RECENT_APP:Z

.field public static final HTC_SKIN:Z

.field public static final HTC_STATUS_BAR_TAP_EVENT:Z

.field public static final HTC_TABLET:Z

.field public static final HTC_UB_LOG:Z

.field public static final HTC_WIFI_ONLY:Z

.field public static final mSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-wide v9, 0x4000cccccccccccdL

    const-wide/high16 v7, 0x4000

    const-wide v5, 0x3ff999999999999aL

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_TABLET:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    cmpl-double v0, v3, v9

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_7

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    cmpl-double v0, v3, v7

    if-lez v0, :cond_8

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    cmpl-double v0, v3, v7

    if-lez v0, :cond_9

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-eq v0, v3, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-eq v0, v3, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa9

    if-eq v0, v3, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x88

    if-eq v0, v3, :cond_a

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_GLOW_STATIC:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    cmpl-double v0, v3, v9

    if-lez v0, :cond_b

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_d

    :cond_0
    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CALL_TIMER:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    const v3, 0x40066666

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-eq v0, v3, :cond_e

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_TASK_MANAGER:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-ne v0, v3, :cond_f

    :cond_1
    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_VOLUME:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_POWER_EFFICIENCY:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x4008

    cmpl-double v0, v3, v5

    if-lez v0, :cond_11

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_POWER_SAVER:Z

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x4008

    cmpl-double v0, v3, v5

    if-lez v0, :cond_12

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarTelephony;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    sput-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA:Z

    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_6

    :cond_c
    move v0, v2

    goto/16 :goto_7

    :cond_d
    move v0, v2

    goto :goto_8

    :cond_e
    move v0, v2

    goto :goto_9

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    move v0, v2

    goto :goto_b

    :cond_11
    move v0, v2

    goto :goto_c

    :cond_12
    move v0, v2

    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpAllFlags()V
    .locals 3

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSenseVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/StatusBarFlag;->mSenseVersion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_TABLET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_TABLET:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_RECENT_APP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_RECEENT_APP_BACKGROUND = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECEENT_APP_BACKGROUND:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_SKIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_STATUS_BAR_TAP_EVENT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_QUICK_SETTINGS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_GLOW_STATIC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_GLOW_STATIC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_UB_LOG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_ATT_ONS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_QS_TASK_MANAGER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_TASK_MANAGER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_QS_VOLUME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_VOLUME:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_QS_HTC_QS_POWER_EFFICIENCY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_POWER_EFFICIENCY:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_QS_HTC_QS_POWER_SAVER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QS_POWER_SAVER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_CALL_TIMER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CALL_TIMER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_WIFI_ONLY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StatusBarFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_CONFIG_FEATURE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CONFIG_FEATURE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
