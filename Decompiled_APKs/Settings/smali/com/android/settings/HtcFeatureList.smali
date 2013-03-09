.class public Lcom/android/settings/HtcFeatureList;
.super Ljava/lang/Object;
.source "HtcFeatureList.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final FEATURE_CDMA_NAI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_CDMA_SETTING_MOBILE_NETOWKR_4G_SP:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_DISABLE_MOBILE_NETWORK_SETTINGS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_ERI_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_FUMO:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_GPSONE_ACG_OR_PLS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_GPSONE_SP:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_GPSONE_USC:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_HTC_WARNING_FOR_ROAMING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_INTERNET_SHARING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_LOCALE_SC_TC_SPECIAL_WORDING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_MODEM_LINK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_MOVE_CDMA_INFO_INTO_MORE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_NETWORK_SETTINGS_SUMMARY_WITHOUT_APNS:Z = false

.field public static final FEATURE_ROAMING_RINGTONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SAMPLE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_CALL_SETTINGS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_DEC_MEID:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_IMEI_WITHOUT_WORLDPHONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_IS_ML:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_IS_PREINSTALL:Z = false

.field public static FEATURE_SUPPORT_IS_TYPE:Z = false

.field public static FEATURE_SUPPORT_LAN_TYPE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_MEID:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_MHS:Z = false

.field public static FEATURE_SUPPORT_ML_TYPE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SYSTEM_TUTORIAL:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SYSTEM_UPDATE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_THIS_IS_WORLD_PHONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_WIMAX:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ICON_ACTIVATE_DEVICE:Z = false

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field public static final SENSE_20_SUPPORT:Z

.field public static final SENSE_21_SUPPORT:Z

.field public static final SENSE_30_SUPPORT:Z

.field public static final SUPPORT_INFO:Z

.field public static final SUPPORT_MOBILE_NETWORK_WARNING:Z

.field public static final SUPPORT_READ_ONLY_APN:Z

