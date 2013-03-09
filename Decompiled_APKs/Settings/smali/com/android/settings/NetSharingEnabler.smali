.class public Lcom/android/settings/NetSharingEnabler;
.super Ljava/lang/Object;
.source "NetSharingEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field protected static FOR_SPRINT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final HAS_WIMAX:Z = false

.field public static final IPTEnabled_Intent:Ljava/lang/String; = "com.htc.ipt.enabled"

.field private static final MSG_CHECK_DEPEND:I = 0x5

.field private static final MSG_CLOSING:I = 0x2

.field private static final MSG_DISABLED:I = 0x0

.field private static final MSG_DISABLE_FAIL:I = 0x4

.field private static final MSG_DISABLE_OK:I = 0x3

.field private static final MSG_ENABLED:I = 0x1

.field private static final MSG_ENABLE_FAIL:I = 0x2

.field private static final MSG_ENABLE_OK:I = 0x1

.field public static final NOTE_ML_DISABLE:Ljava/lang/String; = "com.htc.ml.disabled"

.field public static final NOTE_ML_ENABLE:Ljava/lang/String; = "com.htc.ml.enabled"

.field private static final TAG:Ljava/lang/String; = "NetSharing"

.field private static final TAG_Receiver:Ljava/lang/String; = "NetSharing_Receiver"

.field public static airplane:Z

.field public static alive:Z

.field protected static closing:Z

.field public static hotspotenabled:Z

.field private static mContext:Landroid/content/Context;

.field public static mobiledata:Z

.field protected static opening:Z

.field private static pause:Landroid/os/ConditionVariable;

.field protected static requestMHS:Z

.field public static wifienabled:Z

.field public static wimaxenabled:Z


# instance fields
.field DUN_ID:Ljava/lang/String;

.field ID_INDEX:I

.field KEY_APN_SELECTED_TYPE:Ljava/lang/String;

.field NAME_INDEX:I

.field PREFERDUN_URI:Landroid/net/Uri;

.field PREFERRED_DUN_URI:Ljava/lang/String;

.field TYPES_INDEX:I

