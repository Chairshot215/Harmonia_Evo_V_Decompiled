.class public Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;
.super Ljava/lang/Object;
.source "HtcStorageFeatureFlags.java"


# static fields
.field private static final STORAGE_FLAG_EMMC_STORAGE_MASK:I = 0x20

.field private static final STORAGE_FLAG_EXTERNAL_STORAGE_MASK:I = 0x1

.field private static final STORAGE_FLAG_INTERNAL_STORAGE_MASK:I = 0x4

.field private static final STORAGE_FLAG_PHONE_STORAGE_MASK:I = 0x8

.field private static final STORAGE_FLAG_SD_CARD_MASK:I = 0x2

.field private static final STORAGE_FLAG_TABLET_STORAGE_MASK:I = 0x10

.field private static final STORAGE_FLAG_USB_STORAGE_MASK:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field private static sStorageFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 76
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 82
    :goto_0
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 84
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 91
    :cond_0
    :goto_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 95
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 108
    :cond_2
    return-void

    .line 79
    :cond_3
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    goto :goto_0

    .line 87
    :cond_4
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    .line 88
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 346
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public static final supportAppStorageLocSettings()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 304
    .local v0, hasSdCardAndPhoneStorage:Z
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v5

    const/high16 v6, 0x4080

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    move v1, v3

    .line 305
    .local v1, isSense40:Z
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v5

    const/high16 v6, 0x3fc0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    move v2, v3

    .line 307
    .local v2, isSense40t:Z
    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    return v3

    .end local v1           #isSense40:Z
    .end local v2           #isSense40t:Z
    :cond_1
    move v1, v4

    .line 304
    goto :goto_0

    .restart local v1       #isSense40:Z
    :cond_2
    move v2, v4

    .line 305
    goto :goto_1

    .restart local v2       #isSense40t:Z
    :cond_3
    move v3, v4

    .line 307
    goto :goto_2
.end method

.method public static final supportCloudStorageGroup()Z
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v0

    const/high16 v1, 0x3fc0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportDiskStorage()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0004:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportEmmcStorage()Z
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportEraseInternalStorage()Z
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    return v0
.end method

.method public static final supportExternalSdCardStorage()Z
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSdCardStorage()Z

    move-result v0

    return v0
.end method

.method public static supportExternalStorage()Z
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportInternalStorage()Z
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportMakeMoreSpace()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    .line 206
    .local v0, senseVersion:F
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    const v3, 0x3f8ccccd

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 212
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 208
    goto :goto_0

    .line 212
    :cond_1
    const/high16 v3, 0x4040

    cmpl-float v3, v0, v3

    if-gez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0003:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0003:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static supportPhoneStorage()Z
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSdCardStorage()Z
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportSubTotalSpaceForInternalStorage()Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0001:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportTabletStorage()Z
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportUsbStorage()Z
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->sStorageFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportUsbStorageGroup()Z
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v0

    return v0
.end method
