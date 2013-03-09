.class public Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;
.super Ljava/lang/Object;
.source "HtcDisplayFeatureFlags.java"


# static fields
.field private static mSupportTVOut:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final support3DHomeScreen()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public static final supportAnimation()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0006:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportAutoRotateScreen()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public static final supportFontSize()Z
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportNotificationFlash()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    const-string v1, "ro.product.nled_off"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final supportScreenAlignmentCalibration(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0001:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0001:Z

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

.method public static final supportTVOut(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 106
    sget-object v6, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 107
    sget-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 128
    :goto_0
    return v5

    .line 111
    :cond_0
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    if-eqz v6, :cond_1

    .line 112
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "com.htc.android.tvout"

    .line 117
    .local v1, TARGET_PACKAGE:Ljava/lang/String;
    const-string v0, "com.htc.android.tvout.SettingActivity"

    .line 118
    .local v0, TARGET_CLASS:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 122
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.htc.android.tvout"

    const-string v8, "com.htc.android.tvout.SettingActivity"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 126
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 127
    .local v4, size:I
    if-lez v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    .line 128
    sget-object v5, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->mSupportTVOut:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method
