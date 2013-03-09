.class public final enum Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;
.super Ljava/lang/Enum;
.source "HtcTelephonyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SummaryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum DATE_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum IMEI:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum IMEI_SV:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum IMSI:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum LINE1_NUMBER:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum NETWORK_COUNTRY_ISO:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum NETWORK_OPERATOR:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum NETWORK_OPERATOR_NAME:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum NETWORK_ROME_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum NETWORK_TYPE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum PHONE_TYPE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum SIGNAL_STRENGTH:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum SIM_COUNTRY_ISO:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum SIM_OPERATOR:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum SIM_OPERATOR_NAME:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum SIM_SERIAL_NUMBER:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

.field public static final enum SIM_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "DATE_STATE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->DATE_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 53
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "IMEI"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->IMEI:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 62
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "IMEI_SV"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->IMEI_SV:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 77
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "IMSI"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->IMSI:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 85
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "LINE1_NUMBER"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->LINE1_NUMBER:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 88
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "NETWORK_COUNTRY_ISO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_COUNTRY_ISO:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 91
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "NETWORK_OPERATOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_OPERATOR:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 94
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "NETWORK_OPERATOR_NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_OPERATOR_NAME:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 97
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "NETWORK_ROME_STATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_ROME_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 100
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "NETWORK_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_TYPE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 103
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "PHONE_TYPE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->PHONE_TYPE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 109
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "SIGNAL_STRENGTH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIGNAL_STRENGTH:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 116
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "SIM_COUNTRY_ISO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_COUNTRY_ISO:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 124
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "SIM_OPERATOR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_OPERATOR:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 130
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "SIM_OPERATOR_NAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_OPERATOR_NAME:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 136
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "SIM_SERIAL_NUMBER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_SERIAL_NUMBER:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 142
    new-instance v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    const-string v1, "SIM_STATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    .line 30
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->DATE_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->IMEI:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->IMEI_SV:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->IMSI:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->LINE1_NUMBER:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_COUNTRY_ISO:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_OPERATOR:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_OPERATOR_NAME:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_ROME_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->NETWORK_TYPE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->PHONE_TYPE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIGNAL_STRENGTH:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_COUNTRY_ISO:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_OPERATOR:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_OPERATOR_NAME:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_SERIAL_NUMBER:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->SIM_STATE:Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->$VALUES:[Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->$VALUES:[Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/preference/telephony/HtcTelephonyPreference$SummaryType;

    return-object v0
.end method
