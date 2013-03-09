.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcFeatureList"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final FEATURE_CDMA_DATA_CONNECTION_ICON_DORMANCY_RULE_V:Z = false

.field public static final FEATURE_CDMA_DIRECTLY_SIGNAL_STRENGTH:Z = true

.field public static final FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

.field public static final FEATURE_CDMA_GOOGLE_TTY_ICON_INVISIBLE:Z

.field public static final FEATURE_CDMA_SHOW_NO_SIM_AND_NO_SERVICE:Z

.field public static final FEATURE_THIS_IS_WORLD_PHONE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x91

    const/16 v5, 0x5a

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-eq v0, v3, :cond_2

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa2

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x66

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xab

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x62

    if-ne v0, v3, :cond_6

    :cond_2
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_EXTRA_RULE_OF_SIGNAL_STRENGTH:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_7

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_DATA_CONNECTION_ICON_DORMANCY_RULE_V:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x93

    if-ne v0, v3, :cond_8

    :cond_3
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_GOOGLE_TTY_ICON_INVISIBLE:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_9

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_CDMA_SHOW_NO_SIM_AND_NO_SERVICE:Z

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9d

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