.field private static mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/16 v5, 0xa8

    const/16 v4, 0x94

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/settings/HtcFeatureList;->mIntent:Landroid/content/Intent;

    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_1a

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SAMPLE:Z

    .line 52
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_1b

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1b

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x78

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x59

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1b

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v0, v3, :cond_1b

    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_1b

    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_1b

    :cond_5
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_INTERNET_SHARING:Z

    .line 72
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_1c

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_1c

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    .line 80
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_1d

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    .line 88
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1e

    :cond_7
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    .line 102
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_INTERNET_SHARING:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "1.6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_8
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    .line 111
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_20

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_PREINSTALL:Z

    .line 120
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_9

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_b

    :cond_9
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_b

    :cond_a
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_21

    :cond_b
    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_MODEM_LINK:Z

    .line 137
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-eq v0, v3, :cond_c

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_22

    :cond_c
    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    .line 151
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_23

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_ERI_VERSION:Z

    .line 183
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SYSTEM_UPDATE:Z

    .line 197
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-ne v0, v3, :cond_25

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SYSTEM_TUTORIAL:Z

    .line 211
    sput-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_LOCALE_SC_TC_SPECIAL_WORDING:Z

    .line 223
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_WIMAX:Z

    .line 234
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_26

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_SP:Z

    .line 247
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-eq v0, v3, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_27

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v6, :cond_27

    :cond_d
    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_ACG_OR_PLS:Z

    .line 262
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-ne v0, v3, :cond_28

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_USC:Z

    .line 275
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_29

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    .line 289
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_FUMO:Z

    .line 304
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_2b

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_HTC_WARNING_FOR_ROAMING:Z

    .line 317
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_2c

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_NAI:Z

    .line 331
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v0, v3, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_11

    :cond_e
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_f

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_11

    :cond_f
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_10

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_11

    :cond_10
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_2d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_2d

    :cond_11
    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_MOBILE_NETOWKR_4G_SP:Z

    .line 354
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x50

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9d

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_12

    const-string v0, "persist.radio.worldphone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_13

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_2e

    :cond_13
    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    .line 377
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v0, v3, :cond_2f

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->SUPPORT_INFO:Z

    .line 388
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x98

    if-eq v0, v3, :cond_14

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd1

    if-eq v0, v3, :cond_14

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v0, v3, :cond_14

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v0, v3, :cond_14

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-eq v0, v3, :cond_14

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa

    if-eq v0, v3, :cond_14

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_30

    :cond_14
    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->SUPPORT_READ_ONLY_APN:Z

    .line 404
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v0, v3, :cond_15

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_31

    :cond_15
    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->SUPPORT_MOBILE_NETWORK_WARNING:Z

    .line 417
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_16

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v0, v3, :cond_32

    :cond_16
    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI_WITHOUT_WORLDPHONE:Z

    .line 424
    invoke-static {}, Lcom/android/settings/HtcFeatureList;->getFloatSenseVersion()F

    move-result v0

    const/high16 v3, 0x4000

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_33

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->SENSE_20_SUPPORT:Z

    .line 426
    invoke-static {}, Lcom/android/settings/HtcFeatureList;->getFloatSenseVersion()F

    move-result v0

    const v3, 0x40066666

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_34

    move v0, v1

    :goto_1a
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->SENSE_21_SUPPORT:Z

    .line 428
    invoke-static {}, Lcom/android/settings/HtcFeatureList;->getFloatSenseVersion()F

    move-result v0

    const/high16 v3, 0x4040

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_35

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    .line 451
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_36

    move v0, v1

    :goto_1c
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_CALL_SETTINGS:Z

    .line 465
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_37

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MEID:Z

    .line 480
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-eq v0, v3, :cond_17

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_38

    :cond_17
    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_DEC_MEID:Z

    .line 498
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-ne v0, v3, :cond_39

    move v0, v1

    :goto_1f
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_MOVE_CDMA_INFO_INTO_MORE:Z

    .line 514
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_3a

    move v0, v1

    :goto_20
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_NETWORK_SETTINGS_SUMMARY_WITHOUT_APNS:Z

    .line 530
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x66

    if-ne v0, v3, :cond_3b

    move v0, v1

    :goto_21
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_LIFE_CALL_TIMER_DATA_USAGE:Z

    .line 541
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_3c

    move v0, v1

    :goto_22
    sput-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_MOBILE_NETWORK_SETTINGS:Z

    .line 545
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_18

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_18

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_19

    :cond_18
    move v2, v1

    :cond_19
    sput-boolean v2, Lcom/android/settings/HtcFeatureList;->ICON_ACTIVATE_DEVICE:Z

    return-void

    :cond_1a
    move v0, v2

    .line 32
    goto/16 :goto_0

    :cond_1b
    move v0, v2

    .line 52
    goto/16 :goto_1

    :cond_1c
    move v0, v2

    .line 72
    goto/16 :goto_2

    :cond_1d
    move v0, v2

    .line 80
    goto/16 :goto_3

    :cond_1e
    move v0, v2

    .line 88
    goto/16 :goto_4

    :cond_1f
    move v0, v1

    .line 102
    goto/16 :goto_5

    :cond_20
    move v0, v2

    .line 111
    goto/16 :goto_6

    :cond_21
    move v0, v2

    .line 120
    goto/16 :goto_7

    :cond_22
    move v0, v2

    .line 137
    goto/16 :goto_8

    :cond_23
    move v0, v2

    .line 151
    goto/16 :goto_9

    :cond_24
    move v0, v2

    .line 183
    goto/16 :goto_a

    :cond_25
    move v0, v1

    .line 197
    goto/16 :goto_b

    :cond_26
    move v0, v2

    .line 234
    goto/16 :goto_c

    :cond_27
    move v0, v2

    .line 247
    goto/16 :goto_d

    :cond_28
    move v0, v2

    .line 262
    goto/16 :goto_e

    :cond_29
    move v0, v2

    .line 275
    goto/16 :goto_f

    :cond_2a
    move v0, v2

    .line 289
    goto/16 :goto_10

    :cond_2b
    move v0, v2

    .line 304
    goto/16 :goto_11

    :cond_2c
    move v0, v2

    .line 317
    goto/16 :goto_12

    :cond_2d
    move v0, v2

    .line 331
    goto/16 :goto_13

    :cond_2e
    move v0, v2

    .line 354
    goto/16 :goto_14

    :cond_2f
    move v0, v2

    .line 377
    goto/16 :goto_15

    :cond_30
    move v0, v2

    .line 388
    goto/16 :goto_16

    :cond_31
    move v0, v2

    .line 404
    goto/16 :goto_17

    :cond_32
    move v0, v2

    .line 417
    goto/16 :goto_18

    :cond_33
    move v0, v2

    .line 424
    goto/16 :goto_19

    :cond_34
    move v0, v2

    .line 426
    goto/16 :goto_1a

    :cond_35
    move v0, v2

    .line 428
    goto/16 :goto_1b

    :cond_36
    move v0, v2

    .line 451
    goto/16 :goto_1c

    :cond_37
    move v0, v2

    .line 465
    goto/16 :goto_1d

    :cond_38
    move v0, v2

    .line 480
    goto/16 :goto_1e

    :cond_39
    move v0, v2

    .line 498
    goto/16 :goto_1f

    :cond_3a
    move v0, v2

    .line 514
    goto/16 :goto_20

    :cond_3b
    move v0, v2

    .line 530
    goto/16 :goto_21

    :cond_3c
    move v0, v2

    .line 541
    goto :goto_22
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFloatSenseVersion()F
    .locals 3

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 434
    .local v1, senseVersion:F
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 438
    :goto_0
    return v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isSupportGMS(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/HtcFeatureList;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "market://search? "

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
