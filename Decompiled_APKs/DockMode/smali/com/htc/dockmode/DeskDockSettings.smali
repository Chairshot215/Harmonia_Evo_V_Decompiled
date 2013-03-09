.class public Lcom/htc/dockmode/DeskDockSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "DeskDockSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DESKDOCK_ASK_ME:Ljava/lang/String;

.field private final DESKDOCK_CONNECTION_TYPE:Ljava/lang/String;

.field private final INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_CONNECT_TO_PC:Ljava/lang/String;

.field private INTENT_DONTASK_CHECKED:Ljava/lang/String;

.field private INTENT_DONTASK_UNCHECKED:Ljava/lang/String;

.field private final chargeOnly:Ljava/lang/String;

.field private mAskMe:Lcom/htc/dockmode/preference/HtcAskMePreference;

.field private mAutoConnect:Lcom/htc/preference/HtcPreference;

.field private mAutoLaunch:Lcom/htc/preference/HtcPreference;

.field private mAutoResume:Lcom/htc/preference/HtcPreference;

.field private mBluetoothList:Lcom/htc/preference/HtcPreference;

.field private mDefaultConnectionType:Lcom/htc/dockmode/preference/HtcConnectionTypePreference;

.field private mDimScreen:Lcom/htc/preference/HtcPreference;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mHotspot:Lcom/htc/preference/HtcPreference;

.field private mReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/htc/dockmode/DeskDockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/DeskDockSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mReceiverRegistered:Z

    .line 62
    const-string v0, "INTENT_DONTASK_CHECKED"

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_CHECKED:Ljava/lang/String;

    .line 63
    const-string v0, "INTENT_DONTASK_UNCHECKED"

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_UNCHECKED:Ljava/lang/String;

    .line 64
    const-string v0, "default_type_change_notify_from_connect_to_pc"

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_CONNECT_TO_PC:Ljava/lang/String;

    .line 65
    const-string v0, "deskdock_connection_type"

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->DESKDOCK_CONNECTION_TYPE:Ljava/lang/String;

    .line 66
    const-string v0, "deskdock_ask_me"

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->DESKDOCK_ASK_ME:Ljava/lang/String;

    .line 67
    const-string v0, "Charge Only"

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->chargeOnly:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/htc/dockmode/DeskDockSettings$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/DeskDockSettings$1;-><init>(Lcom/htc/dockmode/DeskDockSettings;)V

    iput-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/DeskDockSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_CHECKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/DeskDockSettings;)Lcom/htc/dockmode/preference/HtcAskMePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mAskMe:Lcom/htc/dockmode/preference/HtcAskMePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/DeskDockSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_UNCHECKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/dockmode/DeskDockSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dockmode/DeskDockSettings;)Lcom/htc/dockmode/preference/HtcConnectionTypePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mDefaultConnectionType:Lcom/htc/dockmode/preference/HtcConnectionTypePreference;

    return-object v0
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/dockmode/DeskDockSettings;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, dockfilter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_CHECKED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_UNCHECKED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "default_type_change_notify_from_connect_to_pc"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/htc/dockmode/DeskDockSettings;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/dockmode/DeskDockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/DeskDockSettings;->mReceiverRegistered:Z

    .line 90
    .end local v0           #dockfilter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pluginComponents()V
    .locals 4

    .prologue
    .line 140
    new-instance v3, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcAutoLaunchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAutoLaunch:Lcom/htc/preference/HtcPreference;

    .line 141
    new-instance v3, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAutoConnect:Lcom/htc/preference/HtcPreference;

    .line 143
    new-instance v3, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    .line 145
    new-instance v3, Lcom/htc/dockmode/preference/HtcAutoResumePreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAutoResume:Lcom/htc/preference/HtcPreference;

    .line 148
    invoke-direct {p0}, Lcom/htc/dockmode/DeskDockSettings;->supportHotspot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    new-instance v3, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcWifiHotspotPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mHotspot:Lcom/htc/preference/HtcPreference;

    .line 151
    :cond_0
    new-instance v3, Lcom/htc/dockmode/preference/HtcDimScreenPreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcDimScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mDimScreen:Lcom/htc/preference/HtcPreference;

    .line 152
    new-instance v3, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mDefaultConnectionType:Lcom/htc/dockmode/preference/HtcConnectionTypePreference;

    .line 154
    new-instance v3, Lcom/htc/dockmode/preference/HtcAskMePreference;

    invoke-direct {v3, p0}, Lcom/htc/dockmode/preference/HtcAskMePreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAskMe:Lcom/htc/dockmode/preference/HtcAskMePreference;

    .line 161
    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDockSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 162
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 163
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDockSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 168
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v3, 0x7f080034

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 170
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 172
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAutoLaunch:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 173
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAutoConnect:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 174
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 175
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAutoResume:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 177
    invoke-direct {p0}, Lcom/htc/dockmode/DeskDockSettings;->supportHotspot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mHotspot:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 182
    :cond_1
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 183
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v3, 0x7f080035

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 184
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 186
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mDimScreen:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 189
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 190
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v3, 0x7f080039

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 191
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 193
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mDefaultConnectionType:Lcom/htc/dockmode/preference/HtcConnectionTypePreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 194
    iget-object v3, p0, Lcom/htc/dockmode/DeskDockSettings;->mAskMe:Lcom/htc/dockmode/preference/HtcAskMePreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 195
    return-void
.end method

.method private supportHotspot()Z
    .locals 5

    .prologue
    .line 207
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/htc/dockmode/DeskDockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 208
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, wifiRegexs:[Ljava/lang/String;
    sget-object v2, Lcom/htc/dockmode/DeskDockSettings;->TAG:Ljava/lang/String;

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

    .line 212
    array-length v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    const/4 v2, 0x0

    .line 217
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
    .line 199
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onBackPressed()V

    .line 200
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mBluetoothList:Lcom/htc/preference/HtcPreference;

    check-cast v0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;

    invoke-virtual {v0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->unregisterBluetoothOnOffReceiver()V

    .line 204
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0}, Lcom/htc/dockmode/DeskDockSettings;->pluginComponents()V

    .line 73
    invoke-direct {p0}, Lcom/htc/dockmode/DeskDockSettings;->initReceiver()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/dockmode/DeskDockSettings;->releaseReceiver()V

    .line 131
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 132
    return-void
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/DeskDockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/DeskDockSettings;->mReceiverRegistered:Z

    .line 124
    :cond_0
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
