.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Landroid/net/HtcIfConnectivityManager;


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final ADMIN_DNS1_Priority:I = 0x64

.field public static final ADMIN_DNS2_Priority:I = 0x96

.field public static final ADMIN_Priority:I = 0xc8

.field public static final ADMIN_RTB:Ljava/lang/String; = "admin"

.field public static final APN_STILL_IN_USE:Ljava/lang/String; = "android.net.conn.APN_STILL_IN_USE"

.field public static final CMMail_Priority:I = 0x2bc

.field public static final CMMail_RTB:Ljava/lang/String; = "cmmail"

.field public static final CMail_RTB:Ljava/lang/String; = "cmail"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CW_Priority:I = 0x50

.field public static final CW_RTB:Ljava/lang/String; = "cw"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_HTC_CURRENT_ACTIVE_NETWORK:Ljava/lang/String; = "htcCurrentActiveNetwork"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final FOTA_DNS1_Priority:I = 0x6a4

.field public static final FOTA_DNS2_Priority:I = 0x73a

.field public static final FOTA_Priority:I = 0x76c

.field public static final FOTA_RTB:Ljava/lang/String; = "fota"

.field public static final GAME_Priority:I = 0xd48

.field public static final GAME_RTB:Ljava/lang/String; = "game"

.field public static final GPRS_Priority:I = 0xce4

.field public static final GPRS_RTB:Ljava/lang/String; = "gprs"

.field public static final HIPRI_DNS1_Priority:I = 0x640

.field public static final HIPRI_DNS2_Priority:I = 0x672

.field public static final HIPRI_Priority:I = 0x6a4

.field public static final HIPRI_RTB:Ljava/lang/String; = "hipri"

.field public static final HTC_CHECK_TETHER_BT:I = -0x24

.field public static final HTC_CHECK_TETHER_HOTSPOT:I = -0x23

.field public static final HTC_CHECK_TETHER_USB:I = -0x22

.field public static final HTC_NETWORK_AVALIBILITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.htcNetworkAvalibilityChange"

.field public static final HTC_PERMITTED_TETHER_ACTION:Ljava/lang/String; = "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

.field public static final HTC_PERMITTED_TETHER_ALLOW:I = 0x0

.field public static final HTC_PERMITTED_TETHER_DENY:I = 0x1

.field public static final HTC_PERMITTED_TETHER_NOT_REQUESTED:I = 0x3

.field public static final HTC_PERMITTED_TETHER_PROGRASSING:I = 0x2

.field public static final HTC_REQUEST_TETHER_BT:I = -0x14

.field public static final HTC_REQUEST_TETHER_HOTSPOT:I = -0x13

.field public static final HTC_REQUEST_TETHER_USB:I = -0x12

.field public static final HTC_RESET_TETHER_BT:I = -0x44

.field public static final HTC_RESET_TETHER_HOTSPOT:I = -0x43

.field public static final HTC_RESET_TETHER_USB:I = -0x42

.field public static final HTC_TETHER:I = -0x2

.field public static final HTC_TETHER_BT:I = 0x2

.field public static final HTC_TETHER_CHECK:I = 0x20

.field public static final HTC_TETHER_HOTSPOT:I = 0x1

.field public static final HTC_TETHER_REQUEST:I = 0x10

.field public static final HTC_TETHER_RESET:I = 0x40

.field public static final HTC_TETHER_TYPE_ALL:I = 0x3

.field public static final HTC_TETHER_USB:I = 0x0

.field public static final HTTP_Priority:I = 0x3e8

.field public static final IMS_Priority:I = 0xa8c

.field public static final IMS_RTB:Ljava/lang/String; = "ims"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final INTERNET_Priority:I = 0xc80

.field public static final INTERNET_RTB:Ljava/lang/String; = "internet"

.field public static final J2ME_Priority:I = 0x1f4

.field public static final J2ME_RTB:Ljava/lang/String; = "j2me"

.field public static final MAX_NETWORK_TYPE:I = 0x20

#the value of this static final field might be set in the static constructor
.field public static final MAX_RADIO_TYPE:I = 0x0

.field public static final MMS_DNS1_Priority:I = 0x12c

.field public static final MMS_DNS2_Priority:I = 0x15e

.field public static final MMS_Priority:I = 0x190

.field public static final MMS_RTB:Ljava/lang/String; = "mms"

.field public static final MobileMarket_Priority:I = 0x7d0

.field public static final MobileMarket_RTB:Ljava/lang/String; = "MM"

.field public static final NETSHARE_Priority:I = 0x834

.field public static final NETSHARE_RTB:Ljava/lang/String; = "netshare"

.field public static final OTHER_Priority:I = 0xe10

.field public static final ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String; = "domestic"

.field public static final ROAMING_PROVIDER_GSM:Ljava/lang/String; = "gsm"

.field public static final ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String; = "international"

.field public static final STREAM_Priority:I = 0xdac

.field public static final SUPL_DNS1_Priority:I = 0x578

.field public static final SUPL_DNS2_Priority:I = 0x5aa

.field public static final SUPL_Priority:I = 0x5dc

.field public static final SUPL_RTB:Ljava/lang/String; = "supl"

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_ADMIN:I = 0x10

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CDMA:I = 0x1a

.field public static final TYPE_MOBILE_CDMA_MMS:I = 0x1b

.field public static final TYPE_MOBILE_CMMail:I = 0x15

