.class public Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;
.super Ljava/lang/Object;
.source "HtcLocationFeatureFlags.java"


# static fields
.field private static final PHONE_FINDER_KEY:Ljava/lang/String; = "phone_finder_visibility"

.field private static final REINSTALL_VISIBILITY_KEY:Ljava/lang/String; = "reinstall_visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAGPSAssistanceVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0010:Z

    return v0
.end method

.method public static final getAGPSSyncTimeVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0010:Z

    return v0
.end method

.method public static final getAssistedGPSVisibility(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0004:Z

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0009:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getGPSOneLocNetworkVisibility(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 230
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 233
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getIntegrateGoogleNavigationVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getReinstallLocationAppVisibility(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final getLocationEntryVisibility(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0003:Z

    if-eqz v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 57
    .local v0, support:Z
    :goto_0
    return v0

    .line 55
    .end local v0           #support:Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #support:Z
    goto :goto_0
.end method

.method public static final getPhoneFinderVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public static final getReinstallLocationAppVisibility(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 147
    const-string v0, "reinstall_visibility"

    .line 149
    .local v0, KEY:Ljava/lang/String;
    const/4 v2, 0x0

    .line 152
    .local v2, visible:Z
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v4, "reinstall_visibility"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "reinstall_visibility"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move v3, v2

    .line 174
    .end local v2           #visible:Z
    .local v3, visible:Z
    :goto_0
    return v3

    .line 159
    .end local v3           #visible:Z
    .restart local v2       #visible:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.laputa.DataPath"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 161
    const/4 v2, 0x1

    .line 168
    :goto_1
    const-string v4, "reinstall_visibility"

    invoke-static {p0, v4, v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 172
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "reinstall_visibility"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v2

    .line 174
    .end local v2           #visible:Z
    .restart local v3       #visible:Z
    goto :goto_0

    .line 163
    .end local v3           #visible:Z
    .restart local v2       #visible:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static final getUseLocationForGoogleVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 193
    invoke-static {p0}, Lcom/android/settings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static final getUseWirelessNetworkVisibility(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0001:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isD0004:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportCompassWraningFeature()Z
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
