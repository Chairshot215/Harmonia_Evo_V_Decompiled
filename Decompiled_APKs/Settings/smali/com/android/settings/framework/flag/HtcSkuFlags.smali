.class public final Lcom/android/settings/framework/flag/HtcSkuFlags;
.super Ljava/lang/Object;
.source "HtcSkuFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
    }
.end annotation


# static fields
.field private static final DEFAULT_SENSE_VERSION:F = 2.0f

.field private static final TAG:Ljava/lang/String;

.field public static final isDebugMode:Z

.field private static final mCurrentCID:Ljava/lang/String;

.field private static final mSupportGoogleMobileServices:Z

.field private static mSupportMarketApplication:Ljava/lang/Boolean;

.field private static mSupportPhoneFunctionalities:Ljava/lang/Boolean;

.field private static sCurrentSenseVersion:F

.field private static sTabletSenseVersion:F

.field private static sTabletSenseVersionInString:Ljava/lang/String;

.field public static final supportWiFi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 27
    const-class v0, Lcom/android/settings/framework/flag/HtcSkuFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    .line 41
    const/high16 v0, -0x4080

    sput v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    .line 42
    sput-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    .line 187
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0003:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportWiFi:Z

    .line 219
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->mCurrentCID:Ljava/lang/String;

    .line 246
    sput-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    .line 289
    const-string v0, "ro.com.google.gmsversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportGoogleMobileServices:Z

    .line 307
    sput-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    return-void

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    :cond_1
    move v1, v2

    .line 289
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 435
    return-void
.end method

.method public static getCurrentCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->mCurrentCID:Ljava/lang/String;

    return-object v0
.end method

.method public static getSenseVersion()F
    .locals 5

    .prologue
    const/high16 v2, 0x4000

    .line 64
    sget v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 65
    sget v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    .line 86
    .local v1, senseFlag:Ljava/lang/String;
    :goto_0
    return v2

    .line 68
    .end local v1           #senseFlag:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    .line 71
    .restart local v1       #senseFlag:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 72
    sput v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    sput v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_0

    .line 81
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    sget v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 84
    sput v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_1
.end method

.method public static getSenseVersionInString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    return-object v0
.end method

.method private static getTabletMainSenseVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "version"

    .prologue
    .line 158
    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 159
    .local v3, prefix:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 162
    .local v1, hasPoint:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 163
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, digit:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 168
    const/4 v1, 0x1

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 175
    .end local v0           #digit:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 178
    .end local p0
    :cond_2
    return-object p0
.end method

.method public static getTabletSenseVersion()F
    .locals 9

    .prologue
    .line 97
    sget v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 98
    sget v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    .line 134
    .local v3, senseVersion:Ljava/lang/String;
    :goto_0
    return v5

    .line 101
    .end local v3           #senseVersion:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersionInString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3       #senseVersion:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 122
    .local v4, value:F
    :goto_1
    float-to-double v5, v4

    const-wide/high16 v7, 0x4000

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    .line 123
    const-string v3, "1.0"

    .line 133
    :cond_1
    :goto_2
    sput-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    .line 134
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sput v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersion:F

    goto :goto_0

    .line 105
    .end local v4           #value:F
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "senseVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v2, 0x0

    .line 112
    .local v2, mainVersion:Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletMainSenseVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .restart local v4       #value:F
    goto :goto_1

    .line 114
    .end local v4           #value:F
    :catch_1
    move-exception v1

    .line 115
    .local v1, e2:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "senseVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mainVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 124
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #e2:Ljava/lang/NumberFormatException;
    .end local v2           #mainVersion:Ljava/lang/String;
    .restart local v4       #value:F
    :cond_2
    const v5, 0x40066666

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    .line 125
    const-string v3, "1.1"

    goto :goto_2

    .line 126
    :cond_3
    const v5, 0x400ccccd

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    .line 127
    const-string v3, "1.2"

    goto :goto_2

    .line 128
    :cond_4
    const/high16 v5, 0x4060

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_5

    .line 129
    const-string v3, "1.5"

    goto :goto_2

    .line 130
    :cond_5
    const/high16 v5, 0x4080

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    .line 131
    const-string v3, "2.0"

    goto :goto_2
.end method

.method public static getTabletSenseVersionInString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->sTabletSenseVersionInString:Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final hasSimCardSlot()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisclosed()Z
    .locals 5

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 354
    .local v2, f:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Lcom/htc/htcjavaflag/HtcBuildFlag;

    const-string v4, "HTC_DISCLOSE_FLAG"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 360
    const/4 v0, 0x1

    .line 363
    .local v0, b:Z
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 370
    .end local v0           #b:Z
    :goto_0
    return v0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    const-string v4, "not support this field"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    .restart local v0       #b:Z
    :catch_1
    move-exception v1

    .line 365
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 367
    .local v1, e:Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->TAG:Ljava/lang/String;

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final isWifiOnly()Z
    .locals 2

    .prologue
    .line 209
    const-string v0, "wifi-only"

    const-string v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support3LM()Z
    .locals 2

    .prologue
    .line 344
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v0, :cond_0

    const-string v0, "HTC__A07"

    sget-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mCurrentCID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VODAPA30"

    sget-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mCurrentCID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGoogleMobileServices()Z
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportGoogleMobileServices:Z

    return v0
.end method

.method public static supportMarketApplication(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 319
    sget-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 320
    sget-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 337
    :goto_0
    return v2

    .line 326
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 330
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 332
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportMarketApplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static final supportPhoneFunctionalities()Z
    .locals 2

    .prologue
    .line 274
    sget-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 280
    .local v0, value:Ljava/lang/String;
    :goto_0
    return v1

    .line 278
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const-string v1, "ro.phone.function"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0       #value:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->mSupportPhoneFunctionalities:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static suppressAllLog()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public static suppressDebugLog()Z
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressInfoLog()Z

    move-result v0

    return v0
.end method

.method public static suppressInfoLog()Z
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressWarnLog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static suppressVerboseLog()Z
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressDebugLog()Z

    move-result v0

    return v0
.end method

.method public static suppressWarnLog()Z
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->suppressAllLog()Z

    move-result v0

    return v0
.end method
