.class public interface abstract Lcom/android/internal/telephony/DataPhone;
.super Ljava/lang/Object;
.source "DataPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataPhone$IPVersion;,
        Lcom/android/internal/telephony/DataPhone$DataActivityState;,
        Lcom/android/internal/telephony/DataPhone$DataState;
    }
.end annotation


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "admin"

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APN_TYPE_VERIZON:Ljava/lang/String; = "verizon"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPES_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_APN_TYPE_STATE:Ljava/lang/String; = "apnTypeState"

.field public static final DATA_DISABLED_ON_BOOT_KEY:Ljava/lang/String; = "disabled_on_boot_key"

.field public static final DATA_GW_ADDRESS_KEY:Ljava/lang/String; = "igwaddress"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_IPVERSION_KEY:Ljava/lang/String; = "ipVersion"

.field public static final DATA_IPVERSION_REAL_STATE_KEY:Ljava/lang/String; = "realipstate"

.field public static final DATA_IP_ADDRESS_KEY:Ljava/lang/String; = "ipaddress"

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_GPRS_ATTACHED:Ljava/lang/String; = "gprsAttached"

.field public static final REASON_GPRS_DETACHED:Ljava/lang/String; = "gprsDetached"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "radioTechnologyChanged"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"


# virtual methods
.method public abstract disableApnType(Ljava/lang/String;)I
.end method

.method public abstract disableDataConnectivity()Z
.end method

.method public abstract disableDnsCheck(Z)V
.end method

.method public abstract enableApnType(Ljava/lang/String;)I
.end method

.method public abstract enableDataConnectivity()Z
.end method

.method public abstract getActiveApn()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActiveApn(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)Ljava/lang/String;
.end method

.method public abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getCurrentDataConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/DataPhone$DataActivityState;
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataConnectionRealIpState(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)Lcom/android/internal/telephony/DataPhone$DataState;
.end method

.method public abstract getDataConnectionState()Lcom/android/internal/telephony/DataPhone$DataState;
.end method

.method public abstract getDataConnectionState(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)Lcom/android/internal/telephony/DataPhone$DataState;
.end method

.method public abstract getDataRoamingEnabled()Z
.end method

.method public abstract getDataServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDnsServers(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)[Ljava/lang/String;
.end method

.method public abstract getGateway(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getGateway(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)Ljava/lang/String;
.end method

.method public abstract getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)Ljava/lang/String;
.end method

.method public abstract getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/DataPhone$IPVersion;)Ljava/lang/String;
.end method

.method public abstract isDataConnectivityEnabled()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isDnsCheckDisabled()Z
.end method

.method public abstract notifyDataActivity()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract notifyDataConnection(Ljava/lang/String;)V
.end method

.method public abstract registerForDataServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract setActiveDataTrackerID(I)V
.end method

.method public abstract setDataRoamingEnabled(Z)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract unregisterForDataServiceStateChanged(Landroid/os/Handler;)V
.end method
