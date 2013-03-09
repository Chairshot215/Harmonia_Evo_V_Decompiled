.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# static fields
.field private static final BUTTON_WIFI_CALLING_KEY:Ljava/lang/String; = "button_wifi_calling_key"

.field private static final BUTTON_WIFI_CALLING_SETTINGS_KEY:Ljava/lang/String; = "button_wifi_calling_settings_key"

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_IPT:Ljava/lang/String; = "toggle_PS"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_WIFI_P2P:Ljava/lang/String; = "toggle_wifi_p2p"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIFI_P2P_SETTINGS:Ljava/lang/String; = "wifi_p2p_settings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mIPTEnabler:Lcom/android/settings/IPTEnabler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

.field private mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 241
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 242
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 244
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 247
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v12, 0x7f05004f

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, activity:Landroid/app/Activity;
    const-string v12, "toggle_airplane"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    check-cast v12, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 111
    const-string v12, "toggle_nfc"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 112
    .local v6, nfc:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v12, "android_beam_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceScreen;

    .line 114
    .local v1, androidBeam:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v12, "toggle_wifi_p2p"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 115
    .local v11, wifiP2p:Lcom/htc/preference/HtcCheckBoxPreference;
    const-string v12, "toggle_PS"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 117
    .local v3, ipt:Lcom/htc/preference/HtcCheckBoxPreference;
    new-instance v12, Lcom/android/settings/AirplaneModeEnabler;

    iget-object v13, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v12, v0, v13}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 118
    new-instance v12, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v12, v0, v6, v1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 119
    new-instance v12, Lcom/android/settings/IPTEnabler;

    invoke-direct {v12, v0, v3}, Lcom/android/settings/IPTEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mIPTEnabler:Lcom/android/settings/IPTEnabler;

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_toggleable_radios"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, toggleable:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v12, "wifi"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 126
    :cond_0
    const-string v12, "vpn_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    const-string v13, "toggle_airplane"

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 130
    :cond_1
    if-eqz v10, :cond_2

    const-string v12, "bluetooth"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 135
    :cond_2
    if-eqz v10, :cond_3

    const-string v12, "nfc"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 136
    :cond_3
    const-string v12, "toggle_nfc"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    const-string v13, "toggle_airplane"

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 137
    const-string v12, "android_beam_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    const-string v13, "toggle_airplane"

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreference;->setDependency(Ljava/lang/String;)V

    .line 141
    :cond_4
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 142
    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v12, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 145
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 148
    :cond_5
    const-string v12, "wifip2p"

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 150
    .local v8, p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.wifi.direct"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const-string v13, "wifi_p2p_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 159
    :goto_0
    const-string v12, "proxy_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 160
    .local v5, mGlobalProxy:Lcom/htc/preference/HtcPreference;
    const-string v12, "device_policy"

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 163
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v5, v12}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 167
    const-string v12, "connectivity"

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 169
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_b

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const-string v13, "tether_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 176
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const-string v13, "button_wifi_calling_key"

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/WifiCallCheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

    .line 178
    iget-object v12, p0, Lcom/android/settings/WirelessSettings;->mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v13

    const-string v14, "button_wifi_calling_settings_key"

    invoke-virtual {v13, v14}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/WifiCallCheckBoxPreference;->setValues(Lcom/htc/preference/HtcPreference;)V

    .line 185
    :goto_3
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xaf

    if-ne v12, v13, :cond_6

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x95

    if-eq v12, v13, :cond_7

    :cond_6
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0xc

    if-ne v12, v13, :cond_8

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x50

    if-ne v12, v13, :cond_8

    .line 190
    :cond_7
    const-string v12, "toggle_PS"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 191
    .local v9, target:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    if-eqz v12, :cond_8

    if-eqz v9, :cond_8

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 195
    .end local v9           #target:Lcom/htc/preference/HtcPreference;
    :cond_8
    return-void

    .line 155
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #mGlobalProxy:Lcom/htc/preference/HtcPreference;
    :cond_9
    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-direct {v12, v0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    goto/16 :goto_0

    .line 164
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #mGlobalProxy:Lcom/htc/preference/HtcPreference;
    :cond_a
    const/4 v12, 0x0

    goto :goto_1

    .line 172
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_b
    const-string v12, "tether_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 173
    .local v7, p:Lcom/htc/preference/HtcPreference;
    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_2

    .line 180
    .end local v7           #p:Lcom/htc/preference/HtcPreference;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const-string v13, "button_wifi_calling_key"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const-string v13, "button_wifi_calling_settings_key"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->pause()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mIPTEnabler:Lcom/android/settings/IPTEnabler;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mIPTEnabler:Lcom/android/settings/IPTEnabler;

    invoke-virtual {v0}, Lcom/android/settings/IPTEnabler;->pause()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/settings/WifiCallCheckBoxPreference;->pause()V

    .line 237
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pEnabler:Lcom/android/settings/wifi/p2p/WifiP2pEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->resume()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mIPTEnabler:Lcom/android/settings/IPTEnabler;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mIPTEnabler:Lcom/android/settings/IPTEnabler;

    invoke-virtual {v0}, Lcom/android/settings/IPTEnabler;->resume()V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiCallCheckBoxPreference:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/settings/WifiCallCheckBoxPreference;->resume()V

    .line 216
    :cond_3
    return-void
.end method
