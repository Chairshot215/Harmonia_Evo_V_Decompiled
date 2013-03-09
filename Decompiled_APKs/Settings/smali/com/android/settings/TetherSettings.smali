.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final CONFIG_SUBTEXT:I = 0x7f0c0978

.field private static final DIALOG_AP_SETTINGS:I = 0x2

.field private static final DIALOG_TETHER_HELP:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final KEY_HOTSPOT_SETTINGS:Ljava/lang/String; = "hotspot_settings"

.field private static final KEY_TOGGLE_MODEMLINK:Ljava/lang/String; = "toggle_modemlink"

.field private static final KEY_TOGGLE_MODEMLINK_TYPE:Ljava/lang/String; = "toggle_modemlink_type"

.field private static final KEY_TOGGLE_NETSHARING:Ljava/lang/String; = "toggle_netsharing"

.field private static final KEY_TOGGLE_NETSHARING_TYPE:Ljava/lang/String; = "toggle_netsharing_type"

.field private static final MHS_REQUEST:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"

.field protected static customizedML:Ljava/lang/Boolean;

.field protected static customizedNS:Ljava/lang/Boolean;


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCreateNetwork:Lcom/htc/preference/HtcPreference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mMLEnabler:Lcom/android/settings/ModemLinkEnabler;

.field private mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

.field private mMassStorageActive:Z

.field private mNSEnabler:Lcom/android/settings/NetSharingEnabler;

.field private mNSTypeEnabler:Lcom/android/settings/NetSharingTypeEnabler;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 90
    const-string v0, "TetherSettings"

    sput-object v0, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 385
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->turnOnBluetoothTethering()V

    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 849
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 850
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 851
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 852
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x0

    .line 855
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 854
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 758
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 759
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 760
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 765
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 759
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 765
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 366
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 367
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 370
    const-string v1, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    .line 372
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    .line 373
    const v1, 0x10403de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 383
    :cond_0
    return-void
.end method

