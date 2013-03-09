.class public Lcom/android/settings/wifi/LanInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LanInfo.java"


# static fields
.field private static final KEY_LOCAL_GATEWAY:Ljava/lang/String; = "gateway"

.field private static final KEY_LOCAL_IP:Ljava/lang/String; = "ip_address"

.field private static final KEY_LOCAL_NETMASK:Ljava/lang/String; = "netmask"


# instance fields
.field private mGatewayPref:Lcom/htc/preference/HtcPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIpPref:Lcom/htc/preference/HtcPreference;

.field private mIsConnected:Z

.field private mNetMaskPref:Lcom/htc/preference/HtcPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/LanInfo;->mIsConnected:Z

    .line 37
    new-instance v0, Lcom/android/settings/wifi/LanInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/LanInfo$1;-><init>(Lcom/android/settings/wifi/LanInfo;)V

    iput-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/LanInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/settings/wifi/LanInfo;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/LanInfo;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mIpPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mGatewayPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/wifi/LanInfo;->mNetMaskPref:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/LanInfo;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 80
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "ip_address"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mIpPref:Lcom/htc/preference/HtcPreference;

    .line 81
    const-string v1, "gateway"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mGatewayPref:Lcom/htc/preference/HtcPreference;

    .line 82
    const-string v1, "netmask"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mNetMaskPref:Lcom/htc/preference/HtcPreference;

    .line 83
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/LanInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LanInfo;->addPreferencesFromResource(I)V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/wifi/LanInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/LanInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/LanInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/LanInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method