.field apn_items:[Ljava/lang/String;

.field mApnSelectedIndex:I

.field private mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

.field mDunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDunNameItems:[Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field public mIDialog:Lcom/htc/widget/HtcAlertDialog;

.field mIsEnableMultipleDun:Z

.field mIsMVNO:Z

.field mKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/os/IHardwareService;

.field private mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

.field private status:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private tmpCommand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_WIMAX:Z

    sput-boolean v0, Lcom/android/settings/NetSharingEnabler;->HAS_WIMAX:Z

    .line 101
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->alive:Z

    .line 103
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 104
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z

    .line 105
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    .line 106
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->hotspotenabled:Z

    .line 107
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0004:Z

    sput-boolean v0, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    .line 110
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    .line 112
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->opening:Z

    .line 113
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->requestMHS:Z

    .line 120
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/settings/NetSharingEnabler;->pause:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v1, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    .line 100
    iput-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 102
    iput-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mService:Landroid/os/IHardwareService;

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/NetSharingEnabler;->tmpCommand:Z

    .line 117
    iput v1, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    .line 119
    iput-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 376
    new-instance v0, Lcom/android/settings/NetSharingEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NetSharingEnabler$2;-><init>(Lcom/android/settings/NetSharingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    new-instance v0, Lcom/android/settings/NetSharingEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NetSharingEnabler$3;-><init>(Lcom/android/settings/NetSharingEnabler;)V

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;

    .line 777
    const-string v0, "apn_selected_type"

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->KEY_APN_SELECTED_TYPE:Ljava/lang/String;

    .line 778
    iput v1, p0, Lcom/android/settings/NetSharingEnabler;->ID_INDEX:I

    .line 779
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/NetSharingEnabler;->TYPES_INDEX:I

    .line 780
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/NetSharingEnabler;->NAME_INDEX:I

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mKeyArray:Ljava/util/ArrayList;

    .line 783
    iput-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    .line 784
    const-string v0, "dun_id"

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->DUN_ID:Ljava/lang/String;

    .line 785
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    .line 786
    const-string v0, "content://telephony/carriers/preferdun"

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->PREFERRED_DUN_URI:Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->PREFERRED_DUN_URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->PREFERDUN_URI:Landroid/net/Uri;

    .line 789
    iput-boolean v1, p0, Lcom/android/settings/NetSharingEnabler;->mIsEnableMultipleDun:Z

    .line 791
    iput-boolean v1, p0, Lcom/android/settings/NetSharingEnabler;->mIsMVNO:Z

    .line 126
    const-string v0, "NetSharing"

    const-string v1, "NetSharingEnabler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object p2, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 128
    sput-object p1, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    .line 130
    const-string v0, "hardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mService:Landroid/os/IHardwareService;

    .line 131
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mService:Landroid/os/IHardwareService;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "NetSharing"

    const-string v1, "HardwareService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 134
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.startIS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "INTENT_STOP_IS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ipt.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    :cond_2
    sget-boolean v0, Lcom/android/settings/NetSharingEnabler;->HAS_WIMAX:Z

    if-eqz v0, :cond_3

    .line 157
    :cond_3
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ml.enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.ml.disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/NSReceiver;->BT:Z

    .line 165
    return-void
.end method

.method public static CheckThreeCondition()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 689
    const/4 v0, 0x0

    .line 692
    .local v0, a:Z
    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->HAS_WIMAX:Z

    if-eqz v3, :cond_2

    .line 693
    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 695
    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static CheckWiFi(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "mContext"
    .parameter "intent"

    .prologue
    .line 662
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 665
    .local v0, wifistate:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 666
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    .line 669
    :cond_0
    const-string v1, "NetSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi enabled change, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-boolean v1, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    return v1
.end method

.method public static CheckWimax(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 639
    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->HAS_WIMAX:Z

    if-eqz v3, :cond_0

    .line 648
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wimax_on"

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_1
    const-string v1, "NetSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wimax enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mobiledata = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    sget-boolean v1, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z

    return v1

    :cond_1
    move v1, v2

    .line 648
    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 651
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NetSharing"

    const-string v3, "wimax setting value not found exception"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sput-boolean v2, Lcom/android/settings/NetSharingEnabler;->wimaxenabled:Z

    goto :goto_1
.end method

.method public static Check_Type(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1084
    invoke-static {p0}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    sget-boolean v0, Lcom/android/settings/NSReceiver;->USB:Z

    .line 1090
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/settings/NSReceiver;->BT:Z

    goto :goto_0
.end method

.method public static GiveISNote(ZLandroid/content/Context;)V
    .locals 2
    .parameter "visible"
    .parameter "context"

    .prologue
    .line 1015
    if-eqz p1, :cond_1

    .line 1017
    if-eqz p0, :cond_0

    .line 1019
    const-string v0, "NetSharing"

    const-string v1, "send intent com.htc.is.enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.is.enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1049
    :goto_0
    return-void

    .line 1024
    :cond_0
    const-string v0, "NetSharing"

    const-string v1, "send intent com.htc.is.disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.is.disabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1029
    :cond_1
    const-string v0, "NetSharing"

    const-string v1, "null context to send intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private InitDunData()V
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1145
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1146
    return-void
.end method

.method public static ShowConnectionDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 1096
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    if-nez p1, :cond_0

    const v0, 0x7f0c0334

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0313

    new-instance v2, Lcom/android/settings/NetSharingEnabler$5;

    invoke-direct {v2}, Lcom/android/settings/NetSharingEnabler$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1103
    return-void

    .line 1096
    :cond_0
    const v0, 0x7f0c0335

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/NetSharingEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings/NetSharingEnabler;->tmpCommand:Z

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NetSharingEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/NetSharingEnabler;->setSelectedDunId(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/NetSharingEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    return-void
.end method

.method private fillDunList()V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1150
    invoke-direct {p0}, Lcom/android/settings/NetSharingEnabler;->InitDunData()V

    .line 1152
    const/4 v3, 0x0

    .line 1154
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1157
    .local v10, op:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/NetSharingEnabler;->mIsMVNO:Z

    .line 1159
    iget-boolean v0, p0, Lcom/android/settings/NetSharingEnabler;->mIsMVNO:Z

    if-nez v0, :cond_2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1172
    :goto_1
    sget-object v0, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "_id"

    aput-object v12, v2, v5

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1175
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1177
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1179
    iget v0, p0, Lcom/android/settings/NetSharingEnabler;->ID_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1180
    .local v6, Key:Ljava/lang/String;
    iget v0, p0, Lcom/android/settings/NetSharingEnabler;->TYPES_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1181
    .local v11, type:Ljava/lang/String;
    iget v0, p0, Lcom/android/settings/NetSharingEnabler;->NAME_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1182
    .local v9, name:Ljava/lang/String;
    const-string v0, "NetSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    if-eqz v11, :cond_0

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .end local v6           #Key:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 1157
    goto/16 :goto_0

    .line 1164
    :cond_2
    sget-object v0, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\' AND operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1193
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1195
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1197
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    .line 1199
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1201
    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v8

    .line 1199
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1208
    .end local v8           #j:I
    :cond_4
    return-void
.end method

.method private getSelectedDunIndex()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1212
    const/4 v8, 0x0

    .line 1213
    .local v8, name:Ljava/lang/String;
    const/4 v9, -0x1

    .line 1218
    .local v9, selectIndex:I
    sget-object v0, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler;->PREFERDUN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1221
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1223
    iget v0, p0, Lcom/android/settings/NetSharingEnabler;->NAME_INDEX:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1225
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1227
    invoke-direct {p0}, Lcom/android/settings/NetSharingEnabler;->fillDunList()V

    .line 1230
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1231
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    move v9, v7

    move v10, v9

    .line 1236
    .end local v9           #selectIndex:I
    .local v10, selectIndex:I
    :goto_1
    return v10

    .line 1230
    .end local v10           #selectIndex:I
    .restart local v9       #selectIndex:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v10, v9

    .line 1236
    .end local v9           #selectIndex:I
    .restart local v10       #selectIndex:I
    goto :goto_1
.end method

.method private popAPNList()V
    .locals 4

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/android/settings/NetSharingEnabler;->getSelectedDunIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/NetSharingEnabler;->mApnSelectedIndex:I

    .line 1253
    const-string v0, "NetSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popAPNList() Dun name items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1259
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    sget-object v1, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c032a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler;->mDunNameItems:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/NetSharingEnabler;->mApnSelectedIndex:I

    new-instance v3, Lcom/android/settings/NetSharingEnabler$8;

    invoke-direct {v3, p0}, Lcom/android/settings/NetSharingEnabler$8;-><init>(Lcom/android/settings/NetSharingEnabler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0314

    new-instance v2, Lcom/android/settings/NetSharingEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/NetSharingEnabler$7;-><init>(Lcom/android/settings/NetSharingEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 1294
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    .line 1295
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v0, :cond_0

    .line 1296
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static setNetSharing(ZLandroid/content/Context;)I
    .locals 11
    .parameter "on"
    .parameter "mContext"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 914
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 916
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz p0, :cond_6

    .line 919
    sget-boolean v8, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v8, :cond_1

    .line 921
    const/16 v8, -0x22

    invoke-virtual {v0, v8, v9, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v3

    .line 922
    .local v3, mMHSstatus:I
    if-eqz v3, :cond_0

    .line 923
    sput-boolean v6, Lcom/android/settings/NetSharingEnabler;->requestMHS:Z

    .line 924
    const/16 v8, -0x12

    invoke-virtual {v0, v8, v9, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v3

    .line 927
    :cond_0
    const-string v8, "NetSharing"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MHS status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    if-nez v3, :cond_4

    .line 932
    const-string v8, "NetSharing"

    const-string v9, "MHS subscribe"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .end local v3           #mMHSstatus:I
    :cond_1
    sput-boolean v6, Lcom/android/settings/NetSharingEnabler;->opening:Z

    .line 946
    :try_start_0
    const-string v8, "NetSharing"

    const-string v9, "Close PassThrough"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v8, "usbnet"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/net/usbnet/IUsbnetController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v4

    .line 948
    .local v4, mService:Lcom/htc/net/usbnet/IUsbnetController;
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I

    .line 951
    const-string v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 952
    .local v5, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v5}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 954
    const-string v8, "NetSharing"

    const-string v9, "Close Disk Drive"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v8, Lcom/android/settings/NetSharingEnabler$4;

    invoke-direct {v8}, Lcom/android/settings/NetSharingEnabler$4;-><init>()V

    invoke-virtual {v8}, Lcom/android/settings/NetSharingEnabler$4;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 969
    .end local v4           #mService:Lcom/htc/net/usbnet/IUsbnetController;
    .end local v5           #mountService:Landroid/os/storage/IMountService;
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/settings/NetSharingEnabler;->setPCType(Landroid/content/Context;)V

    .line 971
    sget-boolean v8, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 973
    invoke-static {v7, p1}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 975
    :cond_3
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v2

    .line 976
    .local v2, errorCode:I
    if-nez v2, :cond_5

    .line 977
    sput-boolean v6, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 978
    const-string v6, "NetSharing"

    const-string v8, "connect success"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1005
    .end local v2           #errorCode:I
    :goto_1
    return v6

    .line 936
    .restart local v3       #mMHSstatus:I
    :cond_4
    const-string v7, "NetSharing"

    const-string v8, "MHS not subscribe"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 962
    .end local v3           #mMHSstatus:I
    :catch_0
    move-exception v1

    .line 963
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "NetSharing"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Close PassThrough Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 964
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 965
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 982
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #errorCode:I
    :cond_5
    const-string v7, "NetSharing"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect fail:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 991
    .end local v2           #errorCode:I
    :cond_6
    sget-boolean v8, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v8, :cond_7

    .line 992
    sput-boolean v6, Lcom/android/settings/NetSharingEnabler;->closing:Z

    .line 993
    :cond_7
    sput-boolean v7, Lcom/android/settings/NetSharingEnabler;->opening:Z

    .line 995
    sget-boolean v8, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v8, :cond_8

    .line 996
    const/16 v8, -0x42

    invoke-virtual {v0, v8, v9, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 999
    :cond_8
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v8

    if-nez v8, :cond_9

    .line 1000
    const-string v6, "NetSharing"

    const-string v8, "disconnect success"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1001
    goto :goto_1

    .line 1004
    :cond_9
    const-string v7, "NetSharing"

    const-string v8, "disconnect fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setPCType(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1303
    const-string v1, "internet_sharing"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_type"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1304
    .local v0, type:I
    invoke-static {p0, v0}, Lcom/android/settings/NetSharingTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 1305
    return-void
.end method

.method private setSelectedDunId(I)V
    .locals 5
    .parameter "buttonIdx"

    .prologue
    const/4 v4, 0x0

    .line 1242
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1243
    .local v0, key:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1244
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1245
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->DUN_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->PREFERDUN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1247
    return-void
.end method

.method protected static stopML(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1135
    invoke-static {v0, p0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 1136
    invoke-static {v0, p0}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 1137
    invoke-static {v0, p0}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 1138
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 1139
    return-void
.end method

.method private toggleISState(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/android/settings/NetSharingEnabler;->tmpCommand:Z

    .line 315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/NetSharingEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/NetSharingEnabler$1;-><init>(Lcom/android/settings/NetSharingEnabler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method

.method private toggleMLState(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 1107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/NetSharingEnabler$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/NetSharingEnabler$6;-><init>(Lcom/android/settings/NetSharingEnabler;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1131
    return-void
.end method

.method public static unmountAsUsbStorage()V
    .locals 4

    .prologue
    .line 1052
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1053
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 1055
    const-string v2, "NetSharing"

    const-string v3, "17040383"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_0
    return-void

    .line 1070
    :cond_0
    :try_start_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 1073
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1075
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetSharing"

    const-string v3, "17040383"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    const/high16 v9, 0x1800

    const v8, 0x7f0c030f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 797
    iget v4, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 799
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 801
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_4

    .line 802
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 803
    const-string v4, "netshare"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v4, :cond_1

    .line 818
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 820
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 823
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 825
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.usbtethering.warning_acg"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .local v2, mintent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 827
    const-string v4, "is_dialog_code"

    const/4 v5, 0x7

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 829
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 830
    invoke-direct {p0, v7}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    .line 906
    .end local v2           #mintent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return v7

    .line 806
    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .restart local p2
    :cond_3
    :try_start_1
    const-string v4, "netshare"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 811
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 812
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "NetSharing"

    const-string v5, "RemoteException from "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 809
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :try_start_2
    const-string v4, "NetSharing"

    const-string v5, "Unable to find ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 832
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local p2
    :cond_5
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v4, :cond_7

    :cond_6
    sget-boolean v4, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-eqz v4, :cond_7

    .line 833
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.ISActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 834
    .restart local v2       #mintent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 835
    const-string v4, "is_dialog_code"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 839
    .end local v2           #mintent:Landroid/content/Intent;
    :cond_7
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa1

    if-ne v4, v5, :cond_8

    .line 841
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.ISActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 842
    .restart local v2       #mintent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 843
    const-string v4, "is_dialog_code"

    const/16 v5, 0x9

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 846
    .end local v2           #mintent:Landroid/content/Intent;
    :cond_8
    const-string v4, "ro.cid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ORANG202"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 849
    invoke-direct {p0}, Lcom/android/settings/NetSharingEnabler;->popAPNList()V

    goto :goto_1

    .line 854
    :cond_9
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v4, :cond_c

    .line 856
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/NetSharingEnabler;->Check_Type(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 857
    sget-object v4, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 858
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_a

    .line 860
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 861
    invoke-direct {p0, v7}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    goto/16 :goto_1

    .line 865
    :cond_a
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 866
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 867
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/ModemLinkEnabler;->setMLInterface(I)V

    .line 868
    invoke-direct {p0, v7}, Lcom/android/settings/NetSharingEnabler;->toggleMLState(Z)V

    .line 869
    sget-object v4, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 874
    :cond_b
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/NetSharingEnabler;->ShowConnectionDialog(Landroid/content/Context;I)V

    .line 875
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 880
    :cond_c
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 881
    invoke-direct {p0, v7}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    .line 882
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v4, :cond_2

    .line 883
    sget-object v4, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 890
    :cond_d
    iget-object v4, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    const v5, 0x7f0c0310

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 892
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v4, :cond_f

    .line 894
    sget-object v4, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_e

    .line 895
    invoke-direct {p0, v6}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    .line 898
    :goto_2
    sget-object v4, Lcom/android/settings/ModemLinkTypeEnabler;->mToggleMLType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 897
    :cond_e
    invoke-direct {p0, v6}, Lcom/android/settings/NetSharingEnabler;->toggleMLState(Z)V

    goto :goto_2

    .line 900
    :cond_f
    invoke-direct {p0, v6}, Lcom/android/settings/NetSharingEnabler;->toggleISState(Z)V

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 299
    sget-boolean v1, Lcom/android/settings/NetSharingEnabler;->alive:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 302
    :try_start_0
    sget-object v1, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NetSharingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/NetSharingEnabler;->alive:Z

    .line 309
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetSharing"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 171
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    .line 172
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    iput v3, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    .line 177
    :cond_0
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    if-nez v3, :cond_1

    .line 179
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/HtcIfDevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 181
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mDPM:Landroid/app/admin/HtcIfDevicePolicyManager;

    invoke-interface {v3, v9}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v2

    .line 184
    .local v2, status:I
    if-nez v2, :cond_5

    .line 185
    sput-boolean v4, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 188
    :goto_0
    const-string v3, "NetSharing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EAS Allow IS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v2           #status:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 194
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/NetSharingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/settings/NetSharingEnabler;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sput-boolean v5, Lcom/android/settings/NetSharingEnabler;->alive:Z

    .line 198
    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-eqz v3, :cond_6

    .line 199
    iput v8, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    .line 216
    :goto_1
    const-string v3, "NetSharing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v3, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    packed-switch v3, :pswitch_data_0

    .line 251
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_13

    iget v3, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    if-eqz v3, :cond_13

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, sim:Z
    const-string v3, "NetSharing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phonyType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sim_state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget v3, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/android/settings/NetSharingEnabler;->mPhoneType:I

    if-ne v3, v8, :cond_10

    .line 257
    :cond_3
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_f

    move v1, v5

    .line 261
    :goto_3
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 262
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v3, "NetSharing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz v1, :cond_4

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v3, :cond_12

    :cond_4
    sput-boolean v4, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 265
    :goto_4
    const-string v3, "NetSharing"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobiledata:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #sim:Z
    :goto_5
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/NetSharingEnabler;->CheckWimax(Landroid/content/Context;)Z

    .line 294
    return-void

    .line 187
    .restart local v2       #status:I
    :cond_5
    sput-boolean v5, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto/16 :goto_0

    .line 200
    .end local v2           #status:I
    :cond_6
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v3, :cond_a

    .line 202
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 203
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 204
    :cond_7
    sget-boolean v3, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->opening:Z

    if-eqz v3, :cond_9

    :cond_8
    move v3, v5

    :goto_6
    iput v3, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    goto/16 :goto_1

    :cond_9
    move v3, v4

    goto :goto_6

    .line 209
    :cond_a
    sget-object v3, Lcom/android/settings/NetSharingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_d

    .line 210
    sget-boolean v3, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/android/settings/NetSharingEnabler;->opening:Z

    if-eqz v3, :cond_c

    :cond_b
    move v3, v5

    :goto_7
    iput v3, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    goto/16 :goto_1

    :cond_c
    move v3, v4

    goto :goto_7

    .line 212
    :cond_d
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v5

    :goto_8
    iput v3, p0, Lcom/android/settings/NetSharingEnabler;->status:I

    goto/16 :goto_1

    :cond_e
    move v3, v4

    goto :goto_8

    .line 229
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 230
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->SENSE_30_SUPPORT:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 232
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    const v6, 0x7f0c0329

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 236
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 241
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    const v6, 0x7f0c0310

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 243
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 247
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .restart local v1       #sim:Z
    :cond_f
    move v1, v4

    .line 257
    goto/16 :goto_3

    .line 259
    :cond_10
    iget-object v3, p0, Lcom/android/settings/NetSharingEnabler;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move v1, v5

    :goto_9
    goto/16 :goto_3

    :cond_11
    move v1, v4

    goto :goto_9

    .line 264
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    goto/16 :goto_4

    .line 270
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #sim:Z
    :cond_13
    const-string v3, "NetSharing"

    const-string v4, "null telephonymanager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
