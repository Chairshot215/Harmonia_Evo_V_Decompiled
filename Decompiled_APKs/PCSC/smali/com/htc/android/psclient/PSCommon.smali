.class public Lcom/htc/android/psclient/PSCommon;
.super Ljava/lang/Object;
.source "PSCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;,
        Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_MEDIASYNC:Ljava/lang/String; = "com.htc.mtp.SYNC_FILE"

.field public static final ACTION_USB_CONNECT2PC:Ljava/lang/String; = "android.hardware.usb.action.USB_CONNECT2PC"

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final DESKDOCK_ASK_ME:Ljava/lang/String; = "deskdock_ask_me"

.field public static final DESKDOCK_CONNECTION_TYPE:Ljava/lang/String; = "deskdock_connection_type"

.field public static final DOWNLOAD_STATUS_DOWNLOADING:I = 0x1

.field public static final DOWNLOAD_STATUS_FAILED:I = 0x2

.field public static final DOWNLOAD_STATUS_NONE:I = 0x0

.field public static final DOWNLOAD_STATUS_SUCCESSED:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_INTERNET_SHARING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final FEATURE_MODEM_LINK:Z = false

.field public static final INTENT_BATTERY_CHANGE:Ljava/lang/String; = "com.htc.usb.change"

.field public static final INTENT_CHARGEONLY:Ljava/lang/String; = "INTENT_CHARGEONLY"

.field public static final INTENT_CHARGEONLY_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_CHARGEONLY_FOR_EXTERNAL_APP"

.field public static final INTENT_CLOSE_BY_TIMEOUT:Ljava/lang/String; = "INTENT_CLOSE_BY_TIMEOUT"

.field public static final INTENT_CLOSE_BY_USB_DISCONNECT:Ljava/lang/String; = "INTENT_CLOSE_BY_USB_DISCONNECT"

.field private static final INTENT_DEFAULT_TYPE_CHANGE_NOTIFY_FROM_CONNECT_TO_PC:Ljava/lang/String; = "default_type_change_notify_from_connect_to_pc"

.field public static final INTENT_DISK:Ljava/lang/String; = "INTENT_DISK"

.field public static final INTENT_DISK_DRIVE_SHOW_ME:Ljava/lang/String; = "topic_tag-connections_computer-copy_files"

.field public static final INTENT_DISK_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_DISK_FOR_EXTERNAL_APP"

.field public static final INTENT_DONTASK_CHECKED:Ljava/lang/String; = "INTENT_DONTASK_CHECKED"

.field public static final INTENT_DONTASK_UNCHECKED:Ljava/lang/String; = "INTENT_DONTASK_UNCHECKED"

.field public static final INTENT_HTCSYNC:Ljava/lang/String; = "INTENT_HTCSYNC"

.field public static final INTENT_HTCSYNC_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_HTCSYNC_FOR_EXTERNAL_APP"

.field public static final INTENT_INTERNETPASSTHROUGH:Ljava/lang/String; = "INTENT_INTERNETPASSTHROUGH"

.field public static final INTENT_INTERNETPASSTHROUGH_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_INTERNETPASSTHROUGH_FOR_EXTERNAL_APP"

.field public static final INTENT_INTERNETSHARING:Ljava/lang/String; = "INTENT_INTERNETSHARING"

.field public static final INTENT_INTERNETSHARING_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_INTERNETSHARING_FOR_EXTERNAL_APP"

.field public static final INTENT_MEDIASYNC:Ljava/lang/String; = "INTENT_MEDIASYNC"

.field public static final INTENT_MEDIASYNC_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_MEDIASYNC_FOR_EXTERNAL_APP"

.field public static final INTENT_MODEMLINK:Ljava/lang/String; = "INTENT_MODEMLINK"

.field public static final INTENT_MODEMLINK_FOR_EXTERNAL_APP:Ljava/lang/String; = "INTENT_MODEMLINK_FOR_EXTERNAL_APP"

.field public static final INTENT_NETWORKSHARING_OFF:Ljava/lang/String; = "com.htc.android.ackISOFF"

.field public static final INTENT_OPTION_CHANGED:Ljava/lang/String; = "INTENT_OPTION_CHANGED"

.field public static final INTENT_USBCONNECTIONSETTINGS:Ljava/lang/String; = "INTENT_USBCONNECTIONSETTINGS"

.field public static final INTENT_USB_TETHERING_SHOW_ME:Ljava/lang/String; = "topic_tag-connections_internet-tethering"

.field public static final KEY_ASK_ME:Ljava/lang/String; = "ask_me"

.field public static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connection_type"

.field public static final KEY_IS_INTERNET_SHARING_AVALIABLE_BY_EAS_POLICY:Ljava/lang/String; = "is_internet_sharing_avaliable_by_eas_policy"

.field public static final OFR_CID:Ljava/lang/String; = "ORANG202"

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field public static final ROSIE_COMPLETE_STARTING:Ljava/lang/String; = "rosie_complete_starting"

.field private static final TAG:Ljava/lang/String; = "PSCommon"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_SWITCH_MTP_OFF:Ljava/lang/String; = "com.htc.android.stop_MTP"

.field public static final USB_SWITCH_MTP_ON:Ljava/lang/String; = "com.htc.android.start_MTP"

.field public static final chargeOnly:Ljava/lang/String; = "Charge Only"

.field private static customizedML:Z = false

.field private static customizedNS:Z = false

.field private static customizedUsbToPC:Z = false

.field public static debug:Z = false

.field public static final diskDrive:Ljava/lang/String; = "Disk Drive"

.field public static final dockCableConnect:Ljava/lang/String; = "status"

.field public static final dockDefaultType:Ljava/lang/String; = "dock_default_type"

.field public static final dockDontAsk:Ljava/lang/String; = "dock_dont_ask"

.field public static final dockFilePath:Ljava/lang/String; = "/sys/class/switch/dock/"

