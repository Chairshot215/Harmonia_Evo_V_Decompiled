.class public Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcDeskDockSettings.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAutoConnect:Lcom/htc/preference/HtcPreference;

.field private mAutoLaunch:Lcom/htc/preference/HtcPreference;

.field private mAutoResume:Lcom/htc/preference/HtcPreference;

.field private mBluetoothList:Lcom/htc/preference/HtcPreference;

.field private mDefaultConnectionType:Lcom/htc/preference/HtcPreference;

.field private mDimScreen:Lcom/htc/preference/HtcPreference;

.field private mFriendStreamUpdates:Lcom/htc/preference/HtcPreference;

.field private mHotspot:Lcom/htc/preference/HtcPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "HtcDeskDockSettings"

    sput-object v0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private pluginComponents()V
    .locals 4

    .prologue
    .line 57
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcAutoLaunchPreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcAutoLaunchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoLaunch:Lcom/htc/preference/HtcPreference;

    .line 58
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcAutoConnectDeskBluetoothPreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcAutoConnectDeskBluetoothPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoConnect:Lcom/htc/preference/HtcPreference;

    .line 59
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcPairedDeskBluetoothDevicesListPreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcPairedDeskBluetoothDevicesListPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    .line 60
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcAutoResumePreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcAutoResumePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoResume:Lcom/htc/preference/HtcPreference;

    .line 61
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcFriendStreamUpdatePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mFriendStreamUpdates:Lcom/htc/preference/HtcPreference;

    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->supportHotspot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcWifiHotspotPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mHotspot:Lcom/htc/preference/HtcPreference;

    .line 65
    :cond_0
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mDimScreen:Lcom/htc/preference/HtcPreference;

    .line 66
    new-instance v3, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mDefaultConnectionType:Lcom/htc/preference/HtcPreference;

    .line 69
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoLaunch:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 70
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoConnect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 71
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 72
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoResume:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mFriendStreamUpdates:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->supportHotspot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mHotspot:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mDimScreen:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mDefaultConnectionType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 87
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 88
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 93
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v3, 0x7f0c00d7

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 95
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 97
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoLaunch:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 98
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoConnect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 99
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 100
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mAutoResume:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 101
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mFriendStreamUpdates:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 102
    invoke-direct {p0}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->supportHotspot()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mHotspot:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    :cond_2
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 108
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v3, 0x7f0c00e2

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 109
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mDimScreen:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v3, 0x7f0c00e4

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 116
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 118
    iget-object v3, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mDefaultConnectionType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 119
    return-void
.end method

.method private supportHotspot()Z
    .locals 5

    .prologue
    .line 130
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, wifiRegexs:[Ljava/lang/String;
    sget-object v2, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiRegexs length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isTetheringSupported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    array-length v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onBackPressed()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/android/settings/framework/preference/deskdock/HtcPairedDeskBluetoothDevicesListPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/deskdock/HtcPairedDeskBluetoothDevicesListPreference;->unregisterBluetoothOnOffReceiver()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/framework/activity/dock/HtcDeskDockSettings;->pluginComponents()V

    .line 49
    return-void
.end method
