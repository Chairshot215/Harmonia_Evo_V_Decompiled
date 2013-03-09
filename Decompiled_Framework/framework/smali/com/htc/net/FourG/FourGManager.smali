.class public abstract Lcom/htc/net/FourG/FourGManager;
.super Ljava/lang/Object;
.source "FourGManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/FourGManager$1;,
        Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;,
        Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;,
        Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;,
        Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;,
        Lcom/htc/net/FourG/FourGManager$FourGLock;
    }
.end annotation


# static fields
.field public static final CINR_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.CINR_CHANGED"

.field public static final ERROR_ALREADY_CONNECTED:I = -0x5

.field public static final ERROR_AUTHENTICATING:I = -0x1

.field public static final ERROR_DEVICE_NOT_PROVISIONED:I = -0x8

.field public static final ERROR_DEVICE_PROVISIONING_DATA_ERROR:I = -0x9

.field public static final ERROR_INVALID_DEVICE_PROFILE:I = -0xa

.field public static final ERROR_NO_COVERAGE_AVAILABLE:I = -0x6

.field public static final ERROR_OPERATION_ALREADY_IN_PROGRESS:I = -0xb

.field public static final ERROR_OPERATION_NOT_ALLOWED:I = -0xc

.field public static final ERROR_RADIO_OFF:I = -0xe

.field public static final ERROR_RADIO_POLICY_VIOLATION:I = -0xd

.field public static final ERROR_ROAMING_NOT_ALLOWED:I = -0x7

.field public static final ERROR_SCAN_NOT_ALLOWED_NOW_NETWORK_IMPACTS:I = -0x3

.field public static final ERROR_SCAN_NOT_ALLOWED_NOW_NETWORK_MGMT_PROHIBITED:I = -0x4

.field public static final ERROR_SCAN_NOT_ALLOWED_NOW_UE_DATA_XFER_IMPACTS:I = -0x2

.field public static final EXTRA_4G_CURRENT_SERVING_BS:Ljava/lang/String; = "4g_current_serving_bs"

.field public static final EXTRA_4G_INFO:Ljava/lang/String; = "4g_info"

.field public static final EXTRA_4G_PREVIOUS_SERVING_BS:Ljava/lang/String; = "4g_previous_serving_bs"

.field public static final EXTRA_4G_STATE:Ljava/lang/String; = "4g_state"

.field public static final EXTRA_CURRENT_RADIO_TEMPERATURE:Ljava/lang/String; = "current_radio_temperature"

.field public static final EXTRA_DOWNLINK_MODULATION:Ljava/lang/String; = "downlink_modulation"

.field public static final EXTRA_DOWNLINK_THROUGHPUT:Ljava/lang/String; = "downlink_throughput"

.field public static final EXTRA_HANDOVER_FAILURE_REASON:Ljava/lang/String; = "handover_failure_reason"

.field public static final EXTRA_LINK_STATE_DETAIL:Ljava/lang/String; = "link_state_detail"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "network_info"

.field public static final EXTRA_NEW_4G_STATE:Ljava/lang/String; = "new_4g_state"

.field public static final EXTRA_NEW_CINR:Ljava/lang/String; = "new_cinr"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "new_rssi"

.field public static final EXTRA_PREVIOUS_4G_STATE:Ljava/lang/String; = "previous_4g_state"

.field public static final EXTRA_SCAN_RESULT_BS_LIST:Ljava/lang/String; = "scan_result_bs_list"

.field public static final EXTRA_SERVICE_FLOW:Ljava/lang/String; = "service_flow"

.field public static final EXTRA_SF_SCHEDULING_CLASS:Ljava/lang/String; = "sf_scheduling_class"

.field public static final EXTRA_SF_STATE:Ljava/lang/String; = "sf_state"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicant_error"

.field public static final EXTRA_UPLINK_MODULATION:Ljava/lang/String; = "uplink_modulation"

.field public static final EXTRA_UPLINK_THROUGHPUT:Ljava/lang/String; = "uplink_throughput"

.field public static final KEY_CINR_CHANGED:Ljava/lang/String; = "com.htc.net.FourG.KEY_CINR_CHANGE"

.field public static final KEY_CINR_DELTA_THRESHOLD:Ljava/lang/String; = "com.htc.net.FourG.KEY_CINR_DELTA_THRESHOLD"

.field public static final KEY_CINR_MAX_THRESHOLD:Ljava/lang/String; = "com.htc.net.FourG.KEY_CINR_MAX_THRESHOLD"

.field public static final KEY_CINR_MIN_THRESHOLD:Ljava/lang/String; = "com.htc.net.FourG.KEY_CINR_MIN_THRESHOLD"

.field public static final KEY_CINR_PERIODIC_ALERT:Ljava/lang/String; = "com.htc.net.FourG.KEY_CINR_PERIODIC_ALERT"

.field public static final KEY_NEW_CINR:Ljava/lang/String; = "com.htc.net.FourG.KEY_NEW_CINR"

.field public static final KEY_NEW_RSSI:Ljava/lang/String; = "com.htc.net.FourG.KEY_NEW_RSSI"

.field public static final KEY_RSSI_CHANGED:Ljava/lang/String; = "com.htc.net.FourG.KEY_RSSI_CHANGE"

.field public static final KEY_RSSI_DELTA_THRESHOLD:Ljava/lang/String; = "com.htc.net.FourG.KEY_RSSI_DELTA_THRESHOLD"