.field public static final TYPE_MOBILE_CMail:I = 0x17

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_ENTITLE:I = 0x18

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_GSM:I = 0x1c

.field public static final TYPE_MOBILE_GSM_MMS:I = 0x1d

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_HTTPPROXY:I = 0xf

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_INTERNET:I = 0x13

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_MobileMarket:I = 0x14

.field public static final TYPE_MOBILE_OTASP:I = 0x19

.field public static final TYPE_MOBILE_SUB_GSM:I = 0x1e

.field public static final TYPE_MOBILE_SUB_GSM_MMS:I = 0x1f

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_Verizon800:I = 0x20

.field public static final TYPE_MOBILE_VerizonApp:I = 0x16

.field public static final TYPE_MOBILE_WAPGATEWAY:I = 0xe

.field public static final TYPE_MOBILE_WIMAX:I = 0x6

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_USBNET:I = 0x12

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_HOTSPOT:I = 0x11

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field public static final VPN_DNS1_Priority:I = 0x960

.field public static final VPN_DNS2_Priority:I = 0x992

.field public static final VPN_Priority:I = 0x9c4

.field public static final VPN_RTB:Ljava/lang/String; = "vpn"

.field public static final VZWAPP_DNS1_Priority:I = 0x898

.field public static final VZWAPP_DNS2_Priority:I = 0x8ca

.field public static final VZWAPP_Priority:I = 0x8fc

.field public static final VZWAPP_RTB:Ljava/lang/String; = "vzwapp"

.field public static final WAP_CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.WAP_CONN_CHANGE"

.field public static final WAP_DISCONNECT_ACTION:Ljava/lang/String; = "android.net.conn.WAP_CONN_DISCONNECT"

.field public static final WAP_Priority:I = 0x258

.field public static final WAP_RTB:Ljava/lang/String; = "wap"

.field public static final WIFIP2P_Priority:I = 0xb54

.field public static final WIFIP2P_RTB:Ljava/lang/String; = "wifip2p"

.field public static final WIFI_Priority:I = 0xbb9

.field public static final WIFI_RTB:Ljava/lang/String; = "wifi"

.field public static final WIMAX_Priority:I = 0xc1c

.field public static final WIMAX_RTB:Ljava/lang/String; = "wimax"

.field public static final other_RTB:Ljava/lang/String; = "other"

.field public static final stream_RTB:Ljava/lang/String; = "stream"


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    :goto_0
    sput v0, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    return-void

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    return-void
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    :pswitch_2
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    :pswitch_3
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    :pswitch_6
    const-string v0, "WIMAX"

    goto :goto_0

    :pswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    :pswitch_8
    const-string v0, "DUMMY"

    goto :goto_0

    :pswitch_9
    const-string v0, "ETHERNET"

    goto :goto_0

    :pswitch_a
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    :pswitch_b
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    :pswitch_c
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    :pswitch_d
    const-string v0, "WIFI_P2P"

    goto :goto_0

    :pswitch_e
    const-string v0, "MOBILE_WAPGATEWAY"

    goto :goto_0

    :pswitch_f
    const-string v0, "MOBILE_HTTPPROXY"

    goto :goto_0

    :pswitch_10
    const-string v0, "MOBILE_ADMIN"

    goto :goto_0

    :pswitch_11
    const-string v0, "WIFI_HOTSPOT"

    goto :goto_0

    :pswitch_12
    const-string v0, "USBNET"

    goto :goto_0

    :pswitch_13
    const-string v0, "MOBILE_INTERNET"

    goto :goto_0

    :pswitch_14
    const-string v0, "MOBILE_MobileMarket"

    goto :goto_0

    :pswitch_15
    const-string v0, "MOBILE_CMMail"

    goto :goto_0

    :pswitch_16
    const-string v0, "MOBILE_VerizonApp"

    goto :goto_0

    :pswitch_17
    const-string v0, "MOBILE_CMail"

    goto :goto_0

    :pswitch_18
    const-string v0, "MOBILE_ENTITLE"

    goto :goto_0

    :pswitch_19
    const-string v0, "MOBILE_OTASP"

    goto :goto_0

    :pswitch_1a
    const-string v0, "MOBILE_CDMA"

    goto :goto_0

    :pswitch_1b
    const-string v0, "MOBILE_CDMA_MMS"

    goto :goto_0

    :pswitch_1c
    const-string v0, "MOBILE_GSM"

    goto :goto_0

    :pswitch_1d
    const-string v0, "MOBILE_GSM_MMS"

    goto :goto_0

    :pswitch_1e
    const-string v0, "MOBILE_SUB_GSM"

    goto :goto_0

    :pswitch_1f
    const-string v0, "MOBILE_SUB_GSM_MMS"

    goto :goto_0

    :pswitch_20
    const-string v0, "MOBILE_Verizon800"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubTypeCDMA(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActiveApnState()[Lcom/htc/net/ApnState;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveApnState()[Lcom/htc/net/ApnState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMobileDataPhoneType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkNameServers(I)[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkNameServers(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPhoneMobileDataEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public htcRegisterPermittedTether(IILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    move v0, v7

    goto :goto_0
.end method

.method public htcRequestPermittedTether(IILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public htcUnRegisterPermittedTether(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 4

    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHost(ILjava/net/InetAddress;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v0}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPhoneMobileDataPhoneType(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRadio(IZ)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    goto :goto_0
.end method
