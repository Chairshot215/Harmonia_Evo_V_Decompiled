.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$4;,
        Lcom/android/settings/wifi/WifiSettings$CWHandler;,
        Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;,
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final MENU_ID_ADD_NETWORK:I = 0x2

.field private static final MENU_ID_ADVANCED:I = 0x3

.field private static final MENU_ID_CONNECT:I = 0x4

.field private static final MENU_ID_DISCONNECT:I = 0x8

.field private static final MENU_ID_FORGET:I = 0x5

.field private static final MENU_ID_MODIFY:I = 0x6

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SET_FIRST_PRIORITY:I = 0x7

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WEP_ERROR:I = 0x2

.field private static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

.field private mCWRemoteConnection:Landroid/content/ServiceConnection;

.field private mCWService:Lcom/htc/cw/ICWService;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIPTEnabled:Z

.field private mInXlSetupWizard:Z

.field private mIsBound:Z

.field private mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mTriggerConnectByUI:Z

.field protected mType:I

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    .line 148
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    .line 149
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    .line 150
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    .line 1014
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/htc/cw/ICWService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 694
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkWepStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 885
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 896
    .local v0, accesspoint:Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v1, :cond_2

    .line 900
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 902
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showWepErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V

    .line 904
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    goto :goto_0
.end method

.method private disableAllNetworks()V
    .locals 5

    .prologue
    .line 1277
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1

    .line 1278
    const-string v3, "WifiSettings"

    const-string v4, "disableAllNetworks, mWifiManager == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1283
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 1284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1285
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_1

    .line 1289
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    .line 1291
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0
.end method

