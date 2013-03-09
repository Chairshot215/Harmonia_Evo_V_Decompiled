.class public Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;
.super Ljava/lang/Object;
.source "HtcAboutPhoneFeatureFlags.java"


# static fields
.field private static final SUPPORT_IMEI_KEY:Ljava/lang/String; = "support_imei"

.field private static final SUPPORT_IMSI_KEY:Ljava/lang/String; = "support_imsi"

.field public static final supportHardwareVersion:Z

.field public static final supportStatusForSignalStrength:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0005:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0001:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isI0001:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0003:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isB0002:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareVersion:Z

    .line 181
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0009:Z

    if-nez v0, :cond_2

    :goto_1
    sput-boolean v2, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportStatusForSignalStrength:Z

    return-void

    :cond_1
    move v0, v1

    .line 74
    goto :goto_0

    :cond_2
    move v2, v1

    .line 181
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportAppVersion(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 305
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.pigrabber.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 308
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 309
    const/4 v3, 0x1

    .line 311
    :cond_0
    return v3
.end method

.method public static final supportDistributionTime()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0005:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0001:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportFrontCameraInfo()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportGoogleLegalInformation()Z
    .locals 1

    .prologue
    .line 277
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0004:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportHtcSenseVersion()Z
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    const v1, 0x40066666

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportIMEI(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 158
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->hasSimCardSlot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1

    .line 162
    :cond_0
    const-string v0, "support_imei"

    .line 163
    .local v0, KEY:Ljava/lang/String;
    const/4 v1, 0x1

    .line 166
    .local v1, support:Z
    const-string v2, "support_imei"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 168
    goto :goto_0
.end method

.method public static final supportIMSI(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->hasSimCardSlot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 138
    :goto_0
    return v1

    .line 132
    :cond_0
    const-string v0, "support_imsi"

    .line 133
    .local v0, KEY:Ljava/lang/String;
    const/4 v1, 0x1

    .line 136
    .local v1, support:Z
    const-string v2, "support_imsi"

    invoke-static {p0, v2, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 138
    goto :goto_0
.end method

.method public static final supportNetwork()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->hasSimCardSlot()Z

    move-result v0

    return v0
.end method

.method public static final supportOperatorLegalInformation()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0005:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isK0002:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportPhoneNumber()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->hasSimCardSlot()Z

    move-result v0

    return v0
.end method

.method public static final supportProcessorInfo()Z
    .locals 1

    .prologue
    .line 232
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isA0001:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0005:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportROMVersion()Z
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0009:Z

    return v0
.end method

.method public static final supportTelecElectricLegalInformation()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isS0009:Z

    return v0
.end method
