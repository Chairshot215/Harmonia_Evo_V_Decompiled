.class public Lcom/android/settings/wifi/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CONFIG_SUBTEXT:I = 0x7f0c0978

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final OPEN_INDEX:I = 0x0

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WPA_INDEX:I = 0x1


# instance fields
.field private mCreateNetwork:Lcom/htc/preference/HtcPreference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSecurityType:[Ljava/lang/String;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0c0978

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 75
    const-string v2, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    .line 76
    const-string v2, "enable_wifi_ap"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 78
    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 80
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_0

    .line 81
    const v2, 0x10403de

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v2, v2, v7

    :goto_1
    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v2, v2, v6

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 124
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0c0978

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v0, v0, v5

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f050049

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 62
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 95
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 98
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 100
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 113
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p2, v0, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 120
    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 107
    return-void
.end method
