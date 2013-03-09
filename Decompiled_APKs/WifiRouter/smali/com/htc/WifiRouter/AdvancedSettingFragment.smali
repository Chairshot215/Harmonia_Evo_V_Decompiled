.class public Lcom/htc/WifiRouter/AdvancedSettingFragment;
.super Lcom/htc/preference/HtcPreferenceFragment;
.source "AdvancedSettingFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvancedSettingFragment"


# instance fields
.field private mAllowedChannel:I

.field private mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHotspotStateFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private parent:Lcom/htc/preference/HtcPreferenceGroup;

.field private preferenceScreen:Lcom/htc/preference/HtcListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceFragment;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    .line 40
    new-instance v0, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment$1;-><init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/WifiRouter/AdvancedSettingFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/WifiRouter/AdvancedSettingFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Lcom/htc/preference/HtcListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/WifiRouter/AdvancedSettingFragment;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private initLayout()V
    .locals 12

    .prologue
    .line 96
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-eqz v10, :cond_4

    .line 98
    const v10, 0x7f040001

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->addPreferencesFromResource(I)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 164
    .local v0, activity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v10

    if-nez v10, :cond_b

    .line 166
    const-string v10, "lan_settings"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 167
    .local v9, target:Lcom/htc/preference/HtcPreference;
    if-eqz v9, :cond_0

    .line 168
    new-instance v10, Lcom/htc/WifiRouter/AdvancedSettingFragment$3;

    invoke-direct {v10, p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment$3;-><init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 188
    :cond_0
    :goto_1
    const-string v10, "power_mode"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    iput-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    .line 189
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_1

    .line 190
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    sget-object v11, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSleepPolicy()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 195
    :cond_1
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    new-instance v11, Lcom/htc/WifiRouter/AdvancedSettingFragment$4;

    invoke-direct {v11, p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment$4;-><init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 213
    const-string v10, "hidden_ssid"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 214
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v10, :cond_2

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x94

    if-eq v10, v11, :cond_2

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0xa9

    if-ne v10, v11, :cond_c

    .line 217
    :cond_2
    const-string v10, "PreferenceCategory_title"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceGroup;

    .line 218
    .local v8, parent:Lcom/htc/preference/HtcPreferenceGroup;
    if-eqz v8, :cond_3

    .line 220
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_3

    .line 221
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 250
    .end local v8           #parent:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_3
    :goto_2
    return-void

    .line 100
    .end local v0           #activity:Lcom/htc/preference/HtcPreferenceActivity;
    .end local v9           #target:Lcom/htc/preference/HtcPreference;
    :cond_4
    const v10, 0x7f040002

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->addPreferencesFromResource(I)V

    .line 101
    const-string v10, "wifi_channel"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcListPreference;

    iput-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    .line 102
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 104
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    iget-object v11, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-le v10, v11, :cond_9

    .line 105
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    add-int/lit8 v10, v10, 0x1

    new-array v2, v10, [Ljava/lang/CharSequence;

    .line 106
    .local v2, channelValue:[Ljava/lang/CharSequence;
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    add-int/lit8 v10, v10, 0x1

    new-array v1, v10, [Ljava/lang/CharSequence;

    .line 107
    .local v1, channelEntry:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 108
    .local v7, oldchannelValue:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 109
    .local v6, oldchannelEntry:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    add-int/lit8 v10, v10, 0x1

    if-ge v5, v10, :cond_6

    .line 111
    if-nez v5, :cond_5

    .line 112
    aget-object v10, v7, v5

    aput-object v10, v2, v5

    .line 113
    aget-object v10, v6, v5

    aput-object v10, v1, v5

    .line 109
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 115
    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 116
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    goto :goto_4

    .line 119
    :cond_6
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 120
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 135
    .end local v1           #channelEntry:[Ljava/lang/CharSequence;
    .end local v2           #channelValue:[Ljava/lang/CharSequence;
    .end local v5           #i:I
    .end local v6           #oldchannelEntry:[Ljava/lang/CharSequence;
    .end local v7           #oldchannelValue:[Ljava/lang/CharSequence;
    :cond_7
    :goto_5
    :try_start_0
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    if-eqz v10, :cond_8

    sget-object v10, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v10, :cond_8

    .line 136
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    sget-object v11, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getChannel()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_8
    :goto_6
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    iget-object v11, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    new-instance v11, Lcom/htc/WifiRouter/AdvancedSettingFragment$2;

    invoke-direct {v11, p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment$2;-><init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 121
    :cond_9
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    iget-object v11, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_7

    .line 122
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    add-int/lit8 v10, v10, 0x1

    new-array v2, v10, [Ljava/lang/CharSequence;

    .line 123
    .restart local v2       #channelValue:[Ljava/lang/CharSequence;
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    add-int/lit8 v10, v10, 0x1

    new-array v1, v10, [Ljava/lang/CharSequence;

    .line 124
    .restart local v1       #channelEntry:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 125
    .restart local v7       #oldchannelValue:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 126
    .restart local v6       #oldchannelEntry:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_7
    iget v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    add-int/lit8 v10, v10, 0x1

    if-ge v5, v10, :cond_a

    .line 127
    aget-object v10, v7, v5

    aput-object v10, v2, v5

    .line 128
    aget-object v10, v6, v5

    aput-object v10, v1, v5

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 130
    :cond_a
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10, v1}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 140
    .end local v1           #channelEntry:[Ljava/lang/CharSequence;
    .end local v2           #channelValue:[Ljava/lang/CharSequence;
    .end local v5           #i:I
    .end local v6           #oldchannelEntry:[Ljava/lang/CharSequence;
    .end local v7           #oldchannelValue:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 141
    .local v3, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    goto :goto_6

    .line 181
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #activity:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_b
    const-string v10, "PreferenceCategory_title"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/htc/preference/HtcPreferenceCategory;

    .line 182
    .local v8, parent:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v10, "lan_settings"

    invoke-virtual {p0, v10}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 183
    .restart local v9       #target:Lcom/htc/preference/HtcPreference;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 184
    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_1

    .line 226
    .end local v8           #parent:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_c
    sget-object v10, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v10}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getHiddenSSID()Z

    move-result v4

    .line 228
    .local v4, hidden:Z
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v10, :cond_3

    .line 229
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 230
    iget-object v10, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v11, Lcom/htc/WifiRouter/AdvancedSettingFragment$5;

    invoke-direct {v11, p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment$5;-><init>(Lcom/htc/WifiRouter/AdvancedSettingFragment;)V

    invoke-virtual {v10, v11}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getHotspotNumAllowedChannels(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mAllowedChannel:I

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->initLayout()V

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onPause()V

    .line 92
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceFragment;->onResume()V

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 75
    invoke-virtual {p0}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHotspotStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iput v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I

    .line 79
    const-string v1, "wifi_channel"

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/AdvancedSettingFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    .line 80
    iget v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I

    const/16 v4, 0xc

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mWifiApState:I

    const/16 v4, 0xd

    if-ne v1, v4, :cond_3

    :cond_0
    move v0, v3

    .line 82
    .local v0, isWifiApEnable:Z
    :goto_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->preferenceScreen:Lcom/htc/preference/HtcListPreference;

    if-nez v0, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/WifiRouter/AdvancedSettingFragment;->mHiddenSsidChkBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 87
    .end local v0           #isWifiApEnable:Z
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 80
    goto :goto_0

    .restart local v0       #isWifiApEnable:Z
    :cond_4
    move v1, v2

    .line 82
    goto :goto_1

    :cond_5
    move v3, v2

    .line 84
    goto :goto_2
.end method