.field public static final dockPrevType:Ljava/lang/String; = "dock_previous_type"

.field public static final dongleCableConnect:Ljava/lang/String; = "state"

.field public static final dongleFilePath:Ljava/lang/String; = "/sys/class/switch/dock/"

.field public static final htcSync:Ljava/lang/String; = "HTC Sync"

.field public static final internetPassThrough:Ljava/lang/String; = "Internet Pass Through"

.field public static final internetSharing:Ljava/lang/String; = "Internet Sharing"

.field public static isChargeOrDiskSelected:Z = false

.field public static final isDeviceLocked:Ljava/lang/String; = "isDeviceLocked"

.field public static final isFotaInitialized_ICS_35:Ljava/lang/String; = "isFotaInitialized_ICS_35"

.field public static isFunctionLaunched:Z = false

.field public static final isHotspotEnabled:Ljava/lang/String; = "isHotspotEnabled"

.field public static isNSStopped:Z = false

.field public static isScreenLockAndStopMountingDisk:Z = false

.field public static final mCmdFromSwitchUsbSettings:I = 0x2

.field public static final mCmdFromUsbConnectedReceiver:I = 0x3

.field public static final mCmdFromUsbConnectionSettings:I = 0x1

.field public static mConnectedMode:I = 0x0

.field public static final mDisconnected:I = 0x0

.field public static final mDockMode:I = 0x1

.field public static final mDockToPC:I = 0x2

.field public static final mUsbMode:I = 0x0

.field public static final mUsbToPC:I = 0x1

.field public static final mediaSync:Ljava/lang/String; = "Media Sync"

.field public static final modemLink:Ljava/lang/String; = "Modem link"

.field public static final noType:Ljava/lang/String; = "No Type"

.field public static pause:Landroid/os/ConditionVariable; = null

.field public static final pauseInterval:I = 0x1

.field public static final prefName:Ljava/lang/String; = "pimSyncPref"

.field public static final receiverPermission:Ljava/lang/String; = "android.htc.connect_to_pc.permission.INTENT"

.field public static final startInternetPassThrough:Ljava/lang/String; = "com.htc.android.start_IPT"

.field public static final startModemLink:Ljava/lang/String; = "com.htc.android.startML"

.field public static final startNetworkSharing:Ljava/lang/String; = "com.htc.android.startIS"

.field public static final stopInternetPassThrough:Ljava/lang/String; = "com.htc.android.stop_IPT"

.field public static final stopModemLink:Ljava/lang/String; = "com.htc.android.stopML"

.field public static final stopNetworkSharing:Ljava/lang/String; = "com.htc.android.stopIS"

.field public static final usbCableConnect:Ljava/lang/String; = "usb_cable_connect"

.field public static final usbCableConnectCMCC:Ljava/lang/String; = "online"

.field public static final usbDefaultType:Ljava/lang/String; = "usb_default_type"

.field public static final usbDontAsk:Ljava/lang/String; = "usb_dont_ask"

.field public static final usbFilePath:Ljava/lang/String; = "/sys/devices/platform/android_usb/"

.field public static final usbFilePathCMCC:Ljava/lang/String; = "/sys/class/power_supply/usb/"

.field public static final usbFilePathPico:Ljava/lang/String; = "/sys/devices/platform/android_usb/"

