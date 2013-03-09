.class public Lcom/htc/CustomizationSetup/LocaleAssistant;
.super Ljava/lang/Object;
.source "LocaleAssistant.java"


# static fields
.field private static KEY:Ljava/lang/Object; = null

.field private static final LOCALE_ARABIC:Ljava/lang/String; = "ar"

.field private static final LOCALE_CHINESE_SIM:Ljava/lang/String; = "zh_CN"

.field private static final LOCALE_CHINESE_TRA:Ljava/lang/String; = "zh_TW"

.field private static final LOCALE_CROATIAN:Ljava/lang/String; = "hr"

.field private static final LOCALE_CZECH:Ljava/lang/String; = "cs"

.field private static final LOCALE_DANISH:Ljava/lang/String; = "da"

.field private static final LOCALE_DUTCH:Ljava/lang/String; = "nl"

.field private static final LOCALE_ENGLISH_AUS:Ljava/lang/String; = "en_AU"

.field private static final LOCALE_ENGLISH_SIN:Ljava/lang/String; = "en_SG"

.field private static final LOCALE_ENGLISH_UK:Ljava/lang/String; = "en_GB"

.field private static final LOCALE_ENGLISH_US:Ljava/lang/String; = "en_US"

.field private static final LOCALE_FINNISH:Ljava/lang/String; = "fi"

.field private static final LOCALE_FRENCH:Ljava/lang/String; = "fr"

.field private static final LOCALE_GERMAN:Ljava/lang/String; = "de"

.field private static final LOCALE_GREEK:Ljava/lang/String; = "el"

.field private static final LOCALE_HEBREW:Ljava/lang/String; = "he"

.field private static final LOCALE_HUNGARIAN:Ljava/lang/String; = "hu"

.field private static final LOCALE_ITALIAN:Ljava/lang/String; = "it"

.field private static final LOCALE_JAPANESE:Ljava/lang/String; = "ja"

.field private static final LOCALE_KOREAN:Ljava/lang/String; = "ko"

.field private static final LOCALE_NORWEGIAN:Ljava/lang/String; = "no"

.field private static final LOCALE_POLISH:Ljava/lang/String; = "pl"

.field private static final LOCALE_PORTUGUESE:Ljava/lang/String; = "pt"

.field private static final LOCALE_ROMANIAN:Ljava/lang/String; = "ro"

.field private static final LOCALE_RUSSIAN:Ljava/lang/String; = "ru"

.field private static final LOCALE_SHOW_MENU:Ljava/lang/String; = "Show Menu"

.field private static final LOCALE_SLOVAK:Ljava/lang/String; = "sk"

.field private static final LOCALE_SPANISH_SPA:Ljava/lang/String; = "es_ES"

.field private static final LOCALE_SPANISH_US:Ljava/lang/String; = "es_US"

.field private static final LOCALE_SWEDISH:Ljava/lang/String; = "sv"

.field private static final LOCALE_THAI:Ljava/lang/String; = "th"

.field private static final LOCALE_TURKISH:Ljava/lang/String; = "tr"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcLocationService"

.field private static PREFERRED_LOCALE:Ljava/lang/String; = null