.method private static loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 794
    const/4 v1, 0x0

    .line 796
    .local v1, uri:Landroid/net/Uri;
    const-string v6, "TetherSettings"

    .line 798
    .local v6, TAG:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-object v2

    .line 801
    :cond_1
    if-eqz p1, :cond_0

    .line 804
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 808
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 809
    const-string v0, "Failed to get cursor"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 814
    const-string v0, "cursor size is 0"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 819
    :cond_3
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 820
    .local v11, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v11, :cond_4

    .line 821
    const-string v0, "no customized data support"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 825
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 827
    const/4 v9, 0x0

    .line 828
    .local v9, data:[B
    const/4 v7, 0x0

    .line 831
    .local v7, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 832
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 837
    if-eqz v8, :cond_5

    .line 838
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 839
    :goto_1
    const/4 v8, 0x0

    :cond_5
    move-object v2, v7

    .line 843
    goto :goto_0

    .line 833
    :catch_0
    move-exception v10

    .line 834
    .local v10, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load customize URI failed, get exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    const/4 v7, 0x0

    .line 837
    if-eqz v8, :cond_5

    .line 838
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 837
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 838
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 839
    const/4 v8, 0x0

    .line 837
    :cond_6
    throw v0
.end method

.method protected static readCustomizationData(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0xd8

    const/16 v9, 0xa8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 860
    const-string v0, "TetherSettings"

    .line 861
    .local v0, TAG:Ljava/lang/String;
    const-string v4, "WirelessSettings"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 864
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "isCustomized"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v4, v5, :cond_8

    .line 867
    const-string v4, "content://customization_settings/SettingTable/system_Settings"

    const/4 v7, 0x0

    invoke-static {p0, v4, v7}, Lcom/android/settings/TetherSettings;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 869
    .local v1, bdl:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 871
    const-string v4, "customized_value"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 873
    .local v2, bdlsettings:Landroid/os/Bundle;
    if-eqz v2, :cond_6

    .line 875
    const-string v4, "has_netsharing"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 876
    const-string v4, "has_modemlink"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 879
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v4, :cond_0

    .line 880
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 881
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 884
    :cond_0
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v4, :cond_1

    .line 885
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 886
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 892
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIE NS:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "SIE ML"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    .end local v2           #bdlsettings:Landroid/os/Bundle;
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "isCustomized"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 909
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "customizedNS"

    sget-object v8, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "customizedML"

    sget-object v8, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    .end local v1           #bdl:Landroid/os/Bundle;
    :goto_1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xad

    if-ne v4, v7, :cond_4

    .line 920
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 921
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 923
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CustomizedNS:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " CustomizedML:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    sget-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v9, :cond_9

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    .line 925
    sget-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v10, :cond_a

    :cond_5
    move v4, v6

    :goto_3
    sput-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    .line 928
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v4, v9, :cond_b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v4, v10, :cond_b

    :goto_4
    sput-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LAN Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ML Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IS Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS_ML:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-void

    .line 896
    .restart local v1       #bdl:Landroid/os/Bundle;
    .restart local v2       #bdlsettings:Landroid/os/Bundle;
    :cond_6
    const-string v4, "no SIE value"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v4, :cond_7

    .line 899
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    .line 900
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 903
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 904
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 914
    .end local v1           #bdl:Landroid/os/Bundle;
    .end local v2           #bdlsettings:Landroid/os/Bundle;
    :cond_8
    const-string v4, "customizedNS"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    .line 915
    const-string v4, "customizedML"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_9
    move v4, v6

    .line 924
    goto/16 :goto_2

    :cond_a
    move v4, v5

    .line 925
    goto/16 :goto_3

    :cond_b
    move v5, v6

    .line 928
    goto/16 :goto_4
.end method

.method private showWarningDialog()V
    .locals 5

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040042

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 720
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 721
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 722
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 724
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0325

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0313

    new-instance v4, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0314

    new-instance v4, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 741
    return-void
.end method

.method private turnOnBluetoothTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 745
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 746
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 747
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 748
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 749
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0c07d9

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 750
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 755
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 753
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0c0a81

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 596
    const/4 v5, 0x0

    .line 597
    .local v5, bluetoothTethered:I
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v12, v2, v8

    .line 598
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v3, v7

    .line 599
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 598
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 597
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 602
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 603
    .local v4, bluetoothErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v12, v2, v8

    .line 604
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v11, v3, v7

    .line 605
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 604
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 603
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_2

    .line 609
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 610
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 611
    .local v6, btState:I
    const/16 v14, 0xd

    if-ne v6, v14, :cond_6

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v15, 0x7f0c090c

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 636
    :goto_4
    return-void

    .line 614
    :cond_6
    const/16 v14, 0xb

    if-ne v6, v14, :cond_7

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v15, 0x7f0c07d9

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 617
    :cond_7
    const/16 v14, 0xc

    if-ne v6, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 620
    const/4 v14, 0x1

    if-le v5, v14, :cond_8

    .line 621
    const v14, 0x7f0c0a83

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 623
    .local v13, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14, v13}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 624
    .end local v13           #summary:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x1

    if-ne v5, v14, :cond_9

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v15, 0x7f0c0a82

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 626
    :cond_9
    if-eqz v4, :cond_a

    .line 627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v15, 0x7f0c0a85

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 629
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v15, 0x7f0c0a81

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 632
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v15, 0x7f0c0a84

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 547
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 550
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 558
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 559
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 565
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 567
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 568
    .local v9, usbAvailable:Z
    :goto_0
    const/4 v10, 0x0

    .line 569
    .local v10, usbError:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 570
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 571
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 572
    if-nez v10, :cond_0

    .line 573
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 570
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 567
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #usbAvailable:Z
    .end local v10           #usbError:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 569
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #usbAvailable:Z
    .restart local v10       #usbError:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 578
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 579
    .local v12, usbTethered:Z
    move-object/from16 v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 580
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 581
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 580
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 579
    .end local v7           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 584
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 585
    .local v11, usbErrored:Z
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 586
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 587
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 586
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 585
    .end local v7           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_5

    .line 592
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 659
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 660
    if-nez p1, :cond_0

    .line 661
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)Z

    .line 665
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 769
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 771
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 778
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 779
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v11, 0x7f05003f

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    .line 156
    .local v5, parent:Lcom/htc/preference/HtcPreferenceGroup;
    sget-object v11, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 157
    const-string v4, "toggle_netsharing"

    .line 161
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 163
    .local v6, target:Lcom/htc/preference/HtcPreference;
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-nez v11, :cond_0

    .line 166
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 167
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 171
    :cond_0
    const-string v11, "toggle_netsharing"

    if-eq v4, v11, :cond_1

    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    .line 173
    :cond_1
    const-string v11, "toggle_netsharing_type"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 174
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 175
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 178
    :cond_2
    const-string v11, "toggle_modemlink"

    if-eq v4, v11, :cond_3

    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-nez v11, :cond_4

    :cond_3
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v11, :cond_4

    .line 180
    sget-object v11, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    const-string v12, "remove type"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v11, "toggle_modemlink_type"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 182
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 183
    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 186
    :cond_4
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_5

    .line 188
    const-string v11, "toggle_netsharing"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 189
    .local v7, targetPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    .line 191
    const v11, 0x7f0c030d

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 195
    .end local v7           #targetPreference:Lcom/htc/preference/HtcPreference;
    :cond_5
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v11, :cond_6

    .line 198
    const-string v11, "toggle_modemlink"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 199
    .restart local v7       #targetPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 201
    const v11, 0x7f0c032e

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 202
    const v11, 0x7f0c032f

    invoke-virtual {v7, v11}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 207
    .end local v7           #targetPreference:Lcom/htc/preference/HtcPreference;
    :cond_6
    sget-object v11, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_7

    .line 208
    const-string v11, "toggle_netsharing"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    .line 209
    .restart local v7       #targetPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    .line 210
    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    .end local v7           #targetPreference:Lcom/htc/preference/HtcPreference;
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 214
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_8

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v13, 0x5

    invoke-virtual {v1, v11, v12, v13}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 219
    :cond_8
    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 221
    const-string v11, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    .line 222
    .local v9, wifiApSettings:Lcom/htc/preference/HtcPreference;
    const-string v11, "enable_bluetooth_tethering"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 223
    const-string v11, "tethering_help"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

    .line 226
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v5, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 228
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 231
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 232
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 233
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 235
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_f

    const/4 v8, 0x1

    .line 236
    .local v8, usbAvailable:Z
    :goto_1
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_10

    const/4 v10, 0x1

    .line 237
    .local v10, wifiAvailable:Z
    :goto_2
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_11

    const/4 v2, 0x1

    .line 241
    .local v2, bluetoothAvailable:Z
    :goto_3
    if-eqz v10, :cond_16

    .line 242
    new-instance v11, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v12, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v11, v0, v12}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 243
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 246
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x94

    if-ne v11, v12, :cond_12

    .line 247
    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 248
    const v11, 0x7f0c04c4

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 249
    const-string v11, "hotspot_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 250
    const v11, 0x7f0c04cd

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 282
    :cond_9
    :goto_4
    if-nez v2, :cond_18

    .line 283
    if-eqz v5, :cond_a

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_a

    .line 284
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 299
    :cond_a
    :goto_5
    sget-object v11, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "is = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ml = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v11, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 302
    new-instance v12, Lcom/android/settings/NetSharingEnabler;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v11, "toggle_netsharing"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v12, v13, v11}, Lcom/android/settings/NetSharingEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/TetherSettings;->mNSEnabler:Lcom/android/settings/NetSharingEnabler;

    .line 303
    sget-object v11, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    const-string v12, "NSenabler"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v11, :cond_b

    sget-object v11, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 305
    new-instance v11, Lcom/android/settings/NetSharingTypeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "toggle_netsharing_type"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/settings/NetSharingTypeEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mNSTypeEnabler:Lcom/android/settings/NetSharingTypeEnabler;

    .line 306
    :cond_b
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v11, :cond_c

    .line 307
    new-instance v11, Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "toggle_modemlink_type"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/settings/ModemLinkTypeEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

    .line 309
    :cond_c
    sget-object v11, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 310
    new-instance v12, Lcom/android/settings/ModemLinkEnabler;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v11, "toggle_modemlink"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    check-cast v11, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v12, v13, v11}, Lcom/android/settings/ModemLinkEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V

    iput-object v12, p0, Lcom/android/settings/TetherSettings;->mMLEnabler:Lcom/android/settings/ModemLinkEnabler;

    .line 311
    sget-object v11, Lcom/android/settings/TetherSettings;->TAG:Ljava/lang/String;

    const-string v12, "MLenabler"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-boolean v11, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-eqz v11, :cond_d

    .line 313
    new-instance v11, Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "toggle_modemlink_type"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/settings/ModemLinkTypeEnabler;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V

    iput-object v11, p0, Lcom/android/settings/TetherSettings;->mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

    .line 319
    :cond_d
    return-void

    .line 159
    .end local v1           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #bluetoothAvailable:Z
    .end local v3           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #target:Lcom/htc/preference/HtcPreference;
    .end local v8           #usbAvailable:Z
    .end local v9           #wifiApSettings:Lcom/htc/preference/HtcPreference;
    .end local v10           #wifiAvailable:Z
    :cond_e
    const-string v4, "toggle_modemlink"

    goto/16 :goto_0

    .line 235
    .restart local v1       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v3       #cm:Landroid/net/ConnectivityManager;
    .restart local v6       #target:Lcom/htc/preference/HtcPreference;
    .restart local v9       #wifiApSettings:Lcom/htc/preference/HtcPreference;
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 236
    .restart local v8       #usbAvailable:Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 237
    .restart local v10       #wifiAvailable:Z
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 251
    .restart local v2       #bluetoothAvailable:Z
    :cond_12
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xa8

    if-ne v11, v12, :cond_13

    .line 252
    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 253
    const v11, 0x7f0c04c2

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 254
    const-string v11, "hotspot_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 255
    const v11, 0x7f0c04cb

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_4

    .line 256
    :cond_13
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x9b

    if-ne v11, v12, :cond_14

    .line 257
    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 258
    const v11, 0x7f0c04c3

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 259
    const-string v11, "hotspot_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 260
    const v11, 0x7f0c04cc

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_4

    .line 261
    :cond_14
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x51

    if-ne v11, v12, :cond_15

    .line 262
    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 263
    const v11, 0x7f0c04c5

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 264
    const v11, 0x7f0c04c9

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 265
    const-string v11, "hotspot_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 266
    const v11, 0x7f0c04ce

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_4

    .line 267
    :cond_15
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x38

    if-ne v11, v12, :cond_9

    .line 268
    const-string v11, "enable_wifi_ap"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 269
    const v11, 0x7f0c04c6

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 270
    const-string v11, "hotspot_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    .line 271
    const v11, 0x7f0c04cf

    invoke-virtual {v6, v11}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_4

    .line 276
    :cond_16
    if-eqz v5, :cond_9

    .line 277
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v11}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 278
    :cond_17
    if-eqz v9, :cond_9

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_4

    .line 287
    :cond_18
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 288
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 290
    :cond_19
    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 445
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 447
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 448
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 451
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
    .line 346
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 349
    sget-object v0, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mNSEnabler:Lcom/android/settings/NetSharingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NetSharingEnabler;->pause()V

    .line 351
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mNSTypeEnabler:Lcom/android/settings/NetSharingTypeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NetSharingTypeEnabler;->pause()V

    .line 353
    :cond_0
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->pause()V

    .line 356
    :cond_1
    sget-object v0, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mMLEnabler:Lcom/android/settings/ModemLinkEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ModemLinkEnabler;->pause()V

    .line 358
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->pause()V

    .line 362
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 639
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 640
    .local v1, enable:Z
    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, appDetails:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 646
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)Z

    .line 655
    .end local v0           #appDetails:[Ljava/lang/String;
    :goto_0
    return v5

    .line 648
    .restart local v0       #appDetails:[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, intent:Landroid/content/Intent;
    aget-object v3, v0, v5

    aget-object v4, v0, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 653
    .end local v0           #appDetails:[Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 669
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 682
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v6, :cond_5

    .line 683
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    .line 685
    .local v1, bluetoothTetherState:Z
    if-eqz v1, :cond_2

    .line 686
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa1

    if-ne v5, v6, :cond_1

    .line 687
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->showWarningDialog()V

    .line 715
    .end local v1           #bluetoothTetherState:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v5

    :goto_1
    return v5

    .line 689
    .restart local v1       #bluetoothTetherState:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->turnOnBluetoothTethering()V

    goto :goto_0

    .line 692
    :cond_2
    const/4 v3, 0x0

    .line 694
    .local v3, errored:Z
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 695
    .local v4, tethered:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, bluetoothIface:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 698
    const/4 v3, 0x1

    .line 701
    :cond_3
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 702
    if-eqz v3, :cond_4

    .line 703
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v6, 0x7f0c0a85

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 705
    :cond_4
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Lcom/htc/preference/HtcCheckBoxPreference;

    const v6, 0x7f0c0a84

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 708
    .end local v0           #bluetoothIface:Ljava/lang/String;
    .end local v1           #bluetoothTetherState:Z
    .end local v3           #errored:Z
    .end local v4           #tethered:[Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p2, v6, :cond_6

    .line 709
    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_1

    .line 711
    :cond_6
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Lcom/htc/preference/HtcPreference;

    if-ne p2, v5, :cond_0

    .line 712
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 326
    sget-object v0, Lcom/android/settings/TetherSettings;->customizedNS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mNSEnabler:Lcom/android/settings/NetSharingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NetSharingEnabler;->resume()V

    .line 328
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mNSTypeEnabler:Lcom/android/settings/NetSharingTypeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NetSharingTypeEnabler;->resume()V

    .line 330
    :cond_0
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->resume()V

    .line 333
    :cond_1
    sget-object v0, Lcom/android/settings/TetherSettings;->customizedML:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mMLEnabler:Lcom/android/settings/ModemLinkEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ModemLinkEnabler;->resume()V

    .line 336
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_ML_TYPE:Z

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mMLTypeEnabler:Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->resume()V

    .line 342
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 503
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 507
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 508
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 510
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 512
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 513
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 520
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 523
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 526
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_1

    .line 528
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 529
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 532
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 533
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 539
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 544
    :cond_0
    return-void
.end method