.field public static final usbPrevType:Ljava/lang/String; = "usb_previous_type"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa8

    const/16 v6, 0x40

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    sput-boolean v1, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    .line 122
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    .line 123
    sput-boolean v1, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    .line 124
    sput-boolean v1, Lcom/htc/android/psclient/PSCommon;->debug:Z

    .line 125
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->isFunctionLaunched:Z

    .line 126
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->isNSStopped:Z

    .line 127
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    .line 128
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->isScreenLockAndStopMountingDisk:Z

    .line 147
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/htc/android/psclient/PSCommon;->pause:Landroid/os/ConditionVariable;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "entity"

    aput-object v3, v0, v1

    const-string v3, "status"

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v4, "_data"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "lastmod"

    aput-object v4, v0, v3

    sput-object v0, Lcom/htc/android/psclient/PSCommon;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 213
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_6

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x59

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_6

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x20

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v7, :cond_6

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/psclient/PSCommon;->FEATURE_INTERNET_SHARING:Z

    .line 224
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v6, :cond_4

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v7, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_4

    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    sput-boolean v2, Lcom/htc/android/psclient/PSCommon;->FEATURE_MODEM_LINK:Z

    return-void

    :cond_6
    move v0, v2

    .line 213
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method public static StartCTModem(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x10403ff

    const/4 v6, 0x1

    .line 1009
    const-string v4, "PSCommon"

    const-string v5, "StartCTModem()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.ml.enabled"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1011
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1012
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_1

    .line 1013
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/os/storage/IMountService;->enableModemLink()I

    move-result v3

    .line 1019
    .local v3, result:I
    if-eqz v3, :cond_0

    .line 1020
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1021
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/android/psclient/WarningMsg;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1022
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1023
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1025
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static StopCTModem(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const v5, 0x10403ff

    const/4 v4, 0x1

    .line 1032
    const-string v2, "PSCommon"

    const-string v3, "StopCTModem()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.ml.disabled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1034
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1035
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_1

    .line 1036
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setMountISOEnabled(Z)I

    move-result v2

    if-nez v2, :cond_0

    .line 1042
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stopML"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 707
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 708
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 709
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 710
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 714
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 713
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public static checkDownloadStatus(Landroid/content/Context;Lcom/htc/android/psclient/PSCommon$UpdateInfo;)I
    .locals 14
    .parameter "context"
    .parameter "updateInfo"

    .prologue
    .line 921
    const/4 v12, 0x0

    .line 923
    .local v12, updateStatus:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 924
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 925
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v13, p1, Lcom/htc/android/psclient/PSCommon$UpdateInfo;->link:Ljava/lang/String;

    .line 928
    .local v13, updateUrl:Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/android/psclient/PSCommon;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "entity=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 931
    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 933
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 934
    .local v10, status:I
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 935
    .local v11, update:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 937
    .local v8, modified:J
    invoke-static {v10}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    const/4 v12, 0x1

    goto :goto_0

    .line 939
    :cond_0
    invoke-static {v10}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    const/4 v12, 0x2

    goto :goto_0

    .line 941
    :cond_1
    if-eqz v11, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 942
    :cond_2
    const/4 v12, 0x2

    goto :goto_0

    .line 944
    :cond_3
    const/4 v12, 0x3

    goto :goto_0

    .line 950
    .end local v8           #modified:J
    .end local v10           #status:I
    .end local v11           #update:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 951
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 v6, 0x0

    .line 956
    :cond_5
    :goto_1
    return v12

    .line 947
    :catch_0
    move-exception v7

    .line 948
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when query download provider. error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    if-eqz v6, :cond_5

    .line 951
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 v6, 0x0

    goto :goto_1

    .line 950
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 951
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 v6, 0x0

    :cond_6
    throw v1
.end method

.method public static createShowMeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 996
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 997
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.showme.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v1, "callingApp"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v1, "INTENT_DISK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-connections_computer-copy_files"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    :cond_0
    :goto_0
    return-object v0

    .line 1002
    :cond_1
    const-string v1, "INTENT_INTERNETSHARING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-connections_internet-tethering"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static enableChargeOnly(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 307
    const-string v0, "PSCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-enableChargeOnly() -from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_2

    .line 309
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-string v0, "PSCommon"

    const-string v1, "USB cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return-void

    .line 313
    :cond_0
    if-ne p0, v5, :cond_1

    .line 314
    const-string v0, "Charge Only"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 316
    :cond_1
    const-string v0, "usb_previous_type"

    const-string v1, "Charge Only"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    if-ne p0, v3, :cond_2

    .line 318
    const-string v0, "usb_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    const-string v0, "usb_default_type"

    const-string v1, "Charge Only"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_CHARGEONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 324
    :cond_2
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v3, :cond_5

    .line 325
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    const-string v0, "PSCommon"

    const-string v1, "Dock cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_3
    if-ne p0, v5, :cond_4

    .line 330
    const-string v0, "Charge Only"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 332
    :cond_4
    const-string v0, "dock_previous_type"

    const-string v1, "Charge Only"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    if-ne p0, v3, :cond_5

    .line 334
    const-string v0, "dock_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    const-string v0, "dock_default_type"

    const-string v1, "Charge Only"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    const-string v2, "Charge Only"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    :cond_5
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_CHARGEONLY_FOR_EXTERNAL_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 343
    const-string v0, "Charge Only"

    invoke-static {v0, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 9
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 347
    const-string v3, "PSCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-enableDiskDrive() -from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 349
    .local v2, km:Landroid/app/KeyguardManager;
    invoke-interface {v2}, Landroid/app/HtcIfKeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 350
    .local v1, isKeyguardLocked:Z
    if-eqz v1, :cond_0

    .line 351
    const-string v3, "PSCommon"

    const-string v4, "Screen locked, stop mounting storage."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sput-boolean v6, Lcom/htc/android/psclient/PSCommon;->isScreenLockAndStopMountingDisk:Z

    .line 405
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/htc/android/psclient/PSCommon;->isFotaDownloading(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    invoke-static {p0, p1, p2, p3}, Lcom/htc/android/psclient/PSCommon;->enableChargeOnly(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 357
    const v3, 0x7f070026

    invoke-static {p1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 358
    const-string v3, "PSCommon"

    const-string v4, "FOTA is downloading, stop mounting storage."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_1
    const-string v3, "INTENT_DISK"

    invoke-static {p1, v3}, Lcom/htc/android/psclient/PSCommon;->createShowMeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    sget v3, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v3, :cond_4

    .line 363
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    const-string v3, "PSCommon"

    const-string v4, "USB cable is disconnected, do nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_2
    if-ne p0, v8, :cond_3

    .line 368
    const-string v3, "Disk Drive"

    invoke-static {v3, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 370
    :cond_3
    const-string v3, "usb_previous_type"

    const-string v4, "Disk Drive"

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    if-ne p0, v6, :cond_4

    .line 372
    const-string v3, "usb_dont_ask"

    invoke-interface {p2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 373
    const-string v3, "usb_default_type"

    const-string v4, "Disk Drive"

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 374
    new-instance v3, Landroid/content/Intent;

    const-string v4, "INTENT_DISK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 379
    :cond_4
    sget v3, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v3, v6, :cond_7

    .line 380
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 381
    const-string v3, "PSCommon"

    const-string v4, "Dock cable is disconnected, do nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_5
    if-ne p0, v8, :cond_6

    .line 385
    const-string v3, "Disk Drive"

    invoke-static {v3, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 387
    :cond_6
    const-string v3, "dock_previous_type"

    const-string v4, "Disk Drive"

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    if-ne p0, v6, :cond_7

    .line 389
    const-string v3, "dock_dont_ask"

    invoke-interface {p2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 390
    const-string v3, "dock_default_type"

    const-string v4, "Disk Drive"

    invoke-interface {p3, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string v0, "Disk drive"

    .line 392
    .local v0, diskDrive_old:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_connection_type"

    invoke-static {v3, v4, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    new-instance v3, Landroid/content/Intent;

    const-string v4, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    .end local v0           #diskDrive_old:Ljava/lang/String;
    :cond_7
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 398
    new-instance v3, Lcom/htc/android/psclient/PSCommon$1;

    invoke-direct {v3}, Lcom/htc/android/psclient/PSCommon$1;-><init>()V

    invoke-virtual {v3}, Lcom/htc/android/psclient/PSCommon$1;->start()V

    .line 403
    new-instance v3, Landroid/content/Intent;

    const-string v4, "INTENT_DISK_FOR_EXTERNAL_APP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 404
    const-string v3, "Disk Drive"

    invoke-static {v3, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/psclient/MountStorage;->getPlayNotificationSounds()Z

    move-result v4

    invoke-static {p1, v3, v6, v4}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static enableHtcSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 408
    const-string v0, "PSCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-enableHtcSync() -from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_2

    .line 410
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const-string v0, "PSCommon"

    const-string v1, "USB cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return-void

    .line 414
    :cond_0
    if-ne p0, v5, :cond_1

    .line 415
    const-string v0, "HTC Sync"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 417
    :cond_1
    const-string v0, "usb_previous_type"

    const-string v1, "HTC Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    if-ne p0, v3, :cond_2

    .line 419
    const-string v0, "usb_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    const-string v0, "usb_default_type"

    const-string v1, "HTC Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_HTCSYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 426
    :cond_2
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v3, :cond_5

    .line 427
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 428
    const-string v0, "PSCommon"

    const-string v1, "Dock cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_3
    if-ne p0, v5, :cond_4

    .line 432
    const-string v0, "HTC Sync"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 434
    :cond_4
    const-string v0, "dock_previous_type"

    const-string v1, "HTC Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    if-ne p0, v3, :cond_5

    .line 436
    const-string v0, "dock_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    const-string v0, "dock_default_type"

    const-string v1, "HTC Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    const-string v2, "HTC Sync"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    :cond_5
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.startPCTool"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_HTCSYNC_FOR_EXTERNAL_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 447
    const-string v0, "HTC Sync"

    invoke-static {v0, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static enableInternetPassThrough(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 7
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 579
    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-enableInternetPassThrough() -from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v1, :cond_2

    .line 581
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const-string v1, "PSCommon"

    const-string v2, "USB cable is disconnected, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 585
    :cond_0
    if-ne p0, v6, :cond_1

    .line 586
    const-string v1, "Internet Pass Through"

    invoke-static {v1, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 588
    :cond_1
    const-string v1, "usb_previous_type"

    const-string v2, "Internet Pass Through"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 589
    if-ne p0, v4, :cond_2

    .line 590
    const-string v1, "usb_dont_ask"

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    const-string v1, "usb_default_type"

    const-string v2, "Internet Pass Through"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v2, "INTENT_INTERNETPASSTHROUGH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 597
    :cond_2
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v1, v4, :cond_5

    .line 598
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 599
    const-string v1, "PSCommon"

    const-string v2, "Dock cable is disconnected, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_3
    if-ne p0, v6, :cond_4

    .line 603
    const-string v1, "Internet Pass Through"

    invoke-static {v1, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 605
    :cond_4
    const-string v1, "dock_previous_type"

    const-string v2, "Internet Pass Through"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 606
    if-ne p0, v4, :cond_5

    .line 607
    const-string v1, "dock_dont_ask"

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 608
    const-string v1, "dock_default_type"

    const-string v2, "Internet Pass Through"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    const-string v0, "Internet pass through"

    .line 610
    .local v0, internetPassThrough_old:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_connection_type"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 615
    .end local v0           #internetPassThrough_old:Ljava/lang/String;
    :cond_5
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 616
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.start_IPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 617
    new-instance v1, Landroid/content/Intent;

    const-string v2, "INTENT_INTERNETPASSTHROUGH_FOR_EXTERNAL_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 618
    const-string v1, "Internet Pass Through"

    invoke-static {v1, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v5}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static enableInternetSharing(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 7
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 451
    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-enableInternetSharing() -from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v1, "INTENT_INTERNETSHARING"

    invoke-static {p1, v1}, Lcom/htc/android/psclient/PSCommon;->createShowMeIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v1, :cond_2

    .line 454
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    const-string v1, "PSCommon"

    const-string v2, "USB cable is disconnected, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 458
    :cond_0
    if-ne p0, v6, :cond_1

    .line 459
    const-string v1, "Internet Sharing"

    invoke-static {v1, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 461
    :cond_1
    const-string v1, "usb_previous_type"

    const-string v2, "Internet Sharing"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    if-ne p0, v4, :cond_2

    .line 463
    const-string v1, "usb_dont_ask"

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    const-string v1, "usb_default_type"

    const-string v2, "Internet Sharing"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    new-instance v1, Landroid/content/Intent;

    const-string v2, "INTENT_INTERNETSHARING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 470
    :cond_2
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v1, v4, :cond_5

    .line 471
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 472
    const-string v1, "PSCommon"

    const-string v2, "Dock cable is disconnected, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_3
    if-ne p0, v6, :cond_4

    .line 476
    const-string v1, "Internet Sharing"

    invoke-static {v1, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 478
    :cond_4
    const-string v1, "dock_previous_type"

    const-string v2, "Internet Sharing"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    if-ne p0, v4, :cond_5

    .line 480
    const-string v1, "dock_dont_ask"

    invoke-interface {p2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 481
    const-string v1, "dock_default_type"

    const-string v2, "Internet Sharing"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 482
    const-string v0, "Mobile network sharing"

    .line 483
    .local v0, internetSharing_old:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_connection_type"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    new-instance v1, Landroid/content/Intent;

    const-string v2, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    .end local v0           #internetSharing_old:Ljava/lang/String;
    :cond_5
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.startIS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 490
    new-instance v1, Landroid/content/Intent;

    const-string v2, "INTENT_INTERNETSHARING_FOR_EXTERNAL_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 491
    const-string v1, "Internet Sharing"

    invoke-static {v1, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v5}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static enableMediaSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 537
    const-string v0, "PSCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-enableMediaSync() -from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_2

    .line 539
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const-string v0, "PSCommon"

    const-string v1, "USB cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return-void

    .line 543
    :cond_0
    if-ne p0, v5, :cond_1

    .line 544
    const-string v0, "Media Sync"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 546
    :cond_1
    const-string v0, "usb_previous_type"

    const-string v1, "Media Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    if-ne p0, v3, :cond_2

    .line 548
    const-string v0, "usb_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    const-string v0, "usb_default_type"

    const-string v1, "Media Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_MEDIASYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 555
    :cond_2
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v3, :cond_5

    .line 556
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 557
    const-string v0, "PSCommon"

    const-string v1, "Dock cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_3
    if-ne p0, v5, :cond_4

    .line 561
    const-string v0, "Media Sync"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 563
    :cond_4
    const-string v0, "dock_previous_type"

    const-string v1, "Media Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 564
    if-ne p0, v3, :cond_5

    .line 565
    const-string v0, "dock_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 566
    const-string v0, "dock_default_type"

    const-string v1, "Media Sync"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    const-string v2, "Media Sync"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    :cond_5
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.start_MTP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_MEDIASYNC_FOR_EXTERNAL_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 575
    const-string v0, "Media Sync"

    invoke-static {v0, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static enableModemLink(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .parameter "from"
    .parameter "context"
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 495
    const-string v0, "PSCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-enableModemLink() -from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_2

    .line 497
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    const-string v0, "PSCommon"

    const-string v1, "USB cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return-void

    .line 501
    :cond_0
    if-ne p0, v5, :cond_1

    .line 502
    const-string v0, "Modem link"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 504
    :cond_1
    const-string v0, "usb_previous_type"

    const-string v1, "Modem link"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 505
    if-ne p0, v3, :cond_2

    .line 506
    const-string v0, "usb_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    const-string v0, "usb_default_type"

    const-string v1, "Modem link"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_MODEMLINK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 513
    :cond_2
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v3, :cond_5

    .line 514
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    const-string v0, "PSCommon"

    const-string v1, "Dock cable is disconnected, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_3
    if-ne p0, v5, :cond_4

    .line 519
    const-string v0, "Modem link"

    invoke-static {v0, p1, p2}, Lcom/htc/android/psclient/PSCommon;->stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 521
    :cond_4
    const-string v0, "dock_previous_type"

    const-string v1, "Modem link"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    if-ne p0, v3, :cond_5

    .line 523
    const-string v0, "dock_dont_ask"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 524
    const-string v0, "dock_default_type"

    const-string v1, "Modem link"

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_connection_type"

    const-string v2, "Modem link"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "default_type_change_notify_from_connect_to_pc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 530
    :cond_5
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 531
    invoke-static {p1}, Lcom/htc/android/psclient/PSCommon;->StartCTModem(Landroid/content/Context;)V

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_MODEMLINK_FOR_EXTERNAL_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 533
    const-string v0, "Modem link"

    invoke-static {v0, p1}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public static getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "func"
    .parameter "context"

    .prologue
    .line 825
    const-string v0, "HTC Sync"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 842
    :goto_0
    return-object v0

    .line 827
    :cond_0
    const-string v0, "Disk Drive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_1
    const-string v0, "Internet Sharing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_2

    .line 831
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_3
    const-string v0, "Modem link"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_4
    const-string v0, "Media Sync"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 838
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_5
    const-string v0, "Internet Pass Through"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 840
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getUpdateInfo(Landroid/content/Context;)Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    .locals 20
    .parameter "context"

    .prologue
    .line 883
    const/16 v16, 0x0

    .line 885
    .local v16, update:Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 886
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 888
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 889
    const-string v3, "link"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 890
    .local v13, linkValue:I
    const-string v3, "version"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 891
    .local v19, versionValue:I
    const-string v3, "feature"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 892
    .local v11, featureValue:I
    const-string v3, "size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 893
    .local v15, sizeValue:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 894
    .local v12, link:Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 895
    .local v18, version:Ljava/lang/String;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 896
    .local v10, feature:Ljava/lang/String;
    const/4 v14, 0x0

    .line 897
    .local v14, size:Ljava/lang/String;
    if-ltz v15, :cond_0

    .line 898
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 901
    :cond_0
    const-string v3, "PSCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUpdateInfo() link="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nversion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nfeature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 903
    new-instance v17, Lcom/htc/android/psclient/PSCommon$UpdateInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1, v10, v14}, Lcom/htc/android/psclient/PSCommon$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16           #update:Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    .local v17, update:Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    move-object/from16 v16, v17

    .line 911
    .end local v10           #feature:Ljava/lang/String;
    .end local v11           #featureValue:I
    .end local v12           #link:Ljava/lang/String;
    .end local v13           #linkValue:I
    .end local v14           #size:Ljava/lang/String;
    .end local v15           #sizeValue:I
    .end local v17           #update:Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    .end local v18           #version:Ljava/lang/String;
    .end local v19           #versionValue:I
    .restart local v16       #update:Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 912
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 913
    const/4 v8, 0x0

    .line 917
    :cond_2
    :goto_1
    return-object v16

    .line 906
    :cond_3
    :try_start_1
    const-string v3, "PSCommon"

    const-string v4, "getUpdateInfo() no update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v9

    .line 909
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "PSCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUpdateInfo() Exception to get messages from local database. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 911
    if-eqz v8, :cond_2

    .line 912
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 913
    const/4 v8, 0x0

    goto :goto_1

    .line 911
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_4

    .line 912
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 913
    const/4 v8, 0x0

    :cond_4
    throw v3
.end method

.method private static initialCustomizedParams(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 623
    const-string v4, "pimSyncPref"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 624
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 625
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "isCustomized"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v4, v6, :cond_5

    .line 626
    const-string v4, "content://customization_settings/SettingTable/system_Settings"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/htc/android/psclient/PSCommon;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 627
    .local v0, bdl:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 628
    const-string v4, "customized_value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 629
    .local v1, bdlsettings:Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 630
    const-string v4, "has_netsharing"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    .line 631
    const-string v4, "has_modemlink"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    .line 632
    const-string v4, "has_connect_to_pc"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    .line 639
    .end local v1           #bdlsettings:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v4, "isCustomized"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 640
    const-string v4, "customizedNS"

    sget-boolean v5, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 641
    const-string v4, "customizedML"

    sget-boolean v5, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 642
    const-string v4, "customizedUsbToPC"

    sget-boolean v5, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 643
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 650
    .end local v0           #bdl:Landroid/os/Bundle;
    :goto_1
    sget-boolean v4, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : Internet_Sharing>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    sget-boolean v4, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : Modem_Link>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_2
    sget-boolean v4, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v4, :cond_3

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_ConnectToPC   : Connect_to_PC>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_3
    return-void

    .line 634
    .restart local v0       #bdl:Landroid/os/Bundle;
    .restart local v1       #bdlsettings:Landroid/os/Bundle;
    :cond_4
    sget-boolean v4, Lcom/htc/android/psclient/PSCommon;->FEATURE_INTERNET_SHARING:Z

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    .line 635
    sget-boolean v4, Lcom/htc/android/psclient/PSCommon;->FEATURE_MODEM_LINK:Z

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    .line 636
    sput-boolean v6, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    goto/16 :goto_0

    .line 645
    .end local v0           #bdl:Landroid/os/Bundle;
    .end local v1           #bdlsettings:Landroid/os/Bundle;
    :cond_5
    const-string v4, "customizedNS"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    .line 646
    const-string v4, "customizedML"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    .line 647
    const-string v4, "customizedUsbToPC"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    goto :goto_1
.end method

.method public static initialDefaultSettingForFota(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 13
    .parameter "prefs"
    .parameter "editor"

    .prologue
    const/4 v12, 0x0

    .line 1051
    const-string v10, "PSCommon"

    const-string v11, "-initialDefaultSettingForFota()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string v1, "Disk drive"

    .line 1053
    .local v1, diskDrive_old:Ljava/lang/String;
    const-string v5, "Mobile network sharing"

    .line 1054
    .local v5, internetSharing_old:Ljava/lang/String;
    const-string v4, "Internet pass through"

    .line 1056
    .local v4, internetPassThrough_old:Ljava/lang/String;
    const-string v10, "isFotaInitialized_ICS_35"

    invoke-interface {p0, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_15

    .line 1057
    const-string v10, "PSCommon"

    const-string v11, "Initial default setting for FOTA update."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v10, "dont_ask"

    invoke-interface {p0, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1059
    const-string v10, "PSCommon"

    const-string v11, "Preference dont_ask is existed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v10, "dont_ask"

    invoke-interface {p0, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1061
    .local v6, isDontAsk:Z
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isDontAsk = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v10, "usb_dont_ask"

    invoke-interface {p1, v10, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1063
    const-string v10, "dock_dont_ask"

    invoke-interface {p1, v10, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1064
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1066
    .end local v6           #isDontAsk:Z
    :cond_0
    const-string v10, "default_type"

    invoke-interface {p0, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1067
    const-string v10, "PSCommon"

    const-string v11, "Preference default_type is existed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const-string v10, "default_type"

    const-string v11, "Charge Only"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, defaultType:Ljava/lang/String;
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "defaultType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1071
    const-string v0, "Disk Drive"

    .line 1073
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1074
    const-string v0, "Internet Sharing"

    .line 1076
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1077
    const-string v0, "Internet Pass Through"

    .line 1079
    :cond_3
    const-string v10, "usb_default_type"

    invoke-interface {p1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1080
    const-string v10, "dock_default_type"

    invoke-interface {p1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1081
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1083
    .end local v0           #defaultType:Ljava/lang/String;
    :cond_4
    const-string v10, "previous_type"

    invoke-interface {p0, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1084
    const-string v10, "PSCommon"

    const-string v11, "Preference previous_type is existed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const-string v10, "previous_type"

    const-string v11, "Charge Only"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1086
    .local v7, prevType:Ljava/lang/String;
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prevType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1088
    const-string v7, "Disk Drive"

    .line 1090
    :cond_5
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1091
    const-string v7, "Internet Sharing"

    .line 1093
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1094
    const-string v7, "Internet Pass Through"

    .line 1096
    :cond_7
    const-string v10, "usb_previous_type"

    invoke-interface {p1, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1097
    const-string v10, "dock_previous_type"

    invoke-interface {p1, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1101
    .end local v7           #prevType:Ljava/lang/String;
    :cond_8
    const-string v10, "usb_default_type"

    const-string v11, "Charge Only"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1102
    .local v8, usbDType:Ljava/lang/String;
    const-string v10, "usb_previous_type"

    const-string v11, "Charge Only"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1103
    .local v9, usbPType:Ljava/lang/String;
    const-string v10, "dock_default_type"

    const-string v11, "Charge Only"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, dockDType:Ljava/lang/String;
    const-string v10, "dock_previous_type"

    const-string v11, "Charge Only"

    invoke-interface {p0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, dockPType:Ljava/lang/String;
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "usbDType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "usbPType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dockDType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v10, "PSCommon"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dockPType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1112
    const-string v10, "usb_default_type"

    const-string v11, "Disk Drive"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1114
    :cond_9
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1115
    const-string v10, "usb_default_type"

    const-string v11, "Internet Sharing"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1117
    :cond_a
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1118
    const-string v10, "usb_default_type"

    const-string v11, "Internet Pass Through"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1120
    :cond_b
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1121
    const-string v10, "usb_previous_type"

    const-string v11, "Disk Drive"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1123
    :cond_c
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1124
    const-string v10, "usb_previous_type"

    const-string v11, "Internet Sharing"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1126
    :cond_d
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1127
    const-string v10, "usb_previous_type"

    const-string v11, "Internet Pass Through"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1131
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1132
    const-string v10, "dock_default_type"

    const-string v11, "Disk Drive"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1134
    :cond_f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1135
    const-string v10, "dock_default_type"

    const-string v11, "Internet Sharing"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1137
    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1138
    const-string v10, "dock_default_type"

    const-string v11, "Internet Pass Through"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1140
    :cond_11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1141
    const-string v10, "dock_previous_type"

    const-string v11, "Disk Drive"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1143
    :cond_12
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1144
    const-string v10, "dock_previous_type"

    const-string v11, "Internet Sharing"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1146
    :cond_13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1147
    const-string v10, "dock_previous_type"

    const-string v11, "Internet Pass Through"

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1150
    :cond_14
    const-string v10, "isFotaInitialized_ICS_35"

    const/4 v11, 0x1

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1151
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1155
    .end local v2           #dockDType:Ljava/lang/String;
    .end local v3           #dockPType:Ljava/lang/String;
    .end local v8           #usbDType:Ljava/lang/String;
    .end local v9           #usbPType:Ljava/lang/String;
    :goto_0
    return-void

    .line 1153
    :cond_15
    const-string v10, "PSCommon"

    const-string v11, "Don\'t need to initial."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isChargeOnlyAvaliable()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public static isConnectToPCAvaliable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 302
    invoke-static {p0}, Lcom/htc/android/psclient/PSCommon;->initialCustomizedParams(Landroid/content/Context;)V

    .line 303
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->customizedUsbToPC:Z

    return v0
.end method

.method public static isDiskDriveAvaliable()Z
    .locals 4

    .prologue
    .line 240
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, state:Ljava/lang/String;
    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment.getExternalStorageState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 245
    :cond_0
    const-string v1, "PSCommon"

    const-string v2, "isDiskDriveAvaliable() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x1

    .line 249
    :goto_0
    return v1

    .line 248
    :cond_1
    const-string v1, "PSCommon"

    const-string v2, "isDiskDriveAvaliable() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDockConnected()Z
    .locals 2

    .prologue
    .line 767
    const-string v0, "status"

    const-string v1, "/sys/class/switch/dock/"

    invoke-static {v0, v1}, Lcom/htc/android/psclient/PSCommon;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDongleConnected()Z
    .locals 2

    .prologue
    .line 771
    const-string v0, "state"

    const-string v1, "/sys/class/switch/dock/"

    invoke-static {v0, v1}, Lcom/htc/android/psclient/PSCommon;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFotaDownloading(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 960
    invoke-static {p0}, Lcom/htc/android/psclient/PSCommon;->getUpdateInfo(Landroid/content/Context;)Lcom/htc/android/psclient/PSCommon$UpdateInfo;

    move-result-object v0

    .line 961
    .local v0, updateInfo:Lcom/htc/android/psclient/PSCommon$UpdateInfo;
    const/4 v1, 0x0

    .line 962
    .local v1, updateStatus:I
    if-eqz v0, :cond_0

    .line 963
    invoke-static {p0, v0}, Lcom/htc/android/psclient/PSCommon;->checkDownloadStatus(Landroid/content/Context;Lcom/htc/android/psclient/PSCommon$UpdateInfo;)I

    move-result v1

    .line 965
    :cond_0
    if-ne v1, v2, :cond_1

    .line 966
    const-string v3, "PSCommon"

    const-string v4, "FOTA is downloading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    return v2

    .line 969
    :cond_1
    const-string v2, "PSCommon"

    const-string v3, "FOTA is not downloading"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHTCSyncAvaliable()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public static isHotspotEnabled(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    .line 975
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTCHotspotFlag:Z

    if-eqz v1, :cond_0

    .line 976
    const-string v1, "isHotspotEnabled"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 978
    :cond_0
    return v0
.end method

.method public static isInternetPassThroughAvaliable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 291
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-ne v1, v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    .line 298
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInternetSharingAvaliable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 253
    const-string v1, "pimSyncPref"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "is_internet_sharing_avaliable_by_eas_policy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 258
    :goto_0
    return v1

    .line 257
    :cond_0
    invoke-static {p0}, Lcom/htc/android/psclient/PSCommon;->initialCustomizedParams(Landroid/content/Context;)V

    .line 258
    sget-boolean v1, Lcom/htc/android/psclient/PSCommon;->customizedNS:Z

    sget-boolean v2, Lcom/htc/android/psclient/PSCommon;->customizedML:Z

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public static isMFGBuild()Z
    .locals 4

    .prologue
    .line 990
    const-string v1, "ro.bootmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "factory2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 991
    .local v0, isMFGBuild:Z
    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMFGBuild() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return v0
.end method

.method public static isMediaSyncAvaliable()Z
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, isMedia:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_2

    .line 273
    const/4 v0, 0x1

    .line 284
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMediaSyncAvaliable() : is Media Sync Avaliable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    return v0

    .line 274
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_4

    .line 276
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    :cond_4
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x50

    if-ne v1, v2, :cond_5

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xaf

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-ne v1, v2, :cond_0

    .line 282
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isModemLinkAvaliable()Z
    .locals 2

    .prologue
    .line 261
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsbConnected()Z
    .locals 2

    .prologue
    .line 775
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xda

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    .line 778
    const-string v0, "online"

    const-string v1, "/sys/class/power_supply/usb/"

    invoke-static {v0, v1}, Lcom/htc/android/psclient/PSCommon;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 782
    :goto_0
    return v0

    .line 779
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_2

    .line 780
    const-string v0, "usb_cable_connect"

    const-string v1, "/sys/devices/platform/android_usb/"

    invoke-static {v0, v1}, Lcom/htc/android/psclient/PSCommon;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 782
    :cond_2
    const-string v0, "usb_cable_connect"

    const-string v1, "/sys/devices/platform/android_usb/"

    invoke-static {v0, v1}, Lcom/htc/android/psclient/PSCommon;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWirelessModemAvaliable()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method private static loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, uri:Landroid/net/Uri;
    if-nez p0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-object v2

    .line 660
    :cond_1
    if-eqz p1, :cond_0

    .line 663
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 667
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 668
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "PSCommon"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 673
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v0, :cond_3

    const-string v0, "PSCommon"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 678
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 679
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 680
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v0, :cond_5

    const-string v0, "PSCommon"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 684
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 686
    const/4 v8, 0x0

    .line 687
    .local v8, data:[B
    const/4 v6, 0x0

    .line 690
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 691
    invoke-static {v8}, Lcom/htc/android/psclient/PSCommon;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 696
    if-eqz v7, :cond_7

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 698
    const/4 v7, 0x0

    :cond_7
    :goto_1
    move-object v2, v6

    .line 702
    goto :goto_0

    .line 692
    :catch_0
    move-exception v9

    .line 693
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    sget-boolean v0, Lcom/htc/android/psclient/PSCommon;->debug:Z

    if-eqz v0, :cond_8

    const-string v0, "PSCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :cond_8
    const/4 v6, 0x0

    .line 696
    if-eqz v7, :cond_7

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 698
    const/4 v7, 0x0

    goto :goto_1

    .line 696
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 698
    const/4 v7, 0x0

    :cond_9
    throw v0
.end method

.method private static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fn"
    .parameter "filePath"

    .prologue
    .line 787
    const/4 v3, 0x0

    .line 788
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 790
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    if-eqz v4, :cond_0

    .line 792
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 795
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 796
    const-string v6, "PSCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 807
    if-eqz v0, :cond_1

    .line 808
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 814
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 815
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    move-object v3, v4

    .line 821
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 799
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "PSCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v5, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 807
    if-eqz v0, :cond_4

    .line 808
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 814
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 815
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    move-object v3, v4

    .line 818
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v6, "PSCommon"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 807
    if-eqz v0, :cond_6

    .line 808
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 814
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 815
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 820
    :cond_7
    :goto_7
    const-string v6, "PSCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v5, ""

    goto :goto_2

    .line 806
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 807
    :goto_8
    if-eqz v0, :cond_8

    .line 808
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 814
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 815
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 818
    :cond_9
    :goto_a
    throw v6

    .line 810
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 817
    :catch_2
    move-exception v6

    goto :goto_1

    .line 810
    .end local v5           #line:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 817
    :catch_4
    move-exception v6

    goto :goto_4

    .line 810
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v2       #ex:Ljava/io/IOException;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v6

    goto :goto_6

    .line 817
    :catch_6
    move-exception v6

    goto :goto_7

    .line 810
    .end local v2           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v7

    goto :goto_9

    .line 817
    :catch_8
    move-exception v7

    goto :goto_a

    .line 806
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_8

    .line 803
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_5
.end method

.method public static setInternetSharingAvaliableByEasPolicy(ZLandroid/content/Context;)V
    .locals 4
    .parameter "isAvaliable"
    .parameter "context"

    .prologue
    .line 983
    const-string v2, "pimSyncPref"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 984
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 985
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_internet_sharing_avaliable_by_eas_policy"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 987
    return-void
.end method

.method public static setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "visible"
    .parameter "playSound"

    .prologue
    .line 847
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/psclient/PSCommon$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/htc/android/psclient/PSCommon$3;-><init>(Landroid/content/Context;ZLjava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 875
    return-void
.end method

.method private static stopHtcSync(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 878
    const-string v0, "PSCommon"

    const-string v1, "To stop htc sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.stopPCTool"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 880
    return-void
.end method

.method public static stopPrevFunc(Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "enableType"
    .parameter "context"
    .parameter "prefs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, isStoppedByISorIPTorML:Z
    const-string v1, ""

    .line 720
    .local v1, previous:Ljava/lang/String;
    sget v2, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v2, :cond_0

    .line 721
    const-string v2, "usb_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 723
    :cond_0
    sget v2, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v2, v5, :cond_1

    .line 724
    const-string v2, "dock_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 727
    const-string v2, "PSCommon"

    const-string v3, "Enable type equal to previous type, return!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_2
    :goto_0
    return-void

    .line 730
    :cond_3
    const-string v2, "Internet Sharing"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Modem link"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Internet Pass Through"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    :cond_4
    const/4 v0, 0x1

    .line 733
    :cond_5
    const-string v2, "HTC Sync"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 734
    sput-boolean v5, Lcom/htc/android/psclient/PSCommon;->isNSStopped:Z

    .line 736
    :cond_6
    const-string v2, "HTC Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 737
    invoke-static {p1}, Lcom/htc/android/psclient/PSCommon;->stopHtcSync(Landroid/content/Context;)V

    .line 739
    :cond_7
    const-string v2, "Disk Drive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 740
    new-instance v2, Lcom/htc/android/psclient/PSCommon$2;

    invoke-direct {v2}, Lcom/htc/android/psclient/PSCommon$2;-><init>()V

    invoke-virtual {v2}, Lcom/htc/android/psclient/PSCommon$2;->start()V

    .line 746
    :cond_8
    const-string v2, "Internet Sharing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v0, :cond_a

    .line 747
    const-string v2, "HTC Sync"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 748
    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->isNSStopped:Z

    .line 750
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stopIS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 752
    :cond_a
    const-string v2, "Modem link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-nez v0, :cond_c

    .line 753
    const-string v2, "HTC Sync"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 754
    sput-boolean v4, Lcom/htc/android/psclient/PSCommon;->isNSStopped:Z

    .line 756
    :cond_b
    invoke-static {p1}, Lcom/htc/android/psclient/PSCommon;->StopCTModem(Landroid/content/Context;)V

    .line 758
    :cond_c
    const-string v2, "Media Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 759
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stop_MTP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 761
    :cond_d
    const-string v2, "Internet Pass Through"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 762
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.stop_IPT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
