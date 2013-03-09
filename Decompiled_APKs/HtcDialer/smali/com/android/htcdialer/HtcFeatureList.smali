.class public Lcom/android/htcdialer/HtcFeatureList;
.super Ljava/lang/Object;
.source "HtcFeatureList.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final FEATURE_CT_CUSTOMIZATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_DIALPAD_PHONE_NUBMER_1_SP:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_N11:Z = false

.field public static FEATURE_NOT_ALLOW_DIAL_ECC_FROM_RECENT_CALLS:Z = false

.field public static final FEATURE_SPRINT_SPEED_SERVICE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_RUIM_CARD:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_THIS_IS_WORLD_PHONE:Z = false

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x9d

    const/16 v5, 0x94

    const/16 v4, 0xd8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_DIALPAD_PHONE_NUBMER_1_SP:Z

    .line 29
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_b

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    .line 53
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x50

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_c

    const-string v0, "persist.radio.worldphone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    .line 77
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_5

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_5

    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x63

    if-ne v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_5

    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_d

    :cond_5
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_SUPPORT_RUIM_CARD:Z

    .line 93
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_7

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-ne v0, v3, :cond_e

    :cond_6
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    :cond_7
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    .line 106
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_9

    :cond_8
    move v2, v1

    :cond_9
    sput-boolean v2, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_NOT_ALLOW_DIAL_ECC_FROM_RECENT_CALLS:Z

    return-void

    :cond_a
    move v0, v2

    .line 22
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 29
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 53
    goto :goto_2

    :cond_d
    move v0, v2

    .line 77
    goto :goto_3

    :cond_e
    move v0, v2

    .line 93
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