.method private findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;
    .locals 5
    .parameter "networkId"
    .parameter "bssid"
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1265
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1266
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1267
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1268
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/wifi/AccessPoint;->matches(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 1273
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :goto_1
    return-object v0

    .line 1264
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1273
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 761
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 763
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 768
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 769
    :cond_3
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 776
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    .line 777
    const-string v4, "newState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 781
    :cond_4
    const-string v4, "newState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    const-string v5, "supplicantError"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "supplicantError"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/wifi/WifiSettings;->handleSupplicantStateError(Landroid/net/wifi/SupplicantState;ZI)V

    .line 786
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v4, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v4, p2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onSupplicantStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 789
    :cond_5
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 790
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 792
    .local v2, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 793
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 795
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 797
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 798
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 799
    :cond_7
    const-string v4, "android.net.wifi.ERROR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 800
    const-string v4, "errorCode"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 801
    .local v1, errorCode:I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 803
    :pswitch_0
    const v4, 0x7f0c0953

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 807
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWepStatus()V

    goto/16 :goto_0

    .line 810
    .end local v1           #errorCode:I
    :cond_8
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 812
    .local v3, netinfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    .line 813
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    .line 814
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive USBNET connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v4, :cond_0

    .line 816
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    goto/16 :goto_0

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSupplicantStateError(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 4
    .parameter "state"
    .parameter "hasError"
    .parameter "supplicantError"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    .line 924
    :cond_2
    if-eqz p2, :cond_0

    .line 925
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 928
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showPskErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 629
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 636
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 637
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1260
    :goto_0
    return-void

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method private showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 575
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 576
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 578
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 579
    return-void
.end method

.method private showPskErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    const/4 v2, 0x2

    .line 619
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getEdit()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 624
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 626
    return-void
.end method

.method private showWepErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 602
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 604
    return-void
.end method

.method private showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 614
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 616
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 824
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 825
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 830
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 835
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 836
    if-eqz p1, :cond_2

    .line 837
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_5

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 843
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 844
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 845
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 840
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 832
    .end local v1           #i:I
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 849
    .restart local v1       #i:I
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v3, :cond_6

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 853
    :cond_6
    sget-boolean v3, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v3, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    if-eqz v3, :cond_7

    .line 855
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 856
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadSettings;

    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiOffloadSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiOffloadSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 865
    packed-switch p1, :pswitch_data_0

    .line 879
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 880
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 881
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 882
    :goto_1
    return-void

    .line 867
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 871
    :pswitch_1
    const v0, 0x7f0c090b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 875
    :pswitch_2
    const v0, 0x7f0c091d

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected constructAccessPoints()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 704
    .local v2, apMap:Lcom/android/settings/wifi/WifiSettings$Multimap;,"Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 705
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_0

    .line 706
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 707
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-direct {v0, v10, v3, v11}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 708
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 709
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v10, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 715
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_4

    .line 716
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 718
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "[IBSS]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 723
    const/4 v5, 0x0

    .line 724
    .local v5, found:Z
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 725
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 726
    const/4 v5, 0x1

    goto :goto_2

    .line 728
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    if-nez v5, :cond_1

    .line 729
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-direct {v0, v10, v8, v11}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V

    .line 730
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v10, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 737
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v5           #found:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 738
    return-object v1
.end method

.method forget()V
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 1297
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 1299
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1306
    return-void
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1330
    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 1333
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 220
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 221
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 222
    if-eqz p1, :cond_0

    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    const-string v8, "edit_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 225
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 229
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 233
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "wifi_enable_next_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 235
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v8, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 239
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_1

    .line 240
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 242
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 247
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_1
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v8, :cond_3

    .line 248
    const v8, 0x7f050047

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x1020004

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 277
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 280
    sget-boolean v8, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v8, :cond_2

    .line 281
    new-instance v5, Landroid/os/HandlerThread;

    const-string v8, "WifiSettingsThread"

    invoke-direct {v5, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 282
    .local v5, mainThread:Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 283
    new-instance v8, Lcom/android/settings/wifi/WifiSettings$CWHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/settings/wifi/WifiSettings$CWHandler;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.cw.CWService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    .line 290
    .end local v5           #mainThread:Landroid/os/HandlerThread;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 291
    return-void

    .line 250
    :cond_3
    const v8, 0x7f05004c

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 253
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, actionBarSwitch:Lcom/htc/widget/HtcToggleButton;
    instance-of v8, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v8, :cond_5

    move-object v7, v1

    .line 256
    check-cast v7, Lcom/htc/preference/HtcPreferenceActivity;

    .line 257
    .local v7, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-nez v8, :cond_5

    .line 258
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 260
    .local v6, padding:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v6, v10}, Lcom/htc/widget/HtcToggleButton;->setPadding(IIII)V

    .line 261
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 263
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x15

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v0, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 270
    .end local v6           #padding:I
    .end local v7           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_5
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v8, v1, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1324
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 1326
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 211
    instance-of v0, p1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    .line 212
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, -0x3

    .line 1095
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_2

    .line 1096
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1098
    :cond_1
    if-ne p2, v2, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 1102
    :cond_2
    if-ne p2, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 1104
    :cond_3
    if-ne p2, v2, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isCWRegisterBtn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1113
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isCWUnRegisterBtn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1122
    :cond_5
    sget-boolean v0, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_6

    .line 1125
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0612

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0611

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001c

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1139
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 464
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 465
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 513
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 469
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v1, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showIPTAlertDialog()V

    goto :goto_0

    .line 473
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 474
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 476
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    .line 477
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 482
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_0

    .line 483
    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto :goto_0

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_5

    .line 488
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 489
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 490
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    .line 491
    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto :goto_0

    .line 493
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 498
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_0

    .line 502
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 506
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->setFirstPriority()V

    goto :goto_0

    .line 510
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disableAllNetworks()V

    goto :goto_1

    .line 467
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 427
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 460
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 429
    .restart local p3
    :cond_1
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 433
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 435
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 436
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_2

    .line 438
    const/4 v1, 0x4

    const v2, 0x7f0c091a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_0

    .line 442
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->DISCONNECT_NETWORK:Z

    if-eqz v1, :cond_3

    .line 443
    const/16 v1, 0x8

    const v2, 0x7f0c0558

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 445
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const/4 v1, 0x5

    const v2, 0x7f0c091b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 448
    const/4 v1, 0x6

    const v2, 0x7f0c091c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 450
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->ENABLE_FIRST_PRIORITY:Z

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isFirstPriority()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const/4 v1, 0x7

    const v2, 0x7f0c05d6

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 584
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    if-nez v0, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 586
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 588
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 592
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 593
    new-instance v2, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 595
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v1

    .line 593
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 364
    .local v0, wifiIsEnabled:Z
    const/4 v1, 0x1

    const v2, 0x7f0c0918

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 368
    const/4 v1, 0x2

    const v2, 0x7f0c0916

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 371
    const/4 v1, 0x3

    const v2, 0x7f0c0919

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 375
    .end local v0           #wifiIsEnabled:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 376
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 349
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 351
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "WifiSettings"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    .line 357
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 395
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 422
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 397
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showIPTAlertDialog()V

    :cond_0
    :goto_1
    move v0, v7

    .line 404
    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    goto :goto_1

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v0, v7

    .line 409
    goto :goto_0

    .line 411
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_3

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0954

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    .line 420
    goto :goto_0

    .line 418
    :cond_3
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 338
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->onPause()V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 341
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 518
    instance-of v2, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    .line 519
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showIPTAlertDialog()V

    .line 553
    .end local p2
    :goto_0
    return v1

    .line 524
    .restart local p2
    :cond_0
    sget-boolean v2, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    if-eqz v2, :cond_1

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    invoke-interface {v2}, Lcom/htc/cw/ICWService;->queryCWState()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->setCWstate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_1
    :goto_1
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 546
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 527
    .restart local p2
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WifiSettings"

    const-string v3, "[C+W] queryCWState is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 551
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 296
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 299
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->onResume()V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    .line 311
    .local v0, configController:Lcom/android/settings/wifi/WifiConfigController;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->isKeyStoreSecurity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_2

    .line 314
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->certificatesIfReload()V

    .line 326
    .end local v0           #configController:Lcom/android/settings/wifi/WifiConfigController;
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 330
    return-void

    .line 316
    .restart local v0       #configController:Lcom/android/settings/wifi/WifiConfigController;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 317
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 388
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 391
    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1344
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1316
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1317
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1353
    :cond_0
    return-void
.end method

.method public showIPTAlertDialog()V
    .locals 3

    .prologue
    .line 1248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1249
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/IPTAlertDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1250
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1251
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1252
    return-void
.end method

.method public showWpsPbcDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)V
    .locals 3
    .parameter "type"
    .parameter "config"

    .prologue
    .line 1239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1240
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1241
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1242
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const-string v1, "config"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1244
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1245
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 5
    .parameter "configController"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 1148
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v1

    .line 1149
    .local v1, networkSetup:I
    packed-switch v1, :pswitch_data_0

    .line 1232
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1236
    return-void

    .line 1151
    :pswitch_0
    sget-object v2, Lcom/android/settings/wifi/WpsDialog;->PBC_DIALOG_TYPE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getWpsInfo()Landroid/net/wifi/WpsInfo;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->showWpsPbcDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)V

    goto :goto_0

    .line 1155
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getWpsInfo()Landroid/net/wifi/WpsInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto :goto_0

    .line 1158
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1160
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 1161
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    .line 1164
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 1169
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 1170
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    .line 1171
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto :goto_0

    .line 1175
    :cond_3
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_7

    .line 1176
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 1177
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1182
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isInvalidPassword()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1183
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1185
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 1186
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    goto/16 :goto_0

    .line 1189
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0

    .line 1192
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 1193
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    goto/16 :goto_0

    .line 1196
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 1200
    :cond_7
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1201
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 1202
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1203
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1205
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 1208
    :cond_9
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isWepSecurity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1209
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1211
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1212
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    .line 1213
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto/16 :goto_0

    .line 1218
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0

    .line 1221
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1222
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mTriggerConnectByUI:Z

    .line 1223
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto/16 :goto_0

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected updateAccessPoints()V
    .locals 7

    .prologue
    .line 647
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 649
    .local v4, wifiState:I
    packed-switch v4, :pswitch_data_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 652
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 653
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 654
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v5, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAccessPointsUpdated(Lcom/htc/preference/HtcPreferenceScreen;Ljava/util/Collection;)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 659
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 660
    const-string v5, "DeviceManager3LM"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v2

    .line 664
    .local v2, dm:Landroid/os/IDeviceManager3LM;
    :try_start_0
    iget-object v5, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/os/IDeviceManager3LM;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 667
    :catch_0
    move-exception v5

    goto :goto_1

    .line 671
    .end local v2           #dm:Landroid/os/IDeviceManager3LM;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 678
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    goto :goto_0

    .line 682
    :pswitch_2
    const v5, 0x7f0c090c

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 686
    :pswitch_3
    const v5, 0x7f0c091d

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