.field public static final KEY_RSSI_MAX_THRESHOLD:Ljava/lang/String; = "com.htc.net.FourG.KEY_RSSI_MAX_THRESHOLD"

.field public static final KEY_RSSI_MIN_THRESHOLD:Ljava/lang/String; = "com.htc.net.FourG.KEY_RSSI_MIN_THRESHOLD"

.field public static final KEY_RSSI_PERIODIC_ALERT:Ljava/lang/String; = "com.htc.net.FourG.KEY_RSSI_PERIODIC_ALERT"

.field public static final LINK_MODULATION_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.LINK_MODULATION_CHANGED"

.field public static final LINK_STATE_DETAIL_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.LINK_STATE_DETAIL_CHANGED"

.field public static final LOG_DEBUG:I = 0x4

.field public static final LOG_ERROR:I = 0x2

.field public static final LOG_FATAL:I = 0x1

.field public static final LOG_WARNING:I = 0x3

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.STATE_CHANGE"

.field public static final NET_4G_HANDOVER_COMPLETE_ACTION:Ljava/lang/String; = "com.htc.net.FourG.NET_4G_HANDOVER_COMPLETE"

.field public static final NET_4G_HANDOVER_FAILED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.NET_4G_HANDOVER_FAILED"

.field public static final NET_4G_RADIO_OVERHEAT_ACTION:Ljava/lang/String; = "com.htc.net.FourG.NET_4G_RADIO_OVERHEAT"

.field public static final NET_4G_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.NET_4G_STATE_CHANGED"

.field public static final NET_4G_STATE_DISABLED:I = 0x1

.field public static final NET_4G_STATE_DISABLING:I = 0x2

.field public static final NET_4G_STATE_ENABLED:I = 0x3

.field public static final NET_4G_STATE_ENABLING:I = 0x4

.field public static final NET_4G_STATE_UNKNOWN:I = 0x0

.field public static final QOS_SERVICE_FLOW_MODIFIED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.QOS_SERVICE_FLOW_MODIFIED"

.field public static final QOS_SERVICE_FLOW_STATE_CHANGE_ACTION:Ljava/lang/String; = "com.htc.net.FourG.QOS_SERVICE_FLOW_STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.FourG.SCAN_RESULTS_AVAILABLE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.FourG.SUPPLICANT_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "FourGManager"

.field protected static final maxCINR:I = 0x35

.field protected static final maxRSSI:I = -0x28

.field protected static final minCINR:I = -0xa

.field protected static final minRSSI:I = -0x7b


# instance fields
.field protected disconnectReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field protected isRoaming:Z

.field protected lastError:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGManager;->logLevel:I

    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGManager;->disconnectReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGManager;->lastError:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager;->isRoaming:Z

    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 1

    const/16 v0, -0x7b

    if-ge p0, v0, :cond_0

    const/16 p0, -0x7b

    :cond_0
    const/16 v0, -0x28

    if-le p0, v0, :cond_1

    const/16 p0, -0x28

    :cond_1
    add-int/lit8 v0, p0, 0x7b

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x53

    return v0
.end method

.method public static calculateSignalLevel(III)I
    .locals 1

    invoke-static {p0, p2}, Lcom/htc/net/FourG/FourGManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public static compareSignalLevel(II)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copmareCinrLevel(II)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNetwork(Lcom/htc/net/FourG/FourGConfiguration;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public connectDefaultNetwork()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public createConnectionStatistics()Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createFourGLock(Ljava/lang/String;)Lcom/htc/net/FourG/FourGManager$FourGLock;
    .locals 2

    new-instance v0, Lcom/htc/net/FourG/FourGManager$FourGLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/net/FourG/FourGManager$FourGLock;-><init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;Lcom/htc/net/FourG/FourGManager$1;)V

    return-object v0
.end method

.method public abstract createQosServiceFlowControl()Lcom/htc/net/FourG/FourGManager$QosServiceFlowControl;
.end method

.method public disableNetwork(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGManager;->logLevel:I

    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get4GState()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGManager;->getConnectionInfo()Lcom/htc/net/FourG/FourGInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGInfo;->get4GState()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getAvailableNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfiguredDefaultNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfiguredNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionInfo()Lcom/htc/net/FourG/FourGInfo;
.end method

.method public getDeviceInformation()Lcom/htc/net/FourG/DeviceInfo;
    .locals 1

    new-instance v0, Lcom/htc/net/FourG/DeviceInfo;

    invoke-direct {v0}, Lcom/htc/net/FourG/DeviceInfo;-><init>()V

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    return-object v0
.end method

.method public getDisconnectReason()Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGManager;->disconnectReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGManager;->lastError:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRadioInfoTemperature()Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScanResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/FourG/FourGBaseStationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getScanResultsAge()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public is4GEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGManager;->get4GState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoamingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager;->isRoaming:Z

    return v0
.end method

.method public reassociate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeCinrAlert(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public removeNetwork(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeRssiAlert(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestCinrAlerts(IIIILandroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestRssiAlerts(IIIILandroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public saveConfiguration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set4GEnabled(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRoamingEnabled(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGManager;->isRoaming:Z

    const/4 v0, 0x0

    return v0
.end method

.method public startNeighborListScan(ZLcom/htc/net/FourG/FourGManager$RtdRequestedSpec;Z)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateNetwork(Lcom/htc/net/FourG/FourGConfiguration;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
