.class public Lcom/android/providers/settings/flag/HtcSkuFlags;
.super Ljava/lang/Object;
.source "HtcSkuFlags.java"


# static fields
.field public static CURRENT_CID:Ljava/lang/String; = null

.field private static final DEFAULT_SENSE_VERSION:F = 2.0f

.field public static hasPhoneStorage:Z

.field public static hasSdCardAndPhoneStorage:Z

.field public static hasSdCardStorage:Z

.field public static isDebugMode:Z

.field public static isFactoryMode:Z

.field private static sCurrentSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->CURRENT_CID:Ljava/lang/String;

    .line 21
    sput-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->isDebugMode:Z

    .line 27
    const-string v0, "ro.bootmode"

    const-string v3, "unknown"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "factory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->isFactoryMode:Z

    .line 31
    const-string v0, "ro.phone_fat"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    .line 34
    invoke-static {}, Lcom/android/providers/settings/util/HtcRefWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    .line 37
    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardAndPhoneStorage:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasPhoneStorage:Z

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->hasSdCardStorage:Z

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    return-void

    :cond_2
    move v0, v2

    .line 31
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSenseVersion()F
    .locals 5

    .prologue
    const/high16 v2, 0x4000

    .line 58
    sget v3, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 59
    sget v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    .line 80
    .local v1, senseFlag:Ljava/lang/String;
    :goto_0
    return v2

    .line 62
    .end local v1           #senseFlag:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    .line 65
    .restart local v1       #senseFlag:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 66
    sput v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    sput v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_0

    .line 75
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    sget v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 78
    sput v2, Lcom/android/providers/settings/flag/HtcSkuFlags;->sCurrentSenseVersion:F

    goto :goto_1
.end method
