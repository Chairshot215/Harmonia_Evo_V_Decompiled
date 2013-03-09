.class public Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;
.super Ljava/lang/Object;
.source "HtcApplicationsFeatureFlags.java"


# static fields
.field private static final UNKNOWN_SOURCES_VISIBILITY_KEY:Ljava/lang/String; = "unknown_sources_visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnknownSourcesVisibility(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 32
    const-string v0, "unknown_sources_visibility"

    .line 34
    .local v0, KEY:Ljava/lang/String;
    const/4 v2, 0x1

    .line 37
    .local v2, visible:Z
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v4, "unknown_sources_visibility"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v4, "unknown_sources_visibility"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v3, v2

    .line 48
    .end local v2           #visible:Z
    .local v3, visible:Z
    :goto_0
    return v3

    .line 44
    .end local v3           #visible:Z
    .restart local v2       #visible:Z
    :cond_0
    const-string v4, "unknown_sources_visibility"

    invoke-static {p0, v4, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "unknown_sources_visibility"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v2

    .line 48
    .end local v2           #visible:Z
    .restart local v3       #visible:Z
    goto :goto_0
.end method

.method public static setUnknownSourcesVisibility(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "visible"

    .prologue
    .line 60
    const-string v0, "unknown_sources_visibility"

    .line 63
    .local v0, KEY:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "unknown_sources_visibility"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static final supportAutomaticStartup()Z
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v1

    .line 82
    .local v1, senseVersion:F
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    .line 84
    .local v0, deviceType:Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;
    const/high16 v2, 0x4040

    cmpl-float v2, v1, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;

    if-eq v0, v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0006:Z

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    const/4 v2, 0x1

    .line 88
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final supportNotification()Z
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v1

    .line 104
    .local v1, senseVersion:F
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->getDeviceType()Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;

    move-result-object v0

    .line 106
    .local v0, deviceType:Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;
    const/high16 v2, 0x4040

    cmpl-float v2, v1, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;->TABLET_PC:Lcom/android/settings/framework/flag/HtcDeviceFlags$Info$DeviceType;

    if-eq v0, v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0006:Z

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    const/4 v2, 0x1

    .line 110
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
