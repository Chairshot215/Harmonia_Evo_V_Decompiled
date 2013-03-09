.class public Lcom/android/settings/wifi/p2p/WifiP2pEnabler;
.super Ljava/lang/Object;
.source "WifiP2pEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pEnabler"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 4
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 60
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "WifiP2pEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 72
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    return-void

    .line 70
    :cond_1
    const-string v0, "WifiP2pEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 112
    const-string v0, "WifiP2pEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_0

    .line 99
    .end local p2
    :goto_0
    return v3

    .line 92
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 94
    .local v0, enable:Z
    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
