.class public Lcom/android/internal/telephony/HtcTelephonyCapability;
.super Ljava/lang/Object;
.source "HtcTelephonyCapability.java"


# static fields
.field public static final BUILT_ACCOUNT_CAPABILITIES:[I = null

.field public static final BUILT_ACCOUNT_FEATURE_FLAG_ICC_FOR_DATA_ONLY:I = -0x80000000

.field public static final BUILT_ACCOUNT_MAIN_FLAG_NV:I = 0x2

.field public static final BUILT_ACCOUNT_MAIN_FLAG_RUIM:I = 0x4

.field public static final BUILT_ACCOUNT_MAIN_FLAG_UICC:I = 0x10

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM:I = 0x1

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM_RUIM:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final BUILT_DATA_CAPABILITIES:I = 0x0

.field public static final BUILT_DATA_MAIN_FLAG_DEFAULT:I = 0x1

.field public static final BUILT_DATA_MAIN_FLAG_MM:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final BUILT_PHONE_CAPABILITIES:I = 0x0

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_DUAL_STAND_BY:I = 0x40000000

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_SINGLE_STAND_BY:I = 0x20000000

.field public static final BUILT_PHONE_FEATURE_FLAG_WORLD_PHONE:I = -0x80000000

.field public static final BUILT_PHONE_MAIN_FLAG_CDMA:I = 0x2

.field public static final BUILT_PHONE_MAIN_FLAG_GSM:I = 0x1

.field public static final BUILT_PHONE_MAIN_FLAG_GSM1:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final BUILT_RIL_CAPABILITIES:I = 0x0

.field public static final BUILT_RIL_MAIN_FLAG_AT_BASED:I = 0x1

.field public static final BUILT_RIL_MAIN_FLAG_QMI:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final BUILT_SMS_CAPABILITIES:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BUILT_TABLET_CAPABILITIES:I = 0x0

.field public static final BUILT_TABLET_FEATURE_PHONE_ENABLED:I = -0x80000000

.field public static final BUILT_TABLET_FEATURE_WIFI_ONLY:I = 0x40000000

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltPhoneCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltTabletCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_TABLET_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltAccountCapabilites()[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltDataCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_DATA_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltSmsCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_SMS_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRilCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBuiltAccountCapabilites()[I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    if-nez v1, :cond_0

    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-array v0, v4, [I

    aput v3, v0, v3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    :goto_0
    return-object v0

    :sswitch_0
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto :goto_0

    :sswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_1

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    :goto_1
    :sswitch_2
    new-array v0, v4, [I

    aput v3, v0, v3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x5

    aput v2, v0, v3

    goto :goto_0

    :pswitch_1
    new-array v0, v4, [I

    aput v3, v0, v3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    goto :goto_1

    :sswitch_3
    new-array v0, v4, [I

    aput v3, v0, v3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x10

    aput v2, v0, v3

    goto :goto_0

    :sswitch_4
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    aget v2, v0, v4

    const v3, -0x7ffffff0

    or-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_0

    :sswitch_5
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x10

    aput v2, v0, v3

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto :goto_0

    :sswitch_6
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v4, [I

    aput v3, v0, v3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v4, [I

    aput v3, v0, v3

    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x10

    aput v2, v0, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x50 -> :sswitch_1
        0x52 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_3
        0x70 -> :sswitch_5
        0x97 -> :sswitch_2
        0x9d -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_3
        0xe0 -> :sswitch_3
        0xe3 -> :sswitch_6
        0xe4 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static final getBuiltDataCapabilities()I
    .locals 2

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x49 -> :sswitch_0
        0x52 -> :sswitch_0
        0x61 -> :sswitch_0
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltPhoneCapabilities()I
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    if-nez v1, :cond_0

    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    :goto_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_1

    if-nez v1, :cond_1

    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_2
    :goto_1
    :pswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_2

    :goto_2
    return v0

    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_2

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    :sswitch_3
    or-int/lit8 v0, v0, 0x5

    goto :goto_0

    :pswitch_3
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_4
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_4
    or-int/2addr v0, v3

    goto :goto_1

    :sswitch_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_3

    or-int/2addr v0, v3

    goto :goto_1

    :sswitch_6
    const-string v2, "persist.radio.worldphone"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/2addr v0, v3

    goto :goto_1

    :pswitch_5
    or-int/2addr v0, v3

    goto :goto_1

    :sswitch_7
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    goto :goto_2

    :sswitch_8
    const/high16 v2, 0x2000

    or-int/2addr v0, v2

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5c -> :sswitch_0
        0x70 -> :sswitch_2
        0x97 -> :sswitch_0
        0x9d -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_4
        0x2b -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x5c -> :sswitch_4
        0x97 -> :sswitch_4
        0x9d -> :sswitch_5
        0xaa -> :sswitch_4
        0xad -> :sswitch_4
        0xe0 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x4a -> :sswitch_7
        0x70 -> :sswitch_7
        0xe3 -> :sswitch_8
        0xe4 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static final getBuiltRilCapabilities()I
    .locals 2

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x3e -> :sswitch_0
        0x49 -> :sswitch_0
        0x52 -> :sswitch_0
        0x5b -> :sswitch_0
        0x61 -> :sswitch_0
        0x7c -> :sswitch_0
        0x89 -> :sswitch_0
        0x9f -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe3 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltSmsCapabilities()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final getBuiltTabletCapabilities()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    :cond_0
    const-string v1, "ro.phone.function"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static getCapabilityLength([I)I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCapabilitiesEnabled(II)Z
    .locals 1

    and-int v0, p1, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledInMultiCapabilities(I[I)Z
    .locals 5

    if-eqz p1, :cond_1

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
