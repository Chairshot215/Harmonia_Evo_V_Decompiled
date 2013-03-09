.class public Lcom/android/settings/wifi/CustomUtil;
.super Ljava/lang/Object;
.source "CustomUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CHECK_EAP_IF_APPROPRIATE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DISCONNECT_NETWORK:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_ACCESS_CONDITION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_CCX_UI:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_C_PLUS_W:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_FIRST_PRIORITY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_WAPI_FEATURE:Z = false

.field public static final REMOVE_PIN_FROM_PEER_DEVICE:Z = true

.field public static final SET_DEFAULT_SECURITY_AS_WPA:Z

.field public static final SUPPORT_EAP_METHOD_WITH_AKA:Z

.field private static mReadOnlySsid:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xa8

    const/16 v5, 0x50

    const/16 v4, 0x1b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    .line 11
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WAPI_FEATURE:Z

    .line 12
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_FIRST_PRIORITY:Z

    .line 17
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_6

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_ACCESS_CONDITION:Z

    .line 21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    .line 28
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x89

    if-ne v0, v3, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    .line 31
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_9

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SET_DEFAULT_SECURITY_AS_WPA:Z

    .line 34
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_a

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->CHECK_EAP_IF_APPROPRIATE:Z

    .line 37
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_b

    :cond_1
    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/settings/wifi/CustomUtil;->DISCONNECT_NETWORK:Z

    .line 41
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v0, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    sput-boolean v2, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_EAP_METHOD_WITH_AKA:Z

    return-void

    :cond_4
    move v0, v2

    .line 11
    goto :goto_0

    :cond_5
    move v0, v2

    .line 12
    goto :goto_1

    :cond_6
    move v0, v2

    .line 17
    goto :goto_2

    :cond_7
    move v0, v2

    .line 21
    goto :goto_3

    :cond_8
    move v0, v2

    .line 28
    goto :goto_4

    :cond_9
    move v0, v2

    .line 31
    goto :goto_5

    :cond_a
    move v0, v2

    .line 34
    goto :goto_6

    :cond_b
    move v0, v2

    .line 37
    goto :goto_7
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCTSsid(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    const-string v1, "ChinaNet_HomeCW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ChinaNet_CW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ChinaNet"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readOnlySSID(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 51
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_3

    .line 53
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ChinaNet"

    aput-object v4, v3, v1

    const-string v4, "ChinaNet_CW"

    aput-object v4, v3, v2

    const-string v4, "ChinaNet_HomeCW"

    aput-object v4, v3, v5

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    .line 74
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 75
    sget-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 76
    goto :goto_0

    .line 54
    .end local v0           #i:I
    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xda

    if-ne v3, v4, :cond_5

    .line 57
    :cond_4
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "CMCC"

    aput-object v4, v3, v1

    const-string v4, "CMCC-EDU"

    aput-object v4, v3, v2

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_5
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v5, :cond_6

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v3, :cond_6

    .line 61
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "attwifi"

    aput-object v4, v3, v1

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 63
    :cond_6
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd2

    if-ne v3, v4, :cond_7

    .line 64
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "T wifi zone"

    aput-object v4, v3, v1

    const-string v4, "T wifi zone_secure"

    aput-object v4, v3, v2

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_7
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_8

    .line 66
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ollehWiFi"

    aput-object v4, v3, v1

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_8
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 68
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "BELL_WIFI"

    aput-object v4, v3, v1

    const-string v4, "5099251212"

    aput-object v4, v3, v2

    sput-object v3, Lcom/android/settings/wifi/CustomUtil;->mReadOnlySsid:[Ljava/lang/String;

    goto :goto_1

    .line 74
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