.field private static final PREFIX:Ljava/lang/String; = "[HtcLocaleAssistant] "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/CustomizationSetup/LocaleAssistant;->PREFERRED_LOCALE:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/CustomizationSetup/LocaleAssistant;->KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    sget-object v1, Lcom/htc/CustomizationSetup/LocaleAssistant;->KEY:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/htc/CustomizationSetup/LocaleAssistant;->PREFERRED_LOCALE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/htc/CustomizationSetup/LocaleAssistant;->getLocaleFromCid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/CustomizationSetup/LocaleAssistant;->PREFERRED_LOCALE:Ljava/lang/String;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-string v0, "HtcLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcLocaleAssistant] Locale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/CustomizationSetup/LocaleAssistant;->PREFERRED_LOCALE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v0, Lcom/htc/CustomizationSetup/LocaleAssistant;->PREFERRED_LOCALE:Ljava/lang/String;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getLocaleFromCid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 57
    const-string v1, "Show Menu"

    .line 58
    .local v1, result:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 59
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, simmcc:Ljava/lang/String;
    const-string v4, "ro.cid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, cid:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 64
    const-string v4, "HtcLocationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcLocaleAssistant] MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    const-string v4, "HtcLocationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcLocaleAssistant] CID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3c

    .line 71
    const-string v4, "HTC__001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    if-eqz v2, :cond_3

    const-string v4, "234"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    const-string v1, "en_US"

    .line 234
    :cond_2
    :goto_0
    return-object v1

    .line 75
    :cond_3
    const-string v1, "en_GB"

    goto :goto_0

    .line 77
    :cond_4
    const-string v4, "HTC__032"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 78
    if-eqz v2, :cond_6

    const-string v4, "216"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "226"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "230"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "231"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "260"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    :cond_5
    const-string v1, "en_US"

    goto :goto_0

    .line 83
    :cond_6
    const-string v1, "en_GB"

    goto :goto_0

    .line 85
    :cond_7
    const-string v4, "HTC__203"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 86
    const-string v1, "fr"

    goto :goto_0

    .line 87
    :cond_8
    const-string v4, "HTC__405"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 88
    const-string v1, "it"

    goto :goto_0

    .line 89
    :cond_9
    const-string v4, "HTC__A07"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 90
    const-string v1, "ru"

    goto :goto_0

    .line 91
    :cond_a
    const-string v4, "HTC__102"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 92
    const-string v1, "de"

    goto :goto_0

    .line 93
    :cond_b
    const-string v4, "HTC__E11"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 94
    const-string v1, "nl"

    goto :goto_0

    .line 95
    :cond_c
    const-string v4, "HTC__506"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 96
    const-string v1, "pt"

    goto :goto_0

    .line 97
    :cond_d
    const-string v4, "HTC__304"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 98
    const-string v1, "es_ES"

    goto/16 :goto_0

    .line 99
    :cond_e
    const-string v4, "HTC__H10"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 100
    const-string v1, "no"

    goto/16 :goto_0

    .line 101
    :cond_f
    const-string v4, "HTC__F08"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 102
    const-string v1, "da"

    goto/16 :goto_0

    .line 103
    :cond_10
    const-string v4, "HTC__N34"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 104
    const-string v1, "el"

    goto/16 :goto_0

    .line 105
    :cond_11
    const-string v4, "HTC__G09"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 106
    const-string v1, "sv"

    goto/16 :goto_0

    .line 107
    :cond_12
    const-string v4, "HTC__027"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 108
    const-string v1, "tr"

    goto/16 :goto_0

    .line 109
    :cond_13
    const-string v4, "HTC__J15"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 110
    const-string v1, "ar"

    goto/16 :goto_0

    .line 111
    :cond_14
    const-string v4, "HTC__203"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 112
    const-string v1, "fr"

    goto/16 :goto_0

    .line 113
    :cond_15
    const-string v4, "ORANG001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 114
    if-eqz v2, :cond_2

    const-string v4, "23433"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "65202"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    :cond_16
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 117
    :cond_17
    const-string v4, "ORANG202"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 118
    if-eqz v2, :cond_2

    const-string v4, "20801"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "34001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "60801"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "61002"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "61203"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "62402"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "64602"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "64700"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    :cond_18
    const-string v1, "fr"

    goto/16 :goto_0

    .line 123
    :cond_19
    const-string v4, "ORANGB10"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 124
    if-eqz v2, :cond_2

    const-string v4, "26003"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    const-string v1, "pl"

    goto/16 :goto_0

    .line 127
    :cond_1a
    const-string v4, "ORANG104"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 128
    if-eqz v2, :cond_2

    const-string v4, "22803"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const-string v1, "sv"

    goto/16 :goto_0

    .line 131
    :cond_1b
    const-string v4, "ORANG203"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 132
    if-eqz v2, :cond_2

    const-string v4, "22803"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    const-string v1, "sv"

    goto/16 :goto_0

    .line 135
    :cond_1c
    const-string v4, "ORANG309"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 136
    if-eqz v2, :cond_2

    const-string v4, "21403"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "37001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "62701"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    :cond_1d
    const-string v1, "es_ES"

    goto/16 :goto_0

    .line 139
    :cond_1e
    const-string v4, "ORANG006"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 140
    if-eqz v2, :cond_2

    const-string v4, "23101"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    const-string v1, "sk"

    goto/16 :goto_0

    .line 143
    :cond_1f
    const-string v4, "ORANG008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 144
    if-eqz v2, :cond_2

    const-string v4, "22610"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    const-string v1, "ro"

    goto/16 :goto_0

    .line 147
    :cond_20
    const-string v4, "T-MOB101"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 148
    if-eqz v2, :cond_21

    const-string v4, "26201"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 149
    const-string v1, "de"

    goto/16 :goto_0

    .line 151
    :cond_21
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 153
    :cond_22
    const-string v4, "T-MOB102"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 154
    if-eqz v2, :cond_23

    const-string v4, "23203"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 155
    const-string v1, "de"

    goto/16 :goto_0

    .line 157
    :cond_23
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 159
    :cond_24
    const-string v4, "T-MOB003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 160
    if-eqz v2, :cond_25

    const-string v4, "20416"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 161
    const-string v1, "nl"

    goto/16 :goto_0

    .line 163
    :cond_25
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 165
    :cond_26
    const-string v4, "T-MOB005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 166
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 167
    :cond_27
    const-string v4, "T-MOB004"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 168
    if-eqz v2, :cond_28

    const-string v4, "23001"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 169
    const-string v1, "cs"

    goto/16 :goto_0

    .line 171
    :cond_28
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 173
    :cond_29
    const-string v4, "T-MOB009"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 174
    if-eqz v2, :cond_2a

    const-string v4, "26002"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 175
    const-string v1, "pl"

    goto/16 :goto_0

    .line 177
    :cond_2a
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 179
    :cond_2b
    const-string v4, "T-MOB007"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 180
    if-eqz v2, :cond_2c

    const-string v4, "21630"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 181
    const-string v1, "hu"

    goto/16 :goto_0

    .line 183
    :cond_2c
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 185
    :cond_2d
    const-string v4, "T-MOB006"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 186
    if-eqz v2, :cond_2e

    const-string v4, "21901"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 187
    const-string v1, "hr"

    goto/16 :goto_0

    .line 189
    :cond_2e
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 191
    :cond_2f
    const-string v4, "T-MOB008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 192
    if-eqz v2, :cond_30

    const-string v4, "23102"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 193
    const-string v1, "hr"

    goto/16 :goto_0

    .line 195
    :cond_30
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 197
    :cond_31
    const-string v4, "T-MOB012"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 198
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 199
    :cond_32
    const-string v4, "T-MOBL11"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 200
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 201
    :cond_33
    const-string v4, "TIM__401"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 202
    if-eqz v2, :cond_34

    const-string v4, "22201"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 204
    const-string v1, "it"

    goto/16 :goto_0

    .line 206
    :cond_34
    const-string v1, "it"

    goto/16 :goto_0

    .line 208
    :cond_35
    const-string v4, "O2___001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 209
    if-eqz v2, :cond_2

    const-string v4, "23402"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "23410"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "23411"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    :cond_36
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 212
    :cond_37
    const-string v4, "O2___102"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 213
    if-eqz v2, :cond_2

    const-string v4, "27202"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 216
    :cond_38
    const-string v4, "TELEF301"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 217
    if-eqz v2, :cond_2

    const-string v4, "23458"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const-string v1, "en_GB"

    goto/16 :goto_0

    .line 220
    :cond_39
    const-string v4, "TELUS001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 221
    if-eqz v2, :cond_2

    const-string v4, "21407"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "30222"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    :cond_3a
    const-string v1, "en_US"

    goto/16 :goto_0

    .line 225
    :cond_3b
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 226
    invoke-static {v2}, Lcom/htc/CustomizationSetup/LocaleAssistant;->getLocaleFromMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 230
    :cond_3c
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 231
    invoke-static {v2}, Lcom/htc/CustomizationSetup/LocaleAssistant;->getLocaleFromMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private static getLocaleFromMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mcc"

    .prologue
    const/4 v3, 0x3

    .line 238
    const-string v1, "Show Menu"

    .line 239
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 240
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, code:I
    sparse-switch v0, :sswitch_data_0

    .line 290
    .end local v0           #code:I
    :cond_0
    :goto_0
    :sswitch_0
    return-object v1

    .line 242
    .restart local v0       #code:I
    :sswitch_1
    const-string v1, "el"

    goto :goto_0

    .line 243
    :sswitch_2
    const-string v1, "nl"

    goto :goto_0

    .line 244
    :sswitch_3
    const-string v1, "ru"

    goto :goto_0

    .line 245
    :sswitch_4
    const-string v1, "fr"

    goto :goto_0

    .line 246
    :sswitch_5
    const-string v1, "es_ES"

    goto :goto_0

    .line 247
    :sswitch_6
    const-string v1, "en_US"

    goto :goto_0

    .line 248
    :sswitch_7
    const-string v1, "hr"

    goto :goto_0

    .line 249
    :sswitch_8
    const-string v1, "en_GB"

    goto :goto_0

    .line 250
    :sswitch_9
    const-string v1, "it"

    goto :goto_0

    .line 251
    :sswitch_a
    const-string v1, "en_US"

    goto :goto_0

    .line 254
    :sswitch_b
    const-string v1, "en_US"

    goto :goto_0

    .line 255
    :sswitch_c
    const-string v1, "de"

    goto :goto_0

    .line 256
    :sswitch_d
    const-string v1, "en_US"

    goto :goto_0

    .line 257
    :sswitch_e
    const-string v1, "da"

    goto :goto_0

    .line 259
    :sswitch_f
    const-string v1, "sv"

    goto :goto_0

    .line 260
    :sswitch_10
    const-string v1, "no"

    goto :goto_0

    .line 261
    :sswitch_11
    const-string v1, "ru"

    goto :goto_0

    .line 262
    :sswitch_12
    const-string v1, "en_US"

    goto :goto_0

    .line 263
    :sswitch_13
    const-string v1, "de"

    goto :goto_0

    .line 264
    :sswitch_14
    const-string v1, "pt"

    goto :goto_0

    .line 265
    :sswitch_15
    const-string v1, "en_GB"

    goto :goto_0

    .line 266
    :sswitch_16
    const-string v1, "tr"

    goto :goto_0

    .line 268
    :sswitch_17
    const-string v1, "en_GB"

    goto :goto_0

    .line 270
    :sswitch_18
    const-string v1, "fr"

    goto :goto_0

    .line 271
    :sswitch_19
    const-string v1, "es_ES"

    goto :goto_0

    .line 277
    :sswitch_1a
    const-string v1, "ar"

    goto :goto_0

    .line 278
    :sswitch_1b
    const-string v1, "zh_TW"

    goto :goto_0

    .line 284
    :sswitch_1c
    const-string v1, "fr"

    goto :goto_0

    .line 285
    :sswitch_1d
    const-string v1, "es_ES"

    goto :goto_0

    .line 286
    :sswitch_1e
    const-string v1, "en_GB"

    goto :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_1
        0xcc -> :sswitch_2
        0xcd -> :sswitch_3
        0xd0 -> :sswitch_4
        0xd6 -> :sswitch_5
        0xd8 -> :sswitch_6
        0xdb -> :sswitch_7
        0xdc -> :sswitch_8
        0xde -> :sswitch_9
        0xe2 -> :sswitch_a
        0xe4 -> :sswitch_0
        0xe6 -> :sswitch_b
        0xe7 -> :sswitch_b
        0xe8 -> :sswitch_c
        0xea -> :sswitch_d
        0xee -> :sswitch_e
        0xf0 -> :sswitch_f
        0xf1 -> :sswitch_f
        0xf2 -> :sswitch_10
        0xfa -> :sswitch_11
        0x104 -> :sswitch_12
        0x106 -> :sswitch_13
        0x10c -> :sswitch_14
        0x110 -> :sswitch_15
        0x11e -> :sswitch_16
        0x126 -> :sswitch_17
        0x129 -> :sswitch_17
        0x12e -> :sswitch_0
        0x154 -> :sswitch_18
        0x172 -> :sswitch_19
        0x1a3 -> :sswitch_1a
        0x1a4 -> :sswitch_1a
        0x1a6 -> :sswitch_1a
        0x1a8 -> :sswitch_1a
        0x1aa -> :sswitch_1a
        0x1ab -> :sswitch_1a
        0x1d2 -> :sswitch_1b
        0x260 -> :sswitch_1c
        0x262 -> :sswitch_1c
        0x264 -> :sswitch_1c
        0x270 -> :sswitch_1c
        0x273 -> :sswitch_1d
        0x286 -> :sswitch_1c
        0x287 -> :sswitch_1c
        0x28c -> :sswitch_1e
    .end sparse-switch
.end method
