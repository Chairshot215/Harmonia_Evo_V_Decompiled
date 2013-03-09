.class public Lcom/htc/android/epst/HtcFeatureList;
.super Ljava/lang/Object;
.source "HtcFeatureList.java"


# static fields
.field public static FEATURE_BOOST_ONLY:Z = false

.field public static final FEATURE_CDMA_UPDATE_VOICEMAIL:Z = true

.field public static FEATURE_ERRMSLCODE_RESET:Z = false

.field public static final FEATURE_HEP_DEVICE:Z = true

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_MDN_READ_ONLY:Z = false

.field public static FEATURE_METEROPCS_ONLY:Z = false

.field public static FEATURE_MODSUPPORT_BOOST:Z = false

.field public static FEATURE_MODSUPPORT_VMUS:Z = false

.field public static FEATURE_NONSUPPORT_MSL:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_RESET_REFURBISH_DATE_AND_STATUS:Z = false

.field public static FEATURE_SPRINT_PCS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_EHRPD:Z = false

.field public static FEATURE_SUPPORT_ESN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_SUPPORT_IMS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_TRSPPROXY_DEFAULT_SETTINGS:Z = false

.field public static FEATURE_USB_CHARGE_MODE_CHANGER:Z = false

.field public static FEATURE_VMUS_ONLY:Z = false

.field public static FEATURE_VM_BOOST_CLEAR:Z = false

.field public static FEATURE_WIMAX_INFO_ENTRY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_WORLD_PHONE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_MEDIA_PROXY:Z = false

.field private static final TAGS_RELEASE_KEY:Ljava/lang/String; = "release-keys"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x94

    const/16 v5, 0xaf

    const/16 v4, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v0, "persist.wimax.0.MAC"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    .line 35
    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "supersonic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "speedy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "shooter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "express"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "kingdom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_USB_CHARGE_MODE_CHANGER:Z

    .line 77
    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "speedy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_TRSPPROXY_DEFAULT_SETTINGS:Z

    .line 84
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->IS_WORLD_PHONE:Z

    .line 86
    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "supersonic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "speedy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->SUPPORT_MEDIA_PROXY:Z

    .line 100
    const-string v0, "ro.build.tags"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "release-keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_RESET_REFURBISH_DATE_AND_STATUS:Z

    .line 114
    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "vivow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_IMS:Z

    .line 126
    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "vivow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_EHRPD:Z

    .line 135
    const-string v0, "ro.product.device"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "vivow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_MDN_READ_ONLY:Z

    .line 141
    sput-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_ESN:Z

    .line 144
    sput-boolean v1, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_METEROPCS_ONLY:Z

    .line 145
    sput-boolean v1, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    .line 147
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_e

    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_NONSUPPORT_MSL:Z

    .line 148
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_f

    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_ERRMSLCODE_RESET:Z

    .line 149
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_10

    :cond_2
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_MODSUPPORT_BOOST:Z

    .line 152
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_11

    :cond_3
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_MODSUPPORT_VMUS:Z

    .line 154
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_12

    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_VMUS_ONLY:Z

    .line 156
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_13

    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_BOOST_ONLY:Z

    .line 158
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x95

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x50

    if-ne v0, v3, :cond_14

    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_14

    :cond_5
    :goto_e
    sput-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_VM_BOOST_CLEAR:Z

    return-void

    :cond_6
    move v0, v2

    .line 24
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 35
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 77
    goto/16 :goto_2

    :cond_9
    move v0, v1

    .line 86
    goto/16 :goto_3

    :cond_a
    move v0, v1

    .line 100
    goto/16 :goto_4

    :cond_b
    move v0, v1

    .line 114
    goto/16 :goto_5

    :cond_c
    move v0, v1

    .line 126
    goto :goto_6

    :cond_d
    move v0, v1

    .line 135
    goto :goto_7

    :cond_e
    move v0, v1

    .line 147
    goto :goto_8

    :cond_f
    move v0, v1

    .line 148
    goto :goto_9

    :cond_10
    move v0, v1

    .line 149
    goto :goto_a

    :cond_11
    move v0, v1

    .line 152
    goto :goto_b

    :cond_12
    move v0, v1

    .line 154
    goto :goto_c

    :cond_13
    move v0, v1

    .line 156
    goto :goto_d

    :cond_14
    move v2, v1

    .line 158
    goto :goto_e
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
