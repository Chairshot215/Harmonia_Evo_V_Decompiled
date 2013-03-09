.class public Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcUseWirelessNetworkPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->KEY:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->KEY:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c063b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f0c0a8c

    .line 94
    .local v0, resId:I
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->isWifiOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const v0, 0x7f0c0a8d

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0a8b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method

.method protected onGetValue()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 5
    .parameter "checked"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 142
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 144
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.app.autosetting.location"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    return-void

    .line 150
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "auto_sync_check"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, autoSyncCheck:I
    const-string v3, "auto_set_time_city_locale"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    const-string v3, "auto_apply_set_time_city_locale"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.app.autosetting.cancel"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "auto_sync_check"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onSetValue(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcLocationManager;->notifyShowMeWidget(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 135
    return-void
.end method
