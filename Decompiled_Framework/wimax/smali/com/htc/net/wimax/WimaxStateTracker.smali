.class public Lcom/htc/net/wimax/WimaxStateTracker;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;,
        Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;,
        Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;,
        Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;
    }
.end annotation


# static fields
.field private static final DISCONNECT_DELAY_MSECS:I = 0x3a98

.field private static final DM_COMMAND_LENGTH:I = 0xa

.field private static final DM_DATA_MAX_BYTES:I = 0x20

.field private static final DM_INDEX_0:Ljava/lang/String; = "00"

.field private static final DM_INDEX_1:Ljava/lang/String; = "01"

.field private static final DM_PARAM_DATA_OFFSET:I = 0xc

.field private static final DM_PARAM_DATA_OFFSET_NEXT1:I = 0x4e

.field private static final DM_PARAM_LENGTH_LENGTH:I = 0x2

.field private static final DM_PARAM_LENGTH_OFFSET:I = 0xa

.field private static final DM_PARAM_LENGTH_OFFSET_NEXT1:I = 0x4c

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0x9c57

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0x9c58

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0x9c55

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0x9c59

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0x9c56

.field private static final EVENT_BACKOFF_STATE:I = 0xf

.field private static final EVENT_BS_FOUND:I = 0x16

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xc

.field private static final EVENT_DHCP_START:I = 0x7

.field private static final EVENT_DISABLE_WIMAX:I = 0x14

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0x8

.field public static final EVENT_DUAL_MODE_SWITCH:I = 0x8

.field private static final EVENT_ENTRY_CRITERIA:I = 0x17

.field private static final EVENT_EXIT_CRITERIA:I = 0x18

.field private static final EVENT_HANDOVER_FAILED:I = 0x13

.field private static final EVENT_HANDOVER_STARTED:I = 0x11

.field private static final EVENT_HANDOVER_SUCCESSED:I = 0x12

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0xb

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0xa

.field private static final EVENT_INVALID:I = 0x0

.field private static final EVENT_MS_READY_TIMEOUT:I = 0x15

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0x9

.field private static final EVENT_POLL_INTERVAL:I = 0x6

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SCAN_ROUND_COMPLETE:I = 0x10

.field private static final EVENT_SET_MAX_BLOCKING_INTERVAL:I = 0xd

.field private static final EVENT_STARTSS:I = 0xe

.field private static final EVENT_WXCM_CONNECTION:I = 0x1

.field private static final EVENT_WXCM_DISCONNECT:I = 0x2

.field private static final EVENT_WXCM_STATE_CHANGED:I = 0x3

.field private static final EXPRESS_DM_DEFAULT_NAI_ID_INDEX:Ljava/lang/String; = "D101"

.field private static final EXPRESS_DM_DEFAULT_NAI_PWD_INDEX:Ljava/lang/String; = "551F"

.field private static final IOCTL_CMD_BASE:I = 0x41

.field private static final IOCTL_DROP_PACKET:I = 0x41

.field private static LOCAL_LOGD:Z = false

.field private static final LOG_DEBUG:I = 0x4

.field private static final LOG_ERROR:I = 0x2

.field private static final LOG_FATAL:I = 0x1

.field private static final LOG_WARNING:I = 0x3

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_NETWORK_SERACHING_MSECS:I = 0x3a98

.field private static final MAX_SS_UNINITIALIZED_MSECS:I = 0x3a98

.field private static final MS_READY_TIMEOUT_MSECS:I = 0x7530

.field private static final NDS_CONNECTED:I = 0xfa4

.field private static final NDS_CONNECTING:I = 0xfa3

.field private static final NDS_DISCONNECTED:I = 0xfa1

.field private static final NDS_SCANNING:I = 0xfa2

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static final POLL_DHCP_STATUS_INTERVAL_MSECS:I = 0x3e8

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final PREFIX_DM_READ:Ljava/lang/String; = "C826"

.field private static final PREFIX_DM_WRITE:Ljava/lang/String; = "C827"

.field private static final SET_BLOCKING_INTERVAL_TIMEOUT_MSECS:I = 0x3a980

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I = 0x0

.field private static final SUC_K_DM_ACTIVE_NAI_SET:Ljava/lang/String; = "7C1F"

.field private static final SUC_K_DM_DEFAULT_NAI_ID_INDEX:Ljava/lang/String; = "8E03"

.field private static final SUC_K_DM_DEFAULT_NAI_PWD_INDEX:Ljava/lang/String; = "8A03"

.field private static final SUC_K_DM_MANUAL_NAI_ID_INDEX:Ljava/lang/String; = "7D1F"

.field private static final SUC_K_DM_MANUAL_NAI_PWD_INDEX:Ljava/lang/String; = "7E1F"

.field private static final TAG:Ljava/lang/String; = "WimaxStateTracker"

.field public static isSimMode:Z

.field private static logLevel:I

.field private static sDhcpProps:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BsFound:Z

.field public authenticationLock:Z

.field public bBackoffState:Z

.field public bBackupSequansdLog:Z

.field bBlockWimax:Z

.field bBtEnabled:Z

.field public bDumpConnectionDropLog:Z

.field bEnableDDTM:Z

.field private bEnableForceIdle:Z

.field private bHandoverStart:Z

.field bImplementDDTM:Z

.field public bInThp:Z

.field private bIsEnableAuthFailed:Z

.field private bIsEnableDunMode:Z

.field private bIsEnableNoNetwork:Z

.field private bIsEnableUninitialized:Z

.field private bIsEnablingIDLE:Z

.field private bIsEverConnecting:Z

.field private bIsEverOperational:Z

.field private bIsIdleState:Z

.field bIsInAirplaneMode:Z

.field bIsInEmergencyCall:Z

.field private bIsMsDetachNormal:Z

.field private bIsNaiRejectSend:Z

.field private bIsPrivateNetwork:Z

.field private bIsToggling:Z

.field bNeedToCheckStartSs:Z

.field bNeedToPollDhcp:Z

.field bNeedToRetryStartSs:Z

.field public bPollingThreadAlive:Z

.field private bPrintSecurityData:Z

.field private bReleaseKey:Z

.field private bSequansdReady:Z

.field public bStaticIpEnabled:Z

.field public bWaitSequansd:Z

.field bWifiEnabled:Z

.field bWimaxCannotTurnOff:Z

.field public bWimaxShutdowning:Z

.field bWimaxTurnedOffByAirplaneMode:Z

.field bWimaxTurnedOffByEmergencyCall:Z

.field bWimaxTurnedOnBlockedByAirplaneMode:Z

.field private bsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sqn/dcc/ScanResultExtBand;",
            ">;"
        }
    .end annotation
.end field

.field bs_freq:J

.field bs_mac:J

.field public cdmaNaiPassword:Ljava/lang/String;

.field public cdmaNaiUsername:Ljava/lang/String;

.field private cm:Landroid/net/ConnectivityManager;

.field private currentNdsState:I

.field private currentScanResult:Lcom/sqn/dcc/ScanResultExtBand;

.field public dhcpRenewLock:Z

.field public disableWimaxLock:Z

.field public enableWimaxLock:Z

.field private entryCinr:I

.field private entryRssi:I

.field gatewayRoute:I

.field private handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

.field private handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

.field iPendingWimaxState:I

.field private idleTimeout:Ljava/lang/String;

.field private isConnecting:Z

.field private isEapFailure:Z

.field private isEverConnected:Z

.field private isForceScan:Z

.field private isLocked:Z

.field private isMeetEntry:Z

.field private isStopWimax:Z

.field private mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

.field protected mContext:Landroid/content/Context;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpTarget:Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;

.field private mDisconnectPending:Z

.field private mDriverIsStopped:Z

.field private mHaveIPAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mLastAkaNtfCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastEapNtfMsg:Ljava/lang/String;

.field private mLastSignalLevel:I

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkPropertiesSync:Ljava/lang/Object;

.field private mLockSync:Ljava/lang/Object;

.field private mNeedRenewIP:Z

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObtainingIPAddress:Z

.field private mPasswordKeyMayBeIncorrect:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReconnectCount:I

.field private mScanResultExtBand:Lcom/sqn/dcc/ScanResultExtBand;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultsUpdateTime:J

.field protected mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTornDownByConnMgr:Z

.field private mWimax4GConfiguration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWimax4GConfigurationDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

.field private mWimax4GState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

.field private mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;

.field private mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

.field private mWimaxMonitor:Lcom/htc/net/wimax/WimaxMonitor;

.field private mWimaxState:I

.field private mWimaxTarget:Landroid/os/Handler;

.field nap_id:J

.field public needPoll:Z

.field public needReboot:Z

.field public needSetDhcpRenewAlarm:Z

.field private newSignalLevel:I

.field private noBsRound:I

.field private nspNameTable:Ljava/util/Hashtable;

.field nsp_id:J

.field private nwService:Landroid/os/INetworkManagementService;

.field private pollDhcpPollingTimesForNoDns:I

.field private retryCount:I

.field public scanRetryLock:Z

.field private scanRound:I

.field private shouldAuth:Z

.field stopWimaxTemporarily:Z

.field public thpFailcount:I

.field private waitTimeMsec:I

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    const/4 v0, 0x4

    sput v0, Lcom/htc/net/wimax/WimaxStateTracker;->logLevel:I

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    sput-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->isSimMode:Z

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResultsUpdateTime:J

    sget-object v3, Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;->INVALID:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    iput-wide v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_mac:J

    iput-wide v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nap_id:J

    iput-wide v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    iput-wide v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_freq:J

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiUsername:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiPassword:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mPasswordKeyMayBeIncorrect:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNeedRenewIP:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsMsDetachNormal:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableNoNetwork:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableAuthFailed:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableUninitialized:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEverOperational:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEverConnecting:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnablingIDLE:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableForceIdle:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsIdleState:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableDunMode:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsNaiRejectSend:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->shouldAuth:Z

    iput v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastSignalLevel:I

    iput v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->newSignalLevel:I

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->gatewayRoute:I

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->stopWimaxTemporarily:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBlockWimax:Z

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bImplementDDTM:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableDDTM:Z

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBtEnabled:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOffByAirplaneMode:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOnBlockedByAirplaneMode:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInAirplaneMode:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOffByEmergencyCall:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInEmergencyCall:Z

    iput v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->iPendingWimaxState:I

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToCheckStartSs:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToRetryStartSs:Z

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->BsFound:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastAkaNtfCode:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastEapNtfMsg:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needReboot:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxLock:Z

    iput-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needSetDhcpRenewAlarm:Z

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->thpFailcount:I

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPollingThreadAlive:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackupSequansdLog:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWaitSequansd:Z

    const-string v3, "60"

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bHandoverStart:Z

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bSequansdReady:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsPrivateNetwork:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsToggling:Z

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v3, Landroid/net/NetworkInfo;

    const/4 v4, 0x6

    const-string v5, "WIMAX"

    const-string v6, ""

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-virtual {p0, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->setTeardownRequested(Z)V

    const/4 v3, 0x4

    const-string v4, "WimaxStateTracker init"

    invoke-static {v3, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->LOG(ILjava/lang/String;)V

    iput v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxState:I

    new-instance v3, Lcom/htc/net/wimax/WimaxMonitor;

    invoke-direct {v3, p0}, Lcom/htc/net/wimax/WimaxMonitor;-><init>(Lcom/htc/net/wimax/WimaxStateTracker;)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxMonitor:Lcom/htc/net/wimax/WimaxMonitor;

    new-instance v3, Lcom/htc/net/wimax/WimaxInfo;

    invoke-direct {v3}, Lcom/htc/net/wimax/WimaxInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-direct {p0, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    iput-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z

    new-instance v3, Landroid/net/DhcpInfo;

    invoke-direct {v3}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    new-instance v3, Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-direct {v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    new-instance v3, Lcom/htc/net/FourG/DeviceInfo;

    invoke-direct {v3}, Lcom/htc/net/FourG/DeviceInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    const/16 v3, 0xfa1

    iput v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->currentNdsState:I

    iput v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->waitTimeMsec:I

    const-string v3, "wimax0"

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    sput-object v3, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setInterface(Ljava/lang/String;)V

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ipaddress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gateway"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mask"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".leasetime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".reason"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sput-object v3, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    new-instance v3, Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    invoke-direct {v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    invoke-virtual {v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->openConnection()Z

    :goto_0
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkPropertiesSync:Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v3, "WimaxStateTracker"

    invoke-virtual {v1, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxMonitor:Lcom/htc/net/wimax/WimaxMonitor;

    invoke-static {v3}, Lcom/htc/net/wimax/WimaxCustomize;->getApiInstance(Lcom/htc/net/wimax/WimaxEventObserver;)Lcom/htc/net/wimax/Wimax4GApi;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsMfgBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    :goto_1
    invoke-direct {p0, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Long;

    const-string v5, "2"

    invoke-direct {v4, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v6, "Sprint"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Long;

    const-string v5, "20"

    invoke-direct {v4, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v6, "KDDI"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WimaxStateTracker"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker$WimaxHandler;-><init>(Lcom/htc/net/wimax/WimaxStateTracker;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    return-void

    :cond_0
    const-string v3, "WimaxStateTracker"

    const-string v4, "mConn == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->HaveSimLock()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    goto :goto_1

    :cond_2
    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    goto :goto_1
.end method

.method private static LOG(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/htc/net/wimax/WimaxStateTracker;->logLevel:I

    if-lt v0, p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "WimaxStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "WimaxStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/sqn/dcc/swmSsState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->handleStateChange(Lcom/sqn/dcc/swmSsState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->handleBsFoundNotification(Lcom/sqn/dcc/ScanResultExtBand;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->handleInterfaceConfigurationSuccess()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateHandoverInfo()V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/net/wimax/WimaxStateTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bHandoverStart:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/HTCWimax4GInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/net/wimax/WimaxStateTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->handleHandoverSucceeded(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/net/wimax/WimaxStateTracker;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/net/wimax/WimaxStateTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/net/wimax/WimaxStateTracker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->handleScanRoundComplete()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/net/wimax/WimaxStateTracker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimax()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/net/wimax/WimaxStateTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/net/wimax/WimaxStateTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/net/wimax/WimaxStateTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/net/wimax/WimaxStateTracker;Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->handleEnterCriteriaNotification(Lcom/sqn/dcc/ScanResultExtBand;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->handleExitCriteriaNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/net/wimax/WimaxStateTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->handleBackoffStarted(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->handlePollingMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/net/wimax/WimaxStateTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setSsState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/net/wimax/WimaxStateTracker;)Lcom/htc/net/wimax/WimaxInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    return-object v0
.end method

.method private backupSequansdLog()V
    .locals 5

    new-instance v1, Ljava/io/File;

    const-string v3, "/data/wimax/log/sequansd.log"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v0, v3, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/wimax/log/sequansd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackupSequansdLog:Z

    return-void
.end method

.method private cancelDisconnect()V
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "cancelDisconnect +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDisconnectPending:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "WimaxStateTracker"

    const-string v1, "cancelDisconnect -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearDhcpProperties()V
    .locals 4

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "clearDhcpProperties+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WimaxStateTracker"

    const-string v3, "clearDhcpProperties-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private clearLinkProperties()V
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkPropertiesSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "WimaxStateTracker"

    const-string v2, "clearLinkProperties"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearWimax4GInfo()V
    .locals 2

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private configureInterface()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "configureInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->waitTimeMsec:I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mObtainingIPAddress:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mObtainingIPAddress:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpTarget:Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/net/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private configureLinkProperties()V
    .locals 11

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkPropertiesSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string v7, "WimaxStateTracker"

    const-string v9, "configureLinkProperties"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    const/4 v5, 0x0

    sget-object v7, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v7, v7, v9

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "255.255.255.255"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    const/16 v5, 0x20

    :cond_0
    :goto_0
    :try_start_1
    sget-object v7, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v7, v7, v9

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "WimaxStateTracker"

    const-string v9, "[Waring]) ipAddress length == 0"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    sget-object v7, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "WimaxStateTracker"

    const-string v9, "[Waring]) dns0 length == 0"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v7, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v7, v7, v9

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "WimaxStateTracker"

    const-string v9, "[Waring]) dns1 length == 0"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v7, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v7, v7, v9

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "WimaxStateTracker"

    const-string v9, "[Waring]) gateway length == 0"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    monitor-exit v8

    return-void

    :cond_1
    const-string v7, "255.255.255"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v5, 0x18

    goto :goto_0

    :cond_2
    const-string v7, "255.255"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v5, 0x10

    goto :goto_0

    :cond_3
    const-string v7, "255"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    const/16 v5, 0x8

    goto/16 :goto_0

    :cond_4
    :try_start_5
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v9, Landroid/net/LinkAddress;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_6
    const-string v7, "WimaxStateTracker"

    const-string v9, "configureLinkProperties: ip address strings transfer to bytes error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    :cond_5
    :try_start_7
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_8
    const-string v7, "WimaxStateTracker"

    const-string v9, "configureLinkProperties: DNS strings transfer to bytes error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_9
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :cond_7
    :try_start_a
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v9, Landroid/net/RouteInfo;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v7, v9}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_b
    const-string v7, "WimaxStateTracker"

    const-string v9, "configureLinkProperties: Gateway strings transfer to bytes error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4
.end method

.method private connectToBS(Lcom/sqn/dcc/ScanResultExtBand;)Z
    .locals 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v11, :cond_2

    :cond_0
    const-string v10, "WimaxStateTracker"

    const-string v11, "connectToBS: WiMAX is already turned off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v9

    :cond_2
    if-eqz p1, :cond_1

    const/4 v8, 0x0

    new-instance v7, Lcom/htc/net/wimax/ParcelableInteger;

    const/4 v11, -0x1

    invoke-direct {v7, v11}, Lcom/htc/net/wimax/ParcelableInteger;-><init>(I)V

    iget-object v11, p1, Lcom/sqn/dcc/ScanResultExtBand;->nspId:[J

    array-length v11, v11

    if-lez v11, :cond_3

    iget-object v11, p1, Lcom/sqn/dcc/ScanResultExtBand;->nspId:[J

    aget-wide v11, v11, v9

    long-to-int v0, v11

    :goto_1
    iget v11, p1, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    int-to-long v1, v11

    iget v11, p1, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    int-to-long v3, v11

    iget-short v5, p1, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    iget-wide v11, p1, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    long-to-int v6, v11

    const-string v11, "WimaxStateTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wimax.ConnectToNetworkExt(bandId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", freqId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pbId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", napId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static/range {v0 .. v7}, Lcom/htc/net/wimax/WimaxDcc;->ndssConnectToNetworkExt(IJJSILcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v8

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v11

    if-nez v11, :cond_4

    move v9, v10

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v10, "WimaxStateTracker"

    const-string v11, "Wimax.ConnectToNetworkExt failed!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertByteToInt([B)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-le v2, v0, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private disableAuthFromProp()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.auth"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private disableDhcp()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "WimaxStateTracker"

    const-string v4, "disableDhcp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsMsDetachNormal:Z

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->resetInterface()V

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->StopDhcpWimax()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "all"

    const-string v4, "all"

    const-string v5, "wimax"

    const/16 v6, 0xc1c

    invoke-static {v3, v4, v5, v6}, Landroid/net/NetworkUtils;->delRoutingRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->clearDhcpProperties()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateDhcpInfo()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GIpAddress()V

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNeedRenewIP:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needSetDhcpRenewAlarm:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->cancelAlarmDhcpRenew()V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DoWimaxDhcpRelease()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WimaxStateTracker"

    const-string v4, "release Dhcp failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v3, "WimaxStateTracker"

    const-string v4, "skip release Dhcp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private disableWimax()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "WimaxStateTracker"

    const-string v2, "disableWimax"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needReboot:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsNaiRejectSend:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsPrivateNetwork:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastAkaNtfCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastEapNtfMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    if-ne v1, v5, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v3, "disableWimax : release scanRetry lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    if-ne v1, v5, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v3, "disableWimax : release authentication lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    :cond_1
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    if-ne v1, v5, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v3, "disableWimax : release dhcpRenew lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    :cond_2
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxLock:Z

    if-nez v1, :cond_3

    const-string v1, "WimaxStateTracker"

    const-string v3, "disableWimaxBegin=>wl.acquire"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxLock:Z

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isMfgFw()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-eqz v1, :cond_4

    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPollingThreadAlive:Z

    if-eqz v1, :cond_6

    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPollingThreadAlive:Z

    if-eqz v1, :cond_8

    const-string v1, "WimaxStateTracker"

    const-string v2, "Polling thread is stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableDDTM:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v2, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    const-string v2, "AT+HTC_WIMAX_IDLE=1"

    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    invoke-virtual {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    const-string v1, "wimax.disable.delay"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "WimaxStateTracker"

    const-string v2, "disableWimax: delay 500ms after stopss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1f4

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    :cond_a
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    const-string v1, "WimaxStateTracker"

    const-string v2, "disableWimax: Disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v1}, Lcom/htc/net/wimax/Wimax4GApi;->stopService()Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->clearWimax4GInfo()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setBtNormal()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWifiNormal()V

    :cond_b
    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->StopDaemon()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "WimaxStateTracker"

    const-string v2, "Failed to stop Wimax daemon"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bSequansdReady:Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->terminateSequansd()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "WimaxStateTracker"

    const-string v2, "Failed to terminate sequansd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v1, :cond_d

    const-string v1, "WimaxStateTracker"

    const-string v2, "BUG: TURN OFF WIMAX FAIL!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpKmsg()Z

    :cond_d
    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyResetSignalLevel()V

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->UnloadDriver()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "WimaxStateTracker"

    const-string v2, "Failed to unload Wimax driver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v1, :cond_e

    const-string v1, "WimaxStateTracker"

    const-string v2, "BUG: TURN OFF WIMAX FAIL!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpKmsg()Z

    :cond_e
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxLock:Z

    if-ne v1, v5, :cond_f

    const-string v1, "WimaxStateTracker"

    const-string v3, "disableWimaxEnd=>wl.release"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxLock:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackupSequansdLog:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->backupSequansdLog()V

    :cond_10
    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V

    return v5

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO from Ascii("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to String("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v4, ""

    :goto_0
    if-gt v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v1, v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OoO from String("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to Ascii("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private findProcessByName(Ljava/lang/String;)I
    .locals 9

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v6, "/proc"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_0

    aget v6, v2, v1

    if-lez v6, :cond_4

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget v5, v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    move-object v3, v4

    goto :goto_2
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "isOtherConnectionAvailable: couldn\'t get Connectivity Manager of System Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBackoffStarted(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NdsBackoffStarted is invoked: bsFound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": wimax is diable!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->OUTOFFZONE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    :cond_2
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NdsBackoffStarted is invoked bsFound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->checkState()V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "WimaxStateTracker"

    const-string v2, "NdsBackoffStarted: bs list is not empty, ignore backoff ntf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleBsFoundNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "WimaxStateTracker"

    const-string v2, "NdsBsFoundExtBandNotification: wimax is disable!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NdsBsFoundExtBandNotification: bandIdx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " freqIdx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pbIdx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " napId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rssi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cinr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->cinr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cinrR1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cinrR3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->cinrR3:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NdsBsFoundExtBandNotification: nsp id array size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->nspId:[J

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NdsBsFoundExtBandNotification: nsp name array size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sqn/dcc/ScanResultExtBand;->nspName:[Lcom/sqn/dcc/StaticArray_char_128;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->BsFound:Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->ConnectBaseOnScanResult()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->EnableDualMode()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isOtherConnectionAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "NdsBsFoundNotification: no data connection, connect to WIMAX ASAP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableConnect()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-eqz v1, :cond_9

    const-string v1, "WimaxStateTracker"

    const-string v2, "NdsBsFoundNotification: already connecting: add into bs list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    if-eqz v1, :cond_7

    const-string v1, "WimaxStateTracker"

    const-string v2, "NdsBsFoundNotification: force scan is enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_5
    :goto_2
    if-eqz v0, :cond_3

    iget v1, p1, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    iget v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    if-le v1, v2, :cond_6

    iget v1, p1, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    iget v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    if-gt v1, v2, :cond_3

    :cond_6
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NdsBsFoundNotification: skip this BS due to entry criteria ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    if-nez v1, :cond_5

    const-string v1, "WimaxStateTracker"

    const-string v2, "NdsBsFoundNotification: first time connect ot WiMAX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->connectToBS(Lcom/sqn/dcc/ScanResultExtBand;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "Deconfiguring wimax interface and stopping DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDisconnectPending:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->cancelDisconnect()V

    :cond_1
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/WimaxInfo;->setNapId(I)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v1, v3}, Lcom/htc/net/wimax/WimaxInfo;->setNspId(I)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v1, v4, v5}, Lcom/htc/net/wimax/WimaxInfo;->setBsMacAddress(J)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v1, v4, v5}, Lcom/htc/net/wimax/WimaxInfo;->setFrequency(J)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->resetInterface()V

    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "networkInfo"

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private handleEnterCriteriaNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->EnableDualMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "NdsAutodetectEnterCriteriaExtBandNotification: wimax is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NdsAutodetectEnterCriteriaExtBandNotification: bandIdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freqIdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pbIdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " napId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rssi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cinrR1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->BsFound:Z

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResultExtBand:Lcom/sqn/dcc/ScanResultExtBand;

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->ConnectBaseOnScanResult()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableConnect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isOtherConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-eqz v0, :cond_3

    const-string v0, "WimaxStateTracker"

    const-string v1, "NdsAutodetectEntryCriteriaNotification: already connecting: add into bs list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->connectToBS(Lcom/sqn/dcc/ScanResultExtBand;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleExitCriteriaNotification()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->EnableDualMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "NdsAutodetectExitCriteriaNotification: wimax is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "WimaxStateTracker"

    const-string v1, "NdsAutodetectExitCriteriaNotification is invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTarget:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleHandoverSucceeded(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandoverSucceededNotification: needRenewingIp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bHandoverStart:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "handover successed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateHandoverInfo()V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v1, v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->set4GBaseStationInfoPrevious(Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GServingBsInfo()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.FourG.NET_4G_HANDOVER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "4g_current_serving_bs"

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "4g_previous_serving_bs"

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bHandoverStart:Z

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverTarget:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    iput-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->handoverOrigin:Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    :cond_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    if-nez v1, :cond_3

    const-string v1, "WimaxStateTracker"

    const-string v3, "HOSucceededNtf : get dhcpRenew lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "HOSucceededNtf : Renew Dhcp then clean DNS and mask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    :cond_4
    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DoWimaxDhcpRequest()Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNeedRenewIP:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needSetDhcpRenewAlarm:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleInterfaceConfigurationSuccess()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, "WimaxStateTracker"

    const-string v2, "handleMessage EVENT_INTERFACE_CONFIGURATION_SUCCEEDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needSetDhcpRenewAlarm:Z

    if-ne v1, v4, :cond_0

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needSetDhcpRenewAlarm:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setupDhcpRenewAlarm()V

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateDhcpInfo()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GIpAddress()V

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    const/4 v0, 0x0

    const-string v1, "wimax.idle.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WimaxStateTracker"

    const-string v2, "set idle timer to default value(10s)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setupIdleMode()Z

    sget-object v1, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->AWAKE:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->configureLinkProperties()V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNeedRenewIP:Z

    invoke-direct {p0, v1, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNeedRenewIP:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    iget v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->newSignalLevel:I

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->sendSignalStrengthChangeBroadcast(I)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_6

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v2, "mNetworkInfo.getDetailedState() != DetailedState.CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    if-ne v1, v4, :cond_3

    const-string v1, "WimaxStateTracker"

    const-string v3, "getDhcp : release scanRetry lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    if-ne v1, v4, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v3, "getDhcp : release authentication lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    :cond_4
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    if-ne v1, v4, :cond_5

    const-string v1, "WimaxStateTracker"

    const-string v3, "getDhcp : release dhcpRenew lock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v2, "mNetworkInfo.getDetailedState() == DetailedState.CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handlePollingMessage()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/16 v11, 0xc1c

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPollingThreadAlive:Z

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "poll dhcp after timeout --- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    aget-object v6, v6, v13

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "poll dhcp after timeout --- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    aget-object v8, v8, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    aget-object v6, v6, v12

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ip_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", gateway_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "WimaxStateTracker"

    const-string v7, "get dhcp ip -> stop polling dhcp"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "all"

    const-string v7, "all"

    const-string v8, "wimax"

    invoke-static {v6, v7, v8, v11}, Landroid/net/NetworkUtils;->delRoutingRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const-string v6, "all"

    const-string v7, "all"

    const-string v8, "wimax"

    invoke-static {v6, v7, v8, v11}, Landroid/net/NetworkUtils;->addRoutingRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const-string v6, "wimax"

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Landroid/net/NetworkUtils;->addRoutingTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->needSetRoute()Z

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->AddRouteToGateway()Z

    :cond_0
    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->broadcastConnected()V

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    if-gt v6, v9, :cond_7

    const-string v6, "WimaxStateTracker"

    const-string v7, "pollDhcpPollingTimesForNoDns <= 1 -> stop polling dhcp"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "all"

    const-string v7, "all"

    const-string v8, "wimax"

    invoke-static {v6, v7, v8, v11}, Landroid/net/NetworkUtils;->delRoutingRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const-string v6, "all"

    const-string v7, "all"

    const-string v8, "wimax"

    invoke-static {v6, v7, v8, v11}, Landroid/net/NetworkUtils;->addRoutingRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    const-string v6, "wimax"

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Landroid/net/NetworkUtils;->addRoutingTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->needSetRoute()Z

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->AddRouteToGateway()Z

    :cond_2
    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    iput v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhcp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0.0.0.0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->broadcastConnected()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-nez v6, :cond_a

    const-string v6, "WimaxStateTracker"

    const-string v7, "GetAvailableMs"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sqn/dcc/OutArray;

    invoke-direct {v3}, Lcom/sqn/dcc/OutArray;-><init>()V

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v3}, Lcom/sqn/dcc/Internal;->GetAvailableMs(Lcom/sqn/dcc/OutArray;)I

    move-result v4

    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-nez v4, :cond_4

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needReboot:Z

    if-eqz v6, :cond_9

    :cond_4
    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    if-eqz v6, :cond_9

    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v6, :cond_8

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v3}, Lcom/sqn/dcc/Internal;->GetAvailableMs(Lcom/sqn/dcc/OutArray;)I

    move-result v4

    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-nez v4, :cond_5

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needReboot:Z

    if-eqz v6, :cond_9

    :cond_5
    const-string v6, "WimaxStateTracker"

    const-string v7, "GetAvailableMs fail -> WimaxReboot"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needReboot:Z

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v6, :cond_6

    const-string v6, "WimaxStateTracker"

    const-string v7, "BUG: THP LINK FAILURE!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpKmsg()Z

    :cond_6
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->WimaxRebootForce()V

    :goto_1
    return-void

    :cond_7
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decrease pollDhcpPollingTimesForNoDns, value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    goto/16 :goto_0

    :cond_8
    const-string v6, "WimaxStateTracker"

    const-string v7, "GetAvailableMs fails due to wimax shutdown => skip it"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsIdleState:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sqn/dcc/swmSsState;->isInvalidState()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sqn/dcc/swmSsState;->isInitState()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-direct {p0, v6}, Lcom/htc/net/wimax/WimaxStateTracker;->requestPolledInfo(Lcom/htc/net/wimax/WimaxInfo;)V

    :cond_a
    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToCheckStartSs:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToRetryStartSs:Z

    if-eqz v6, :cond_c

    const-string v6, "WimaxStateTracker"

    const-string v7, "check state: still in abort, retry startss"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v6, :cond_b

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_b
    :goto_2
    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    if-eqz v6, :cond_d

    const/16 v6, 0x3e8

    invoke-direct {p0, v6}, Lcom/htc/net/wimax/WimaxStateTracker;->setPollTimer(I)V

    goto/16 :goto_1

    :cond_c
    const-string v6, "WimaxStateTracker"

    const-string v7, "check state: still in abort"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToRetryStartSs:Z

    goto :goto_2

    :cond_d
    const/16 v6, 0xbb8

    invoke-direct {p0, v6}, Lcom/htc/net/wimax/WimaxStateTracker;->setPollTimer(I)V

    goto/16 :goto_1

    :cond_e
    const-string v6, "WimaxStateTracker"

    const-string v7, "stop polling"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPollingThreadAlive:Z

    goto/16 :goto_1
.end method

.method private handleScanRoundComplete()V
    .locals 13

    const/4 v12, 0x0

    iget v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->BsFound:Z

    if-nez v8, :cond_1

    iget v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NdsRoundCompleteNotification(): noBsFound: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    :cond_0
    :goto_0
    iput-boolean v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->BsFound:Z

    return-void

    :cond_1
    const/4 v7, 0x0

    iput v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NdsRoundCompleteNotification(): BsFound: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WimaxStateTracker"

    const-string v9, "handleMessage(EVENT_SCAN_RESULTS_AVAILABLE)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateScanResults()V

    invoke-static {}, Lcom/htc/net/wimax/WimaxDcc;->ndssGetScanResultsExtBand()[Lcom/sqn/dcc/ScanResultExtBand;

    move-result-object v7

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->ConnectBaseOnScanResult()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableConnect()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v7, :cond_2

    array-length v8, v7

    if-gtz v8, :cond_7

    :cond_2
    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: ScanResultExtBand: null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-nez v8, :cond_6

    const/4 v3, 0x0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    const/4 v1, 0x0

    :cond_4
    const/4 v3, 0x0

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_f

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqn/dcc/ScanResultExtBand;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->connectToBS(Lcom/sqn/dcc/ScanResultExtBand;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: connect fail: try to connect next BS in the List!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_5
    :goto_1
    if-nez v3, :cond_4

    :cond_6
    iput-boolean v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.net.wimax.SCAN_RESULTS_AVAILABLE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->EnableDualMode()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isOtherConnectionAvailable()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_a

    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: skip for waiting mobile connection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v2, :cond_3

    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    if-eqz v8, :cond_b

    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: force scan is enable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_9
    :goto_2
    if-eqz v2, :cond_3

    move-object v0, v7

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    iget v8, v6, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    if-le v8, v9, :cond_d

    iget v8, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    if-le v8, v9, :cond_d

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add BS into list ( bandIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " freqIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pbIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-short v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " napId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rssi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR3:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR3:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v8

    if-nez v8, :cond_3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x1

    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: no data connection, connect to WIMAX ASAP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_8

    aget-object v6, v0, v4

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add BS into list ( bandIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " freqIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pbIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-short v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " napId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rssi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR3:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR3:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v8

    if-nez v8, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_b
    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    if-nez v8, :cond_c

    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: first time connect ot WiMAX"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_c
    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    if-eqz v8, :cond_9

    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: meet Entry Criteria"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_d
    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skip BS ( bandIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " freqIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pbIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-short v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " napId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rssi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR3:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR3:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " due to entry criteria"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    move-object v0, v7

    array-length v5, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add BS into list ( bandIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->bandIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " freqIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->freqIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pbIdx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-short v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->pbIdx:S

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " napId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->napId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rssi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->rssi:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cinrR3:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/sqn/dcc/ScanResultExtBand;->cinrR3:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    const-string v8, "WimaxStateTracker"

    const-string v9, "EVENT_SCAN_RESULTS_AVAILABLE: There is no BS in the List!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    goto/16 :goto_1
.end method

.method private handleStateChange(Lcom/sqn/dcc/swmSsState;)V
    .locals 12

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v9}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v2

    const-string v9, "wimax.debug.loseOperational"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isOperationalState()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "WimaxStateTracker"

    const-string v10, "test : skip operational state!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "wimax.debug.loseAbortDlSync"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "WimaxStateTracker"

    const-string v10, "test : skip aborted & dl sync state!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v9, :cond_5

    :cond_4
    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(EVENT_WXCM_STATE_CHANGED): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": wimax is disable!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v9, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v9, :cond_6

    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Changing MS state from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v2, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->checkMissingState(Lcom/sqn/dcc/swmSsState;Lcom/sqn/dcc/swmSsState;)V

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyResetSignalLevel()V

    :cond_7
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    :cond_8
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v9

    if-nez v9, :cond_1e

    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    const-string v9, "WimaxStateTracker"

    const-string v10, "workaround: update wimax status to enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    const/4 v11, 0x1

    if-ne v9, v11, :cond_9

    const-string v9, "WimaxStateTracker"

    const-string v11, "workaround: update enabled=>wl.release"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    sget-object v9, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->STANDBY:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    :cond_a
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToCheckStartSs:Z

    if-eqz v9, :cond_b

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToCheckStartSs:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToRetryStartSs:Z

    :cond_b
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v9

    invoke-virtual {v2}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v10

    if-ne v9, v10, :cond_c

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    :cond_c
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {v2}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-boolean v9, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v9, :cond_d

    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Changing DetailedState from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {p1}, Lcom/sqn/Wimax4GSequansApi;->wimaxStateMap(Lcom/sqn/dcc/swmSsState;)Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    sget-object v9, Lcom/htc/net/wimax/HTCWimax4GInfo;->supplicantStateMap:Ljava/util/EnumMap;

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-virtual {v9, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/net/FourG/FourGSupplicantState;

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-nez v9, :cond_1f

    invoke-direct {p0, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V

    :goto_1
    sget-object v9, Lcom/htc/net/wimax/HTCWimax4GInfo;->linkStateDetailMap:Ljava/util/EnumMap;

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-virtual {v9, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-direct {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GLinkStateDetail(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;)V

    sget-object v9, Lcom/htc/net/wimax/HTCWimax4GInfo;->ktWiBroStateMap:Ljava/util/EnumMap;

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GState:Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;

    invoke-virtual {v9, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    if-eq v1, v6, :cond_e

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v9

    if-eqz v9, :cond_20

    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setSsState(I)V

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isOperationalState()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GServingBsInfo()V

    :cond_f
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    if-nez v9, :cond_10

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->enableDhcp()Z

    :cond_10
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->clearDhcpProperties()V

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->ConfigInterface()Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->copyStaticPropToDhcpProp()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setupRoutingRulesForStaticIp()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->broadcastConnected()V

    :cond_11
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDriverStopped()Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_12
    :goto_3
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_14

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    if-nez v9, :cond_13

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    if-nez v9, :cond_13

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    if-nez v9, :cond_13

    const-string v9, "WimaxStateTracker"

    const-string v11, "get authentication lock"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    :cond_13
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_14
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isUlAcquisition()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_16

    :cond_15
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEverConnecting:Z

    const-string v9, "WimaxStateTracker"

    const-string v10, "set idle timer to 60s"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "60"

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setupIdleMode(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableDhcp()Z

    :cond_16
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v9

    if-nez v9, :cond_17

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isDlSynchronizationState()Z

    move-result v9

    if-eqz v9, :cond_1c

    :cond_17
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableDhcp()Z

    const-string v9, "WimaxStateTracker"

    const-string v10, "set idle timer to 60s"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "60"

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setupIdleMode(Ljava/lang/String;)Z

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    if-eqz v9, :cond_19

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v9, :cond_18

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->requestPolledInfo(Lcom/htc/net/wimax/WimaxInfo;)V

    const-string v9, "WimaxStateTracker"

    const-string v10, "BUG: CONNECTION DROP!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    :cond_18
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    :cond_19
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1a

    const-string v9, "WimaxStateTracker"

    const-string v11, "dl or abort : release authentication lock"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    :cond_1a
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1b

    const-string v9, "WimaxStateTracker"

    const-string v11, "dl or abort : release dhcpRenew lock"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    :cond_1b
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isAbortedState()Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-nez v9, :cond_1c

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    :cond_1c
    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isIdleState()Z

    move-result v9

    if-eqz v9, :cond_31

    sget-boolean v9, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v9, :cond_1d

    const-string v9, "WimaxStateTracker"

    const-string v10, "set bIsIdleState=true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsIdleState:Z

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableDDTM:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v10, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    const-string v10, "AT+HTC_WIMAX_IDLE=1"

    invoke-virtual {v9, v10}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    :cond_1e
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    if-nez v9, :cond_a

    const-string v9, "WimaxStateTracker"

    const-string v10, "skip ABORTED state before wimax shutdown!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    sget-object v9, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V

    goto/16 :goto_1

    :cond_20
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-eqz v9, :cond_21

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v9, :cond_22

    :cond_21
    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDetailedState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_e

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v9, :cond_e

    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DISCONNECTED: reset socket on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->clearWimax4GInfo()V

    goto/16 :goto_2

    :cond_22
    const-string v9, "WimaxStateTracker"

    const-string v10, "setDetailedState = CONNECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_2

    :cond_23
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_28

    :goto_4
    const/4 v0, 0x0

    :cond_24
    const/4 v0, 0x0

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    if-eqz v9, :cond_27

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->NeedRetryConnect()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v9

    if-eqz v9, :cond_2b

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    if-eqz v9, :cond_29

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    const-string v9, "WimaxStateTracker"

    const-string v10, "Connect Fail: Eap-Failure: need NOT retry"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_25
    :goto_5
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lez v9, :cond_30

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sqn/dcc/ScanResultExtBand;

    const-string v9, "WimaxStateTracker"

    const-string v10, "Try to Connect BS in list!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/htc/net/wimax/WimaxStateTracker;->connectToBS(Lcom/sqn/dcc/ScanResultExtBand;)Z

    move-result v9

    if-nez v9, :cond_26

    const/4 v0, 0x1

    :cond_26
    :goto_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    :cond_27
    if-nez v0, :cond_24

    goto/16 :goto_3

    :cond_28
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    goto :goto_4

    :cond_29
    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2a

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_5

    :cond_2a
    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connect Fail: retry connect: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2b
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v9

    if-eqz v9, :cond_25

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    if-eqz v9, :cond_2e

    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    iget v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2d

    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connect Fail: Eap-Failure ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): stop Wimax"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_2c

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_2c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.htc.net.wimax.AUTH_STATE_FAIL_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_2d
    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connect Fail: Eap-Failure ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "): retry connect"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2e
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2f
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_5

    :cond_30
    const-string v9, "WimaxStateTracker"

    const-string v10, "There is no BS find in List!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    goto/16 :goto_6

    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    :cond_31
    sget-boolean v9, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v9, :cond_32

    const-string v9, "WimaxStateTracker"

    const-string v10, "set bIsIdleState=false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsIdleState:Z

    goto/16 :goto_0
.end method

.method private implementDDTM()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.ddtm"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isDriverStopped()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadNetworkConfiguration()Z
    .locals 15

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v11}, Lcom/htc/net/wimax/Wimax4GApi;->getNetworkConfiguration()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v12

    :try_start_1
    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    new-instance v7, Ljava/net/URL;

    const-string v11, "file:///data/wimax/network.xml"

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;

    invoke-direct {v5}, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;-><init>()V

    invoke-interface {v10, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v10, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-virtual {v5}, Lcom/htc/net/wimax/HTCWimax4GConfigurationXmlParser;->getConfiguration()Ljava/util/List;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    new-instance v13, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;

    invoke-direct {v13}, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;-><init>()V

    invoke-static {v11, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iget v11, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    :catch_0
    move-exception v3

    :try_start_5
    const-string v11, "WimaxStateTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "load network configuration from xml failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    const/4 v11, 0x0

    monitor-exit v12

    :goto_1
    return v11

    :cond_2
    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v11, v1}, Lcom/htc/net/wimax/Wimax4GApi;->setNetworkConfiguration(Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "WimaxStateTracker"

    const-string v13, "set network configuration failed "

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    iget-object v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v11, 0x1

    iput v11, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    monitor-exit v12

    goto :goto_1

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v11

    :cond_4
    const/4 v11, 0x1

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method private static nap(I)V
    .locals 2

    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static napm(I)V
    .locals 2

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private needSetRoute()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "dhcp.wimax0.mask"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "255.255.255.255"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v4, "mask=255.255.255.255 => addRoute"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v4, "couldn\'t get Connectivity Manager of System Service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v3, "Active network is WIFI => stop addRoute"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private parsingDmResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0xc

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsingDmResult length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", remainString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v3, :cond_1

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method private parsingDmResultNext(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x4e

    const/16 v3, 0x4c

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsingDmResult length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", remainString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x4e

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x4e

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v3, :cond_1

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method private pollingDhcpIP()Z
    .locals 10

    const/16 v9, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-boolean v6, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "WimaxStateTracker"

    const-string v7, "pollingDhcpIP +"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v6, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/net/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->needSetRoute()Z

    move-result v6

    if-ne v6, v5, :cond_2

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/htc/net/wimax/WimaxStateTracker;->sDhcpProps:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ip_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gateway_value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v1, v9, :cond_4

    const-string v6, "WimaxStateTracker"

    const-string v7, "dhcp polling timeout -"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    :goto_1
    return v4

    :cond_3
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    sget-boolean v4, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v4, :cond_5

    const-string v4, "WimaxStateTracker"

    const-string v6, "pollingDhcpIP -"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private requestConnectionStatus(Lcom/htc/net/wimax/WimaxInfo;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    sget-boolean v7, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v7, :cond_0

    const-string v7, "WimaxStateTracker"

    const-string v8, "requestConnectionStatus"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDcdBsMacAddress()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDcdFrequency()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v4}, Lcom/htc/net/wimax/WimaxInfo;->setNapId(I)V

    invoke-virtual {p1, v5}, Lcom/htc/net/wimax/WimaxInfo;->setNspId(I)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->setBsMacAddress(J)V

    invoke-virtual {p1, v2, v3}, Lcom/htc/net/wimax/WimaxInfo;->setFrequency(J)V

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v7}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sqn/dcc/swmSsState;->isInvalidState()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    throw v6

    move-result v7

    invoke-direct {p0, v7}, Lcom/htc/net/wimax/WimaxStateTracker;->setSsState(I)V

    goto :goto_0
.end method

.method private requestNetworkStatus(Lcom/htc/net/wimax/WimaxInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getIpAddress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/net/wimax/WimaxInfo;->setIpAddress(I)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDcdBsMacAddress()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->setBsMacAddress(J)V

    return-void
.end method

.method private declared-synchronized requestPolledInfo(Lcom/htc/net/wimax/WimaxInfo;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "WimaxStateTracker"

    const-string v6, "requestPolledInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getSignalStrengthDb()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getSignalQuality()I

    move-result v1

    const-string v5, "wimax.fakeRSSI"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fake RSSI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    const-string v5, "wimax.fakeCINR"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fake CINR = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    const/16 v5, -0x12c

    :try_start_4
    div-int/lit8 v6, v3, 0x64

    if-gt v5, v6, :cond_3

    div-int/lit8 v5, v3, 0x64

    if-gez v5, :cond_3

    invoke-static {v3, v1}, Lcom/htc/net/wimax/WimaxController;->calculateSignalLevel(II)I

    move-result v5

    iput v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->newSignalLevel:I

    iget v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->newSignalLevel:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->newSignalLevel:I

    invoke-direct {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->sendSignalStrengthChangeBroadcast(I)V

    iget v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->newSignalLevel:I

    iput v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastSignalLevel:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt parsing error, newSignalStrength100xStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_1
    move-exception v0

    :try_start_6
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt parsing error, newSignalQuality100xStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private scheduleDisconnect()V
    .locals 4

    const/16 v3, 0xc

    const-string v0, "WimaxStateTracker"

    const-string v1, "scheduleDisconnect +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDisconnectPending:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "scheduleDisconnect -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .locals 5

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNetworkStateChange intent, state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.wimax.STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "networkInfo"

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.net.FourG.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "network_info"

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "4g_info"

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    monitor-exit v3

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendSignalStrengthChangeBroadcast(I)V
    .locals 4

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send change rssi, rssi level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "newRssiLevel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendWiBroStateIntent(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.KT_WIBRO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kt_wibro_link_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized setDriverStopped(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMaxBlockingIntervalDelayed()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "setMaxBlockingIntervalDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPollTimer(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "setPollTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v1, 0x6

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSsState(I)V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "setSsState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxInfo;->setSsState(I)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateNetworkInfo()V

    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTornDownByConnMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateNetworkInfo()V

    return-void
.end method

.method private declared-synchronized terminateSequansd()Z
    .locals 8

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "WimaxStateTracker"

    const-string v6, "terminateSequansd +"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    :try_start_1
    const-string v5, "wimax.sequansd.pid"

    const-string v6, "NULL"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kill sequansd pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " i_pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "wimax.sequansd.pid"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWaitSequansd:Z

    invoke-static {v3}, Lcom/htc/net/wimax/WimaxNative;->TerminateProcess(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "WimaxStateTracker"

    const-string v5, "can\'t terminate sequansd!!=>retry"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_2

    const/16 v4, 0x9

    invoke-static {v2, v4}, Landroid/os/Process;->sendSignal(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt parsing error, sequansd_pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v5, "WimaxStateTracker"

    const-string v6, "terminateSequansd: wait sequansd to terminate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    const/16 v5, 0x14

    if-ge v1, v5, :cond_5

    iget-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWaitSequansd:Z

    if-nez v5, :cond_6

    :cond_5
    sget-boolean v5, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v5, :cond_3

    const-string v5, "WimaxStateTracker"

    const-string v6, "terminateSequansd -"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_6
    const/16 v5, 0x1f4

    :try_start_4
    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "WimaxStateTracker"

    const-string v6, "sequansd_pid is null or zero!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private updateDeviceInfo()V
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/Wimax4GApi;->updateDeviceInfo(Lcom/htc/net/FourG/DeviceInfo;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateDhcpInfo()V
    .locals 5

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    monitor-enter v3

    :try_start_0
    const-string v2, "WimaxStateTracker"

    const-string v4, "update Dhcp Information"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".dns1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->dns1:I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".dns2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->dns2:I

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".gateway"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->gateway:I

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".ipaddress"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->ipAddress:I

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".leasetime"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->leaseDuration:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".mask"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->netmask:I

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dhcp."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".server"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->serverAddress:I

    :goto_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->dns1:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->dns1:I

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->dns2:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->dns2:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_2
    :try_start_7
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->gateway:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->gateway:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :cond_3
    :try_start_9
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->ipAddress:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_a
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->ipAddress:I

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->leaseDuration:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    :cond_4
    :try_start_b
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->netmask:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v0

    :try_start_c
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->netmask:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :cond_5
    :try_start_d
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v4

    iput v4, v2, Landroid/net/DhcpInfo;->serverAddress:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_6

    :catch_6
    move-exception v0

    :try_start_e
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/net/DhcpInfo;->serverAddress:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6
.end method

.method private updateHandoverInfo()V
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "WimaxStateTracker"

    const-string v2, "updateHandoverInfo+-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->getKtWiBroState()Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v1, p1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->sendWiBroStateIntent(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNetworkInfo()V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    return-void
.end method

.method private updateScanResults()V
    .locals 6

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v2}, Lcom/htc/net/wimax/Wimax4GApi;->getScanResults()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResultsUpdateTime:J

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.FourG.SCAN_RESULTS_AVAILABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "scan_result_bs_list"

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateWimax4GEnabledState(I)V
    .locals 6

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWimaxEnableState, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GState()I

    move-result v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2, p1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->set4GState(I)V

    if-eq v1, p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.FourG.NET_4G_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "4g_state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "previous_4g_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateWimax4GIpAddress()V
    .locals 6

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".ipaddress"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_0

    const-string v2, "0.0.0.0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->convertByteToInt([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setIpAddress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setIpAddress(I)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private updateWimax4GLinkSpeed()V
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/Wimax4GApi;->updateLinkSpeed(Lcom/htc/net/wimax/Wimax4GInfo;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWimax4GLinkStateDetail(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;)V
    .locals 4

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->getLinkStateDetailed()Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2, p1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setLinkStateDetailed(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;)V

    if-eq p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.FourG.LINK_STATE_DETAIL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "link_state_detail"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateWimax4GModulation()V
    .locals 6

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-interface {v3, v5}, Lcom/htc/net/wimax/Wimax4GApi;->updateModulation(Lcom/htc/net/wimax/Wimax4GInfo;)Z

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateWimax4GServingBsInfo()V
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/Wimax4GApi;->updateServingBsInfo(Lcom/htc/net/wimax/Wimax4GInfo;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWimax4GSignal()V
    .locals 8

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v4}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getRSSI()I

    move-result v3

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v4}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getCINR()I

    move-result v0

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-interface {v4, v6}, Lcom/htc/net/wimax/Wimax4GApi;->updateSignal(Lcom/htc/net/wimax/Wimax4GInfo;)Z

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v4}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getRSSI()I

    move-result v2

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v4}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getCINR()I

    move-result v1

    const-string v4, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWimax4GSignal: rssi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cinr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V
    .locals 4

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/HTCWimax4GInfo;->getSupplicantState()Lcom/htc/net/FourG/FourGSupplicantState;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v2, p1}, Lcom/htc/net/wimax/HTCWimax4GInfo;->setSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V

    if-eq p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.FourG.SUPPLICANT_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "new_4g_state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateWimax4GTxPower()V
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/Wimax4GApi;->updateTxPower(Lcom/htc/net/wimax/Wimax4GInfo;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private validateStateOfNv(Ljava/lang/String;)I
    .locals 6

    if-nez p1, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v4, "validateStateOfNv: command = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    const/4 v2, -0x1

    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    const-string v0, ""

    :goto_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    const-string v0, "internal dmss used"

    goto :goto_1

    :cond_3
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    const-string v0, "can\'t recognize command"

    goto :goto_1

    :cond_4
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    const-string v0, "memory is full"

    goto :goto_1

    :cond_5
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    const-string v0, "command is fail"

    goto :goto_1

    :cond_6
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x2

    const-string v0, "not support this command"

    goto :goto_1

    :cond_7
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x2

    const-string v0, "bad command parameters or not exists"

    goto :goto_1

    :cond_8
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    const-string v0, "memeory is read only"

    goto :goto_1

    :cond_9
    const/4 v2, 0x1

    const-string v0, "command error with non-knowing reason"

    goto :goto_1
.end method

.method private wimaxRescan(Z)I
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v4, :cond_2

    :cond_0
    const-string v3, "WimaxStateTracker"

    const-string v4, "wimaxRescan : wimax is not enabled || wimax is shutdowning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "WimaxStateTracker"

    const-string v5, "wimaxRescan: set force scan flag"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    :cond_3
    const-string v2, ""

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    if-eqz p1, :cond_4

    const-string v2, "CBES::forceScanning reset-state=1"

    :goto_1
    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wimaxRescan : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v4, "wimaxRescan: lpfn_call_dcDbgCli fails"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    goto :goto_0

    :cond_4
    const-string v2, "CBES::forceScanning reset-state=0"

    goto :goto_1
.end method


# virtual methods
.method public AuthAkaNotification(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuthAkaNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": stop Wimax"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_0
    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastEapNtfMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastAkaNtfCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eap_aka_notification_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public AuthAkaReject()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "WimaxStateTracker"

    const-string v1, "AuthAkaReject: stop Wimax"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Authentication reject"

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->AuthEapNotification(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_0
    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public AuthEapNotification(Ljava/lang/String;)V
    .locals 4

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AuthEapNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastEapNtfMsg:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.WIMAX_EAP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eap_notification_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public AuthNaiRejected()V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableDunMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsNaiRejectSend:Z

    if-nez v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "Authentication NAI is Rejected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.AUTH_NAI_REJECTED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsNaiRejectSend:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "WimaxStateTracker"

    const-string v2, "Authentication NAI is Rejected: Wimax is not in DunMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public AuthenticationState(Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "Authentication State: Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "Authentication State: Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastAkaNtfCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public BaseMacAddrChangeNotification(J)V
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "BaseMacAddrChangeNotification +-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public FrequencyChangeNotification(J)V
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "FrequencyChangeNotification +-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public GetLastAuthAkaNotificationCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastAkaNtfCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public GetLastAuthEapNotificationMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastEapNtfMsg:Ljava/lang/String;

    return-object v0
.end method

.method public HandoverFailedNotification()V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public HandoverStartedNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public HandoverSucceededNotification(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v3, 0x12

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public LinkRetentionStateChange(Lcom/sqn/dcc/LinkRetentionStateChange;)V
    .locals 3

    iget v0, p1, Lcom/sqn/dcc/LinkRetentionStateChange;->value:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendSignalStrengthChangeBroadcast(I)V

    const-string v0, "WimaxStateTracker"

    const-string v1, "LinkRetentionStateChange.LINK_RETENTION_ACTIVE send signal level:0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/sqn/dcc/LinkRetentionStateChange;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastSignalLevel:I

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendSignalStrengthChangeBroadcast(I)V

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkRetentionStateChange.LINK_RETENTION_ACTIVE send signal level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "WimaxStateTracker"

    const-string v1, "LinkRetentionStateChange undefined"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NdsAutodetectEnterCriteriaExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public NdsAutodetectExitCriteriaNotification()V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public NdsBackoffStarted(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v3, 0xf

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public NdsBsFoundExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public NdsRoundCompleteNotification()V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public NdsStateNotification(I)V
    .locals 3

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NdsStateNotification, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SsStateNotification(Lcom/sqn/dcc/swmSsState;)V
    .locals 3

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ssstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "SsStateNotification: wimax is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyStateChange(ILcom/sqn/dcc/swmSsState;)V

    goto :goto_0
.end method

.method public declared-synchronized WimaxReboot()V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsMsDetachNormal:Z

    if-nez v0, :cond_1

    const-string v0, "wimax.recovery"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "some ERROR occured, need to reboot Wimax!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-ne v0, v2, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v2, "WimaxReboot=>wl.release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->WimaxRebootForce()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needReboot:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public WimaxRebootForce()V
    .locals 2

    const-string v0, "wimax.recovery"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "Reboot Wimax now!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackupSequansdLog:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getPersistWimaxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimax()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "WimaxStateTracker"

    const-string v1, "user has disabled wimax!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addNetworkConfiguration(Lcom/htc/net/wimax/HTCWimax4GConfiguration;)I
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v3

    if-nez p1, :cond_0

    :try_start_0
    const-string v4, "WimaxStateTracker"

    const-string v5, "addNetworkConfiguration: config == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v4}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const-string v4, "WimaxStateTracker"

    const-string v5, "addNetworkConfiguration: Wimax is not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iget v2, v2, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    add-int/lit8 v0, v2, 0x1

    :goto_1
    iput v0, p1, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    const/4 v2, 0x1

    iput v2, p1, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p1, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bWimaxHaveIP()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "dhcp.wimax0.ipaddress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bWimaxHaveIP IP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public broadcastConnected()V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public changeToCorpNapid(I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "WimaxStateTracker"

    const-string v5, "changeToCorpNapid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v4, p1}, Lcom/htc/net/wimax/Wimax4GApi;->changeToCorpNapid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    if-ne v1, v2, :cond_2

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsPrivateNetwork:Z

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    :goto_1
    return v2

    :cond_1
    const/16 v4, 0x258

    invoke-static {v4}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "WimaxStateTracker"

    const-string v4, "changeToCorpNapid failed."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_1
.end method

.method checkIdleMode()Z
    .locals 6

    const/4 v3, 0x0

    const-string v4, "WimaxStateTracker"

    const-string v5, "checkIdleMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const-string v4, "psms::showConfig"

    invoke-static {v4, v2, v1}, Lcom/sqn/dcc/Dbg;->Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string v4, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkMissingState(Lcom/sqn/dcc/swmSsState;Lcom/sqn/dcc/swmSsState;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/sqn/dcc/swmSsState;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isOperationalState()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "checkMissingState: missing operational state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-static {p2}, Lcom/htc/net/wimax/WimaxInfo;->getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->enableDhcp()Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEverOperational:Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/sqn/dcc/swmSsState;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sqn/dcc/swmSsState;->isOperationalState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "checkMissingState: state order is correct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkState()V
    .locals 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    new-instance v0, Lcom/sqn/dcc/swmSsState;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsState;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/htc/net/wimax/WimaxDcc;->mgtGetSsState(Lcom/sqn/dcc/swmSsState;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkState : Ssstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  retry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v2}, Lcom/htc/net/wimax/WimaxInfo;->getSsState()Lcom/sqn/dcc/swmSsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v2

    invoke-virtual {v0}, Lcom/sqn/dcc/swmSsState;->getStateIdx()I

    move-result v3

    if-eq v2, v3, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "checkState : state notification may miss"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyStateChange(ILcom/sqn/dcc/swmSsState;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public checkStaticConfig()V
    .locals 2

    const-string v0, "wimax.staticIP.wimax0.ipaddress"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    goto :goto_0
.end method

.method public copyStaticPropToDhcpProp()V
    .locals 7

    const-string v5, "wimax.staticIP.wimax0.dns1"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "dhcp.wimax0.dns1"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v5, "wimax.staticIP.wimax0.dns2"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "dhcp.wimax0.dns2"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "wimax.staticIP.wimax0.ipaddress"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "dhcp.wimax0.ipaddress"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v5, "wimax.staticIP.wimax0.gateway"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "dhcp.wimax0.gateway"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, "wimax.staticIP.wimax0.mask"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "dhcp.wimax0.mask"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public debugChange(Z)V
    .locals 0

    sput-boolean p1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->debugChange(Z)V

    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method disableAuth()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v4, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "WimaxStateTracker"

    const-string v5, "disableAuth"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v4, :cond_2

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v4, "cbe::setcaps pkm-version=none"

    invoke-static {v4, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v3, "WimaxStateTracker"

    const-string v4, "disableAuth : lpfn_call_dcDbgCli fails"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method disableIdleMode()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "WimaxStateTracker"

    const-string v4, "PSMS::enableIdleAuto enable=0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v3, :cond_2

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v3, "PSMS::enableIdleAuto enable=0"

    invoke-static {v3, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableIdleMode : lpfn_call_dcDbgCli fails, i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->checkIdleMode()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "disable auto idle success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableDDTM:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v4, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    const-string v4, "AT+HTC_WIMAX_IDLE=0"

    invoke-virtual {v3, v4}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    return v7
.end method

.method public disableNetworkConfiguration(I)Z
    .locals 13

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iput p1, v0, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    new-instance v11, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;

    invoke-direct {v11}, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;-><init>()V

    invoke-static {v10, v0, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    if-gez v4, :cond_0

    const-string v8, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disableNetworkConfiguration: can not find netId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :goto_0
    return v7

    :cond_0
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-nez v1, :cond_1

    const-string v8, "WimaxStateTracker"

    const-string v10, "disableNetworkConfiguration: config is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-eqz v0, :cond_2

    iget v10, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    if-ne v10, v12, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_5

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-eqz v0, :cond_4

    iget v10, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    if-ne v10, v12, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v10, v2}, Lcom/htc/net/wimax/Wimax4GApi;->setNetworkConfiguration(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v8, "WimaxStateTracker"

    const-string v10, "disableNetworkConfiguration: setNetworkConfiguration fail"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v7, 0x1

    iput v7, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v7, 0x2

    iput v7, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    goto/16 :goto_0
.end method

.method public declared-synchronized disableWimaxAndDhcp()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    if-eqz v4, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v4, "Cannot turn off wimax now, turn off WiMAX later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v4, "SMS::blockSsStart enable=1"

    invoke-static {v4, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "WimaxStateTracker"

    const-string v5, "SMS::blockSsStart enable=1 fails"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableDhcp()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimax()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 6

    const/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "WimaxStateTracker"

    const-string v3, "disconnect: wimax is turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->EnableDualMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableDisconnect()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v0}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    const-string v2, "WimaxStateTracker"

    const-string v3, "disconnect: stopss -> startss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    invoke-virtual {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    invoke-static {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->teardown()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized enableDhcp()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v2, "WimaxStateTracker"

    const-string v3, "enableDhcp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->StartDhcpWimax()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "enableDhcp failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x3

    :try_start_2
    iput v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method enableIdleMode()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "WimaxStateTracker"

    const-string v4, "PSMS::enableIdleAuto enable=1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v3, :cond_2

    iput-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v3, "PSMS::enableIdleAuto enable=1"

    invoke-static {v3, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableIdleMode : lpfn_call_dcDbgCli fails, i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->checkIdleMode()Z

    move-result v3

    if-ne v3, v6, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "enable auto idle success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v6
.end method

.method public enableLogLevel(I)V
    .locals 1

    sput p1, Lcom/htc/net/wimax/WimaxStateTracker;->logLevel:I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxMonitor:Lcom/htc/net/wimax/WimaxMonitor;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxMonitor;->enableLogLevel(I)V

    return-void
.end method

.method public enableNetworkConfiguration(IZ)Z
    .locals 13

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iput p1, v0, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    new-instance v11, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;

    invoke-direct {v11}, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;-><init>()V

    invoke-static {v10, v0, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    if-gez v4, :cond_0

    const-string v8, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enableNetworkConfiguration: can not find netId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :goto_0
    return v7

    :cond_0
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-nez v1, :cond_1

    const-string v8, "WimaxStateTracker"

    const-string v10, "enableNetworkConfiguration: config is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-eqz v0, :cond_2

    iget v10, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    if-ne v10, v12, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_5

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_5

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-eqz v0, :cond_4

    iget v10, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    if-ne v10, v12, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v10, v2}, Lcom/htc/net/wimax/Wimax4GApi;->setNetworkConfiguration(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v8, "WimaxStateTracker"

    const-string v10, "enableNetworkConfiguration: setNetworkConfiguration fail"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v7, 0x1

    iput v7, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v7, 0x2

    iput v7, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    goto/16 :goto_0
.end method

.method public declared-synchronized enableWimax()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    const-string v5, "WimaxStateTracker"

    const-string v6, "enableWimax"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    if-eqz v5, :cond_1

    const-string v4, "WimaxStateTracker"

    const-string v5, "enable wimax=>wimax is enabling already!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "WimaxStateTracker"

    const-string v5, "enable wimax=>wimax is enabled already!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isLock()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "WimaxStateTracker"

    const-string v5, "enable wimax=>wimax is locked!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsMsDetachNormal:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isMfgFw()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-nez v6, :cond_4

    const-string v6, "WimaxStateTracker"

    const-string v7, "enable wimax=>wl.acquire"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    :cond_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    sget-object v5, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->INIT:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-direct {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->readStartupCommands()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v5, "sequansd"

    invoke-direct {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->findProcessByName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    const-string v5, "WimaxStateTracker"

    const-string v6, "ERROR: sequansd is runngin, kill it"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x9

    invoke-static {v0, v5}, Landroid/os/Process;->sendSignal(II)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->UnloadDriver()Z

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v1, v5, v1

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing all process take time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->LoadDriver()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v3, "WimaxStateTracker"

    const-string v5, "Failed to load Wimax driver -=>wl.release"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->UnloadDriver()Z

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v3, :cond_7

    const-string v3, "WimaxStateTracker"

    const-string v5, "BUG: TRUN ON WIMAX FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpKmsg()Z

    :cond_7
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v3, v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3

    :cond_8
    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->StartDaemon()Z

    move-result v5

    if-nez v5, :cond_a

    const-string v3, "WimaxStateTracker"

    const-string v5, "Failed to launch Wimax daemon -=>wl.release"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->UnloadDriver()Z

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v3, :cond_9

    const-string v3, "WimaxStateTracker"

    const-string v5, "BUG: TURN ON WIMAX FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLogcat()Z

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpKmsg()Z

    :cond_9
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v3, 0x0

    :try_start_c
    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v3, v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3

    :cond_a
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isMfgFw()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v4}, Lcom/htc/net/wimax/Wimax4GApi;->startService()Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->implementDDTM()Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bImplementDDTM:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableDDTM:Z

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bEnableDDTM:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v5, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    const-string v5, "AT+HTC_WIMAX_IDLE=0"

    invoke-virtual {v4, v5}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setBtChannel()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWifiLowPower()V

    :cond_c
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOffByAirplaneMode:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOnBlockedByAirplaneMode:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOffByEmergencyCall:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isMfgFw()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v5, 0x15

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public getDcdBsMacAddress()J
    .locals 4

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "getDcdBsMacAddress +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/net/wimax/ParcelableLong;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableLong;-><init>()V

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxDcc;->getDcdBsMacAddress(Lcom/htc/net/wimax/ParcelableLong;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "WimaxStateTracker"

    const-string v3, "getDcdBsMacAddress -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableLong;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_2
    const-string v2, "WimaxStateTracker"

    const-string v3, "getDcdBsMacAddress: THP api fails!! -"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDcdFrequency()J
    .locals 4

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "getDcdFrequency + "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/net/wimax/ParcelableLong;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableLong;-><init>()V

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxDcc;->getDcdFrequency(Lcom/htc/net/wimax/ParcelableLong;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "WimaxStateTracker"

    const-string v3, "getDcdFrequency - "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableLong;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_2
    const-string v2, "WimaxStateTracker"

    const-string v3, "getDcdFrequency: THP api fails!! -"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDecoration(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getDecoration(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getDefaultNetworkConfiguration()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfigurationDefault:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceInfo()Lcom/htc/net/FourG/DeviceInfo;
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v2, "getDeviceInfo+-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v2, "getDhcpInfo+-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFcdLinkSpeed()D
    .locals 5

    sget-boolean v3, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "getFcdLinkSpeed +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v2}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-static {v2, v1}, Lcom/htc/net/wimax/WimaxDcc;->getLinkSpeed(Lcom/htc/net/wimax/ParcelableInteger;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    sget-boolean v3, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v4, "getFcdLinkSpeed -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v3

    int-to-double v3, v3

    :goto_0
    return-wide v3

    :cond_2
    const-string v3, "WimaxStateTracker"

    const-string v4, "getFcdLinkSpeed: THP api fails!! -"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method public getFrequency()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_freq:J

    return-wide v0
.end method

.method getIdleTimeout()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string v4, "WimaxStateTracker"

    const-string v5, "getIdleTimeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const-string v4, "psms::showConfig"

    invoke-static {v4, v2, v1}, Lcom/sqn/dcc/Dbg;->Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Idle auto switch Period"

    invoke-virtual {p0, v4, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getInnerIdentity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getInnerIdentity(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInnerMethodType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getInnerMethodType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()I
    .locals 2

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsIdleState()Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "getIsIdleState+-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsIdleState:Z

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkPropertiesSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMethodType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getMethodType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNaiDecoration()Ljava/lang/String;
    .locals 17

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v1, 0x10

    const/16 v4, 0x10

    const-string v6, ""

    const-string v14, "wimax.sequansd.nai.dev"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsRiderDevice()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v6, "HTC-X515E"

    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x20

    if-le v14, v15, :cond_2

    :cond_1
    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrong format. DEV= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxStateTracker;->mDeviceInfo:Lcom/htc/net/FourG/DeviceInfo;

    invoke-virtual {v14}, Lcom/htc/net/FourG/DeviceInfo;->getSwVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x10

    if-le v14, v15, :cond_4

    :cond_3
    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrong format. FW= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    :cond_4
    const-string v14, "ro.product.version"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x10

    if-le v14, v15, :cond_6

    :cond_5
    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrong format. CM= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v13

    const-string v10, ""

    if-eqz v13, :cond_9

    const-string v14, "+82"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "WimaxStateTracker"

    const-string v15, "Wrong format. CountryCode!=+82"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, ""

    :cond_7
    const-string v14, "+82"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v14, v9, 0x3

    :try_start_0
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x10

    if-le v14, v15, :cond_9

    :cond_8
    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrong format. ISDN= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "{DEV="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|FW="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|CM="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|ISDN="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v14, :cond_a

    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Nai Decoration: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v12

    :cond_b
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsExpressKtDevice()Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v6, "HTC-P515E"

    goto/16 :goto_0

    :cond_c
    const-string v14, "ro.product.model"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    const-string v14, "ro.product.model"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v14, "WimaxStateTracker"

    const-string v15, "getNaiDecoration Error: null pointer at MSISDN "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, ""

    goto :goto_1
.end method

.method public getNapId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nap_id:J

    return-wide v0
.end method

.method public getNetworkConfiguration()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getNspId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    return-wide v0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/Long;

    iget-wide v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    :try_start_0
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNspName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "WimaxStateTracker"

    const-string v4, "cannot find any responding nsp name"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    goto :goto_0
.end method

.method public getOuterIdentity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getOuterIdentity(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getPassword(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistWimaxEnabled()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    sget-boolean v4, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "WimaxStateTracker"

    const-string v5, "getPersistWimaxEnabled+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    const-string v4, "wimax_on"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v3

    :goto_0
    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPersistWimaxEnabled bIsWimaxEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v4, "getPersistWimaxEnabled-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPersistWimaxEnabled get exception in getInt, the value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wimax_on"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRealm(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->getRealm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v2, "getScanResult+-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScanResultsUpdateTime()J
    .locals 4

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResults:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mScanResultsUpdateTime:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSettingIdleModeTimer()I
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v1, v2, 0x3e8

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingIdleModeTimer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingIdleModeTimer: parseInt parsing error, ParseString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSignalLevel()I
    .locals 3

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSignalLevel: mLastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastSignalLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLastSignalLevel:I

    return v0
.end method

.method public getSignalQuality()I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "getSignalQuality+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxDcc;->getSignalQuality(Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-ne v0, v5, :cond_3

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSignalQuality cinr100x ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    const-string v3, "WimaxStateTracker"

    const-string v4, "getSignalQuality: THP api fails!! -"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSignalStrengthDb()I
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "getSignalStrengthDb +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxDcc;->getSignalStrengthDb(Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-ne v0, v5, :cond_3

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSignalStrengthDb rssi100x ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    const-string v3, "WimaxStateTracker"

    const-string v4, "getSignalStrengthDb: THP api fails!! -"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStateByDetailState(Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$State;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/WimaxStateTracker;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "getTcpBufferSizesPropName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "net.tcp.buffersize.wimax"

    return-object v0
.end method

.method public getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;
    .locals 3

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSignal()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GModulation()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GTxPower()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GLinkSpeed()V

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v2, "getWimax4GInfo+-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWimaxEnabledState()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxState:I

    return v0
.end method

.method public getWimaxMacAddr()J
    .locals 4

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "getWimaxMacAddr +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/htc/net/wimax/ParcelableLong;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableLong;-><init>()V

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxDcc;->getMacAddress(Lcom/htc/net/wimax/ParcelableLong;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "WimaxStateTracker"

    const-string v3, "getWimaxMacAddr -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/htc/net/wimax/ParcelableLong;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_2
    const-string v2, "WimaxStateTracker"

    const-string v3, "getWimaxMacAddr: THP api fails!! -"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public handleAirplaneChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleAirplaneChanged+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInAirplaneMode:Z

    const-string v0, "wimax.skipAirplaneMode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "skip airplane mode by property"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "WimaxStateTracker"

    const-string v1, "wimax is turned off by AirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleAirplaneChanged-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getPersistWimaxEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimax()Z

    const-string v0, "WimaxStateTracker"

    const-string v1, "wimax is turned on by AirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleBroadcastPendingState()V
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcastPendingState iPendingWimaxState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->iPendingWimaxState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->iPendingWimaxState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->iPendingWimaxState:I

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    :cond_1
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleBroadcastPendingState-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public handleBtOff()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleBtOff+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBtEnabled:Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleBtOff-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleBtOn()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleBtOn+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBtEnabled:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setBtChannel()V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleBtOn-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleDhcpRenew()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    if-nez v0, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleDhcpRenew : no ip address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRetryLock:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->authenticationLock:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    if-nez v0, :cond_3

    const-string v0, "WimaxStateTracker"

    const-string v2, "handleDhcpRenew : get dhcpRenew lock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->dhcpRenewLock:Z

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleDhcpRenew : Renew Dhcp and clean DNS and mask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dhcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dns1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dhcp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->pollDhcpPollingTimesForNoDns:I

    :cond_4
    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DoWimaxDhcpRequest()Z

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToPollDhcp:Z

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needSetDhcpRenewAlarm:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleDumpLastKmsg()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleDumpLastKmsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-nez v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "BUG: SYSTEM REBOOT ??"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->DumpLastKmsg()Z

    :cond_0
    return-void
.end method

.method public handleEmergencyCall(Z)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleEmergencyCall+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInEmergencyCall:Z

    const-string v0, "wimax.skipEmergencyCall"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "skip emergency call by property"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z

    const-string v0, "WimaxStateTracker"

    const-string v1, "wimax is turned off by emergency call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleEmergencyCall-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getPersistWimaxEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimax()Z

    const-string v0, "WimaxStateTracker"

    const-string v1, "wimax is turned on by emergency call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public handleMobileOff()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleMobileOff+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxOnlyIpRetentionTimer()Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleMobileOff-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleMobileOn()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleMobileOn+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxMobileCoexistIpRetentionTimer()Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleMobileOn-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleOtherNetworkDisconnect()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleOtherNetworkDisconnect: wimaxRescan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->wimaxRescan()I

    :cond_0
    return-void
.end method

.method public handlePhoneIdle()V
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneIdle +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bImplementDDTM:Z

    if-nez v0, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneIdle DDTM is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneIdle wimax is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x41

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxNative;->ThpIoctl(IJ)Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneIdle -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handlePhoneOffHook()V
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneOffHook +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bImplementDDTM:Z

    if-nez v0, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneOffHook DDTM is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneOffHook wimax is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x41

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxNative;->ThpIoctl(IJ)Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneOffHook -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handlePhoneRinging()V
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneRinging +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bImplementDDTM:Z

    if-nez v0, :cond_2

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneRinging DDTM is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneRinging wimax is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x41

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxNative;->ThpIoctl(IJ)Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handlePhoneRinging -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleReboot()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleReboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "handleReboot : Wimax is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    goto :goto_0
.end method

.method public handleScreenOff()V
    .locals 0

    return-void
.end method

.method public handleScreenOn()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "handleScreenOn : Wimax is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-eqz v0, :cond_3

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleScreenOn : Wimax is enabling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->checkState()V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->wimaxRescan(Z)I

    goto :goto_0
.end method

.method public handleShutdown()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleShutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "handleShutdown : Wimax is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    goto :goto_0
.end method

.method public handleWifiOff()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleWifiOff+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleWifiOff-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleWifiOn()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleWifiOn+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWifiLowPower()V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "handleWifiOn-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method ipStringToInt(Ljava/lang/String;)I
    .locals 9

    const/4 v6, -0x1

    :try_start_0
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v1, v7, 0x8

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v2, v7, 0x10

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isAirplaneMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInAirplaneMode:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "isAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackoffState()Z
    .locals 3

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WimaxStateTracker"

    const-string v1, "isBackoffState: wimax is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackoffState, bBackoffState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    goto :goto_0
.end method

.method public isDcExisting()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxDcc;->isDcExisting()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDisableConnect()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.dualmode.connect"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDisableDisconnect()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.dualmode.disconnect"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDisableWimaxBtCoexist()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.bt.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDisableWimaxWifiCoexist()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.wifi.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDunMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableDunMode:Z

    return v0
.end method

.method public isEmergencyCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInEmergencyCall:Z

    return v0
.end method

.method public isIgnore1xrtt()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "wimax.dualmode.1xrtt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLock()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->HaveSimLock()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsMfgBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsReleaseKey()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "wimax.lock"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    monitor-enter p0

    :try_start_0
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMfgFw()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.sequansd.fwmod"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mfg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtherConnectionAvailable()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v3, "isOtherConnectionAvailable: couldn\'t get Connectivity Manager of System Service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v3, "isOtherConnectionAvailable: There is no other network available!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isIgnore1xrtt()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v3, "isOtherConnectionAvailable: There is only 1xRTT available!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "WimaxStateTracker"

    const-string v3, "isOtherConnectionAvailable: couldn\'t get Connectivity Manager of System Service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateNetwork()Z
    .locals 3

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsPrivateNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsPrivateNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsPrivateNetwork:Z

    return v0
.end method

.method isReleaseKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    return v0
.end method

.method public isSequansdExisting()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "wimax.sequansd.pid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTeardownRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public mgtSetSsStarted(Z)Z
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "mgtSetSsStarted +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mgtSetSsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToCheckStartSs:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bNeedToRetryStartSs:Z

    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->mgtSetSsStarted(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized notifyDccConnected()V
    .locals 14

    const/4 v13, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v9}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GState()I

    move-result v9

    if-ne v9, v11, :cond_1

    const-string v9, "WimaxStateTracker"

    const-string v10, "notifyDccConnected: wimax already enabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isMfgFw()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "WimaxStateTracker"

    const-string v10, "notifyDccConnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_2
    :try_start_2
    const-string v9, "WimaxStateTracker"

    const-string v10, "notifyDccConnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyDriverStarted()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v8, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v8}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v13, :cond_4

    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cli- cbe:setfwdport port=SDIO replytoarp=yes, i="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_3

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v9, "cbe:setfwdport port=SDIO replytoarp=yes"

    invoke-static {v9, v6, v8}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "WimaxStateTracker"

    const-string v10, "setfwdport failed!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_3
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v9, "WimaxStateTracker"

    const-string v10, "cli- setuser sup"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_6

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v9, "setuser sup"

    invoke-static {v9, v6, v8}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "WimaxStateTracker"

    const-string v10, "setuser failed!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_6
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableAuthFromProp()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "WimaxStateTracker"

    const-string v10, "cli- cbe:setcaps pkm-version=none"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_8

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v9, "cbe:setcaps pkm-version=none"

    invoke-static {v9, v6, v8}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "WimaxStateTracker"

    const-string v10, "pkm-version=none failed!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_8
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_9

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->enableIdleMode()Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_9
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_a

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->showFwVersion()Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_a
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->showSsMac()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->showRomInfo()Z

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v13, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wimax.cli"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c

    const-string v9, "WimaxStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cli="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_c

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v0, v6, v8}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "WimaxStateTracker"

    const-string v10, "cli failed!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->noBsRound:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->BsFound:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsNaiRejectSend:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_e

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v9, "wimax.sequansd.mode"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "omadm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v12, :cond_18

    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_e
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffAlgorithm=exponential"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffStep=1000 detectBackoffLimit=512000"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffBase=2 detectBackoffK=0"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitRssi=-15000"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitInOperationalOnly=1 detectExitMer=30"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultSortingMethod=cinrrssi scanResultRssiThreshold=-6500"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultRssiType=perchannel"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    :goto_4
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->setIpRetentionEnabled(Z)Z

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getMobileDataEnabled()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxMobileCoexistIpRetentionTimer()Z

    :cond_f
    :goto_5
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->NeedDisableTxQam64()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "WimaxStateTracker"

    const-string v10, "setcaps tx-qam64=disabled"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "setcaps tx-qam64=disabled"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    :cond_10
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    if-eqz v9, :cond_12

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v2}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_12

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const-string v9, "WimaxStateTracker"

    const-string v10, "SuppressLogWarnings"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SuppressLogWarnings 1"

    invoke-static {v9, v1, v2}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "WimaxStateTracker"

    const-string v10, "lpfn_call_dcDbgCli fails"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_12
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->readStartupCommands()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->checkStaticConfig()V

    const-string v5, ""

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->UseOmaDmDataInFlash()Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "persist.wimax.Idle_Sleep"

    invoke-static {v9}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    if-nez v9, :cond_13

    const-string v9, "10"

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    :cond_13
    const-string v9, "persist.wimax.Entry_RX"

    invoke-static {v9}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    :try_start_4
    const-string v9, "persist.wimax.Entry_CINR"

    invoke-static {v9}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyResetSignalLevel()V

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GEnabledState(I)V

    sget-object v9, Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;->STANDBY:Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->updateKtWiBroState(Lcom/htc/net/wimax/HTCWimax4GInfo$KT_WIBRO_STATE;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->updateDeviceInfo()V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->loadNetworkConfiguration()Z

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-eqz v9, :cond_1f

    const-string v9, "WimaxStateTracker"

    const-string v10, "teardown is already invoked!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    :cond_14
    :goto_8
    iget-object v10, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mLockSync:Ljava/lang/Object;

    monitor-enter v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-ne v9, v12, :cond_15

    const-string v9, "WimaxStateTracker"

    const-string v11, "download completely=>wl.release"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_15
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, 0x0

    :try_start_8
    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxCannotTurnOff:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->needPoll:Z

    const/16 v9, 0xbb8

    invoke-direct {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->setPollTimer(I)V

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInAirplaneMode:Z

    if-eqz v9, :cond_20

    const-string v9, "WimaxStateTracker"

    const-string v10, "Turn off wimax due to airplaneMode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z

    :cond_16
    :goto_9
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->UseCdmaNai()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiUsername:Ljava/lang/String;

    if-nez v9, :cond_17

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->requestNaiIdFromNvItems()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiUsername:Ljava/lang/String;

    :cond_17
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiPassword:Ljava/lang/String;

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->requestNaiPwdFromNvItems()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiPassword:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setupNdss()Z

    goto/16 :goto_3

    :cond_19
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffAlgorithm=linear"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffStep=120000 detectBackoffLimit=1800000"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitRssi=-10000"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitInOperationalOnly=0 detectExitMer=0"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultSortingMethod=cinrfreq scanResultRssiThreshold=0"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultRssiType=recombined"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_1a
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsYtlProject()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffAlgorithm=linear"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitRssi=-10000"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitInOperationalOnly=1 detectExitMer=0"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultSortingMethod=none scanResultRssiThreshold=0"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultRssiType=recombined"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_1b
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectBackoffAlgorithm=linear"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig detectExitRssi=-10000"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultSortingMethod=none scanResultRssiThreshold=0"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v10, "CBES::setNdssConfig scanResultRssiType=recombined"

    invoke-interface {v9, v10}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxOnlyIpRetentionTimer()Z

    goto/16 :goto_5

    :catch_0
    move-exception v3

    const/16 v9, -0x22c4

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    goto/16 :goto_6

    :catch_1
    move-exception v3

    const/16 v9, 0x190

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    goto/16 :goto_7

    :cond_1d
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getIdleTimeout()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    if-nez v9, :cond_1e

    const-string v9, "10"

    iput-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    :cond_1e
    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v9}, Lcom/htc/net/wimax/Wimax4GApi;->getEntryCriteriaRssi()I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryRssi:I

    iget-object v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v9}, Lcom/htc/net/wimax/Wimax4GApi;->getEntryCriteriaCinr()I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->entryCinr:I

    goto/16 :goto_7

    :cond_1f
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBlockWimax:Z

    if-nez v9, :cond_14

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v9, :cond_14

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_8

    :catchall_1
    move-exception v9

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v9

    :cond_20
    iget-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsInEmergencyCall:Z

    if-eqz v9, :cond_21

    const-string v9, "WimaxStateTracker"

    const-string v10, "Turn off wimax due to emergency call"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z

    goto/16 :goto_9

    :cond_21
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isLock()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->HaveSimLock()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "WimaxStateTracker"

    const-string v10, "Turn off wimax due to sim lock"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->disableWimaxAndDhcp()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9
.end method

.method protected notifyDriverStarted()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "notifyDriverStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->setDriverStopped(Z)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected notifyDriverStopped()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "notifyDriverStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->setDriverStopped(Z)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;

    const/4 v3, -0x1

    new-instance v4, Lcom/sqn/dcc/swmSsState;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Lcom/sqn/dcc/swmSsState;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;-><init>(ILcom/sqn/dcc/swmSsState;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "notifyPasswordKeyMayBeIncorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyResetSignalLevel()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->sendSignalStrengthChangeBroadcast(I)V

    return-void
.end method

.method public notifySequansdClosed()V
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "notifySequansdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWaitSequansd:Z

    return-void
.end method

.method protected notifyStateChange(ILcom/sqn/dcc/swmSsState;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v2, 0x3

    new-instance v3, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;

    invoke-direct {v3, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;-><init>(ILcom/sqn/dcc/swmSsState;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "notifyStateChange 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxTarget:Landroid/os/Handler;

    const/4 v2, 0x4

    new-instance v3, Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;

    invoke-direct {v3, p1, p2, p3}, Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method parseCliResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x3a

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sMatched = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public parseStartupCommand(Ljava/lang/String;)V
    .locals 14

    const-string v11, "WimaxStateTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseStartupCommand: command> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v4

    const-string v11, "#"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v4, :cond_1

    const-string v11, "WimaxStateTracker"

    const-string v12, "skip this line"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "!"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v2}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v11, :cond_0

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: lpfn_call_dcDbgCli fails"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: out of boundary 1"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v11, "setprop"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v4, :cond_6

    :try_start_1
    const-string v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x3

    if-ge v11, v12, :cond_4

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: format error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: string is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v11, 0x1

    aget-object v8, v7, v11

    const/4 v11, 0x2

    aget-object v9, v7, v11

    const-string v11, "\"\""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const-string v11, ""

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v11, "@"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez v4, :cond_0

    const/4 v11, 0x1

    :try_start_2
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    :try_start_3
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x2

    if-ge v11, v12, :cond_7

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: format error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: out of boundary 2"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const-string v11, "WimaxStateTracker"

    const-string v12, "parseStartupCommand: string is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    aget-object v5, v7, v11

    const/4 v11, 0x1

    aget-object v6, v7, v11

    const-string v11, "\"\""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const-string v11, ""

    invoke-static {v5, v11}, Lcom/htc/net/wimax/WimaxNative;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_8
    invoke-static {v5, v6}, Lcom/htc/net/wimax/WimaxNative;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public performEapAka3GCrypto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public performEapAkaCrypto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public performEapSim2GCrypto([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public performEapSim3GCrypto([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public performEapSimCrypto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public readStartupCommands()V
    .locals 6

    const-string v4, "WimaxStateTracker"

    const-string v5, "readStartupCommands"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wimax/script.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "WimaxStateTracker"

    const-string v5, "readStartupCommands: script file not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->parseStartupCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "WimaxStateTracker"

    const-string v5, "readStartupCommands: file cannot read or open"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "WimaxStateTracker"

    const-string v5, "readStartupCommands : read script error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "WimaxStateTracker"

    const-string v5, "readStartupCommands : cannot close the file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect(): mTornDownByConnMgr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    if-eqz v2, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v2, "reconnect(): Wimax is stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public recoverThp()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v2, :cond_3

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    new-instance v0, Lcom/sqn/dcc/swmSsState;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsState;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    invoke-static {v0}, Lcom/htc/net/wimax/WimaxDcc;->mgtGetSsState(Lcom/sqn/dcc/swmSsState;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recoverThp : Ssstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  retry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyStateChange(ILcom/sqn/dcc/swmSsState;)V

    :cond_2
    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public registerNtfReady()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bSequansdReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "EchoTest: FW is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wimax.skipMsReady"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyDccConnected()V

    goto :goto_0

    :cond_1
    const-string v0, "WimaxStateTracker"

    const-string v1, "EchoTest: FW is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeNetworkConfiguration(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v4

    if-gez p1, :cond_0

    :try_start_0
    const-string v3, "WimaxStateTracker"

    const-string v5, "removeNetworkConfiguration: netId < 0"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return v2

    :cond_0
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v5}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v5, "removeNetworkConfiguration: Wimax is not enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/4 v1, -0x1

    :try_start_1
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>()V

    iput p1, v0, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    new-instance v6, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;

    invoke-direct {v6}, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;-><init>()V

    invoke-static {v5, v0, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_2

    const-string v3, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeNetworkConfiguration: cannot find netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    iget v5, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    if-eq v5, v3, :cond_3

    const-string v3, "WimaxStateTracker"

    const-string v5, "removeNetworkConfiguration: network is not DISABLED"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method public requestConnectionInfo()Lcom/htc/net/wimax/WimaxInfo;
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "requestConnectionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->requestPolledInfo(Lcom/htc/net/wimax/WimaxInfo;)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    return-object v0
.end method

.method public requestNaiIdFromNvItems()Ljava/lang/String;
    .locals 7

    const-string v4, "wimax.fakeNai"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-nez v4, :cond_1

    const-string v4, "WimaxStateTracker"

    const-string v5, "requestNaiIdFromNvItems: mConn == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v5, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v4, "C8268E0300"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    invoke-virtual {v4, v0}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v4, :cond_2

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestNaiIdFromNvItems result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, ""

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->validateStateOfNv(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->parsingDmResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v4, :cond_3

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nai_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/String;

    const-string v4, "C826D10101"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    const-string v4, "C826D10101"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v4, "WimaxStateTracker"

    const-string v5, "OoO error to get active index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public requestNaiIdFromSimCard()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNaiIdFromSimCard: nai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestNaiIdWithModestParameter()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-nez v2, :cond_1

    const-string v2, "WimaxStateTracker"

    const-string v3, "requestNaiIdWithModestParameter: mConn == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v3, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    const-string v3, "AT+HTC_WIMAX_NAI"

    invoke-virtual {v2, v3}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wimax.debug"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v2, :cond_2

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestNaiIdWithModestParameter AT command result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "wimax.debug"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestNaiIdWithModestParameter innerNai = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestNaiPwdFromNvItems()Ljava/lang/String;
    .locals 7

    const-string v4, "wimax.fakePassword"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    if-nez v4, :cond_1

    const-string v4, "WimaxStateTracker"

    const-string v5, "requestNaiPwdFromNvItems: mConn == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    sget-object v5, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->cmdTY2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->changeTTY(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v4, "C8268A0300"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mConn:Lcom/htc/net/wimax/dm/OriDMAgentConnector;

    invoke-virtual {v4, v0}, Lcom/htc/net/wimax/dm/OriDMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v4, :cond_2

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestNaiPwdFromNvItems result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, ""

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->validateStateOfNv(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->parsingDmResultNext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bPrintSecurityData:Z

    if-eqz v4, :cond_3

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nai_pwd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/String;

    const-string v4, "C826551F01"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    const-string v4, "C826551F01"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3}, Lcom/htc/net/wimax/WimaxStateTracker;->parsingDmResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v4, "WimaxStateTracker"

    const-string v5, "OoO error to get active index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public resetAuthConfig()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->resetAuthConfig()V

    return-void
.end method

.method public resetInterface()V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "resetInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "wimax.skipResetInterface"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "WimaxStateTracker"

    const-string v1, "skip resetInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->setIpAddress(I)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->clearLinkProperties()V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public revertToSprintNapid()Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "WimaxStateTracker"

    const-string v4, "revertToSprintNapid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v3}, Lcom/htc/net/wimax/Wimax4GApi;->revertToSprintNapid()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsPrivateNetwork:Z

    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/16 v3, 0x258

    invoke-static {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "WimaxStateTracker"

    const-string v4, "revertToSprintNapid failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public saveNetworkConfiguration()Z
    .locals 11

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    const-string v7, "/data/wimax/network.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v7, ""

    const-string v9, "config"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const-string v7, "\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "network"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "id"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v7, v0, Lcom/htc/net/FourG/FourGConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "id"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "priority"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v7, v0, Lcom/htc/net/FourG/FourGConfiguration;->priority:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "priority"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "status"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v7, v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "status"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "nspId"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getNspId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "nspId"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "nspName"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getNspName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "nspName"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "needUsername"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getNetworkRequiresUsername()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "needUsername"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "username"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "username"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "needPassword"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getNetworkRequiresPassword()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "needPassword"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "password"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "password"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n\t"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, ""

    const-string v9, "network"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    const-string v7, ""

    const-string v9, "config"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    :try_start_1
    monitor-exit v8

    :goto_1
    return v7

    :catch_0
    move-exception v1

    const-string v7, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "save network configuration failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public sendThpErrorBroadcast()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.wimax.ERROR_CODE_RETURN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.net.wimax.ERROR_CODE"

    const/16 v2, 0x2328

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setBtChannel()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableWimaxBtCoexist()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "skip setBtChannel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v2, "setBtChannel+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBtEnabled:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->Is23GProject()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "WiMAX/BT co-exist!! (HigH)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x26

    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setAFH(ZBB)Z

    :cond_3
    :goto_1
    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "setBtChannel-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v1, "WimaxStateTracker"

    const-string v2, "WiMAX/BT co-exist!! (Low)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x28

    const/16 v2, 0x4e

    invoke-virtual {v0, v3, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setAFH(ZBB)Z

    goto :goto_1
.end method

.method public setBtNormal()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableWimaxBtCoexist()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "skip setBtNormal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBtNormal  bBtEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBtEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBtEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-virtual {v0, v4, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->setAFH(ZBB)Z

    goto :goto_0
.end method

.method public setDecoration(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setDecoration(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 0

    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setIdleTimeOut(I)Z
    .locals 3

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIdleTimeOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit16 v0, p1, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->setIdleModeTimer(I)Z

    move-result v0

    return v0
.end method

.method public setInnerIdentity(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setInnerIdentity(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setInnerMethodType(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setInnerMethodType(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMethodType(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setMethodType(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOuterIdentity(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setOuterIdentity(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPassword(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setPassword(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPersistWimaxEnabled(Z)V
    .locals 3

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    const-string v2, "setPersistWimaxEnabled+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wimax_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "setPersistWimaxEnabled-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0

    return-void
.end method

.method public setRadio(Z)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "setRadio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxController;->setWimaxEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setRealm(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2}, Lcom/htc/net/wimax/Wimax4GApi;->setRealm(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSequansdReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bSequansdReady:Z

    return-void
.end method

.method setSuperUser()Z
    .locals 4

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "run_setuser sup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    const-string v2, "setUserMode isSuperUser=Super"

    invoke-static {v2, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WimaxStateTracker"

    const-string v3, "setSuperUser : lpfn_call_dcDbgCli fails"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setTeardownRequested(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setToggling(Z)Z
    .locals 3

    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsToggling:Z

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsToggling= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsToggling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public setUserDataEnable(Z)V
    .locals 3

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWifiLowPower()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableWimaxWifiCoexist()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WimaxStateTracker"

    const-string v3, "skip setWifiLowPower"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    if-eqz v2, :cond_3

    const-string v2, "WimaxStateTracker"

    const-string v3, "WiMAX/Wifi co-exist!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->Is23GProject()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setHotspotTXPower(I)V

    const/16 v2, 0x60b

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setHotspotAutoChannel(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower failed - illegal state exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower failed - remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setHotspotTXPower(I)V

    const/16 v2, 0x107

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setHotspotAutoChannel(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower failed - illegal state exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower failed - remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setWifiNormal()V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isDisableWimaxWifiCoexist()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    const-string v3, "skip setWifiNormal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiNormal bWifiEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->Is23GProject()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    const/16 v3, 0x63

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setHotspotTXPower(I)V

    :cond_1
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setHotspotAutoChannel(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiNormal failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower failed - remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWifiEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    const/16 v3, 0x63

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setHotspotTXPower(I)V

    :cond_3
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setHotspotAutoChannel(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiNormal failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "WimaxStateTracker"

    const-string v3, "setWifiLowPower failed - remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWimaxBlockedEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxTurnedOnBlockedByAirplaneMode:Z

    return-void
.end method

.method public setWimaxDunMode(Z)V
    .locals 7

    const/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->EnableModemNai()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWimaxDunMode, isDunMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableDunMode:Z

    if-ne v1, p1, :cond_2

    const-string v2, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxDunMode is already "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "disabled"

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEnableDunMode:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsNaiRejectSend:Z

    if-eqz p1, :cond_3

    const-string v1, "wimax.modem.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimaxLock:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "setWimaxDunMode : Wimax is enabling"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "wimax.modem.enable"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v1, :cond_6

    new-instance v0, Lcom/htc/net/wimax/ParcelableBoolean;

    invoke-direct {v0}, Lcom/htc/net/wimax/ParcelableBoolean;-><init>()V

    iput-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v0}, Lcom/htc/net/wimax/WimaxDcc;->mgtGetSsStarted(Lcom/htc/net/wimax/ParcelableBoolean;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/htc/net/wimax/ParcelableBoolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_5

    const-string v1, "WimaxStateTracker"

    const-string v2, "re-start wimax"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    invoke-virtual {p0, v4}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    invoke-static {v6}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    iput v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    invoke-virtual {p0, v5}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    invoke-static {v6}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    :cond_5
    iput-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    goto :goto_1

    :cond_6
    const-string v1, "WimaxStateTracker"

    const-string v2, "setWimaxDunMode: WiMAX is already turned off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setWimaxMobileCoexistIpRetentionTimer()Z
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "setWimaxMobileCoexistIpRetentionTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/htc/net/wimax/Wimax4GApi;->setIpRetentionTimer(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "setWimaxMobileCoexistIpRetentionTimer Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWimaxOnlyIpRetentionTimer()Z
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "setWimaxOnlyIpRetentionTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const v1, 0xc350

    invoke-interface {v0, v1}, Lcom/htc/net/wimax/Wimax4GApi;->setIpRetentionTimer(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WimaxStateTracker"

    const-string v1, "setWimaxOnlyIpRetentionTimer Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setWimaxStart()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "WimaxStateTracker"

    const-string v1, "setWimaxStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->startWimax()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWimaxStop()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WimaxStateTracker"

    const-string v2, "setWimaxStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v1}, Lcom/htc/net/wimax/Wimax4GApi;->stopWimax()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DORMANT:Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimax4GSupplicantState(Lcom/htc/net/FourG/FourGSupplicantState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setupBackoffStep()V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "persist.wimax.Scan_Retry"

    invoke-static {v6}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    sget-boolean v6, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scan retry = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v2}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setndssconfig detectBackoffStep="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cliCommand = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "WimaxStateTracker"

    const-string v7, "setupBackoffStep: lpfn_call_dcDbgCli fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v3

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseInt parsing error, prop_value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x78

    goto/16 :goto_0
.end method

.method setupDhcpRenewAlarm()V
    .locals 15

    const-wide/32 v13, 0xea60

    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x2

    iget-boolean v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bStaticIpEnabled:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "WimaxStateTracker"

    const-string v6, "setupDhcpRenewAlarm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".leasetime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDhcpRenewAlarm : lease time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v5}, Lcom/htc/net/wimax/WimaxController;->cancelAlarmDhcpRenew()V

    sget-boolean v5, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v5, :cond_2

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dhcp lease time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    mul-long/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v5, v11

    div-long v3, v5, v9

    cmp-long v5, v3, v13

    if-lez v5, :cond_3

    sub-long/2addr v3, v13

    :goto_1
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextRenewInterval is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v5, v3, v4}, Lcom/htc/net/wimax/WimaxController;->setAlarmDhcpRenew(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseLong parsing error, leaseTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    div-long/2addr v3, v9

    goto :goto_1
.end method

.method setupIdleMode()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "psms:changeidleautodelay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v4, :cond_1

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "psms:changeidleautodelay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->idleTimeout:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "setupIdleMode: lpfn_call_dcDbgCli fails"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method setupIdleMode(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "psms:changeidleautodelay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {v1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v4, :cond_1

    iput-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "psms:changeidleautodelay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "setupIdleMode: lpfn_call_dcDbgCli fails"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method setupNdss()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_0

    const-string v8, "WimaxStateTracker"

    const-string v9, "setupNdss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/sqn/dcc/OutValue;

    new-instance v8, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {v8}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    invoke-direct {v0, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {v1}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    if-nez v1, :cond_1

    const-string v7, "WimaxStateTracker"

    const-string v8, "setupNdss :  new ConnectionConfig fails"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_1
    invoke-static {v0}, Lcom/sqn/dcc/Ndss;->GetNdsConfig(Lcom/sqn/dcc/OutValue;)I

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "WimaxStateTracker"

    const-string v8, "setupNdss :  Ndss.GetNdsConfig fails"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqn/dcc/ConnectionConfig;

    if-nez v1, :cond_3

    const-string v7, "WimaxStateTracker"

    const-string v8, "setupNdss :  connectionCfg == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v7, v1, Lcom/sqn/dcc/ConnectionConfig;->useAutodetectEntryCriteria:Z

    iput-boolean v7, v1, Lcom/sqn/dcc/ConnectionConfig;->useAutodetectExitCriteria:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v8, "persist.wimax.Entry_RX"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    mul-int/lit8 v9, v5, 0x64

    iput v9, v8, Lcom/sqn/dcc/AutodetectEntryCriteria;->minRssi:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_4

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter rx_value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v8, "persist.wimax.Entry_CINR"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :goto_2
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    mul-int/lit8 v9, v5, 0x64

    iput v9, v8, Lcom/sqn/dcc/AutodetectEntryCriteria;->minCinr:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_5

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter cinr_value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v8, "persist.wimax.Entry_Delay"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    :goto_3
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    mul-int/lit16 v9, v5, 0x3e8

    iput v9, v8, Lcom/sqn/dcc/AutodetectEntryCriteria;->minDuration:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_6

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter duration_value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v8, "persist.wimax.Exit_CINR"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    :goto_4
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectExitCriteria:Lcom/sqn/dcc/AutodetectExitCriteria;

    mul-int/lit8 v9, v5, 0x64

    iput v9, v8, Lcom/sqn/dcc/AutodetectExitCriteria;->maxCinr:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_7

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exit cinr_value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v8, "persist.wimax.Exit_Delay"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    :goto_5
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectExitCriteria:Lcom/sqn/dcc/AutodetectExitCriteria;

    mul-int/lit16 v9, v5, 0x3e8

    iput v9, v8, Lcom/sqn/dcc/AutodetectExitCriteria;->minDuration:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_8

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exit cinr_value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v8, "persist.wimax.Scan_Retry"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v5

    :goto_6
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    mul-int/lit16 v9, v5, 0x3e8

    iput v9, v8, Lcom/sqn/dcc/AutodetectEntryCriteria;->scanRateNoBs:I

    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    mul-int/lit16 v9, v5, 0x3e8

    iput v9, v8, Lcom/sqn/dcc/AutodetectEntryCriteria;->scanRateBsFound:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_9

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan retry = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v8, "persist.wimax.Scan_Timeout"

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v5

    :goto_7
    iget-object v8, v1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    iput v5, v8, Lcom/sqn/dcc/AutodetectEntryCriteria;->retriesNoBs:I

    sget-boolean v8, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v8, :cond_a

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scan timeout = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v4, Lcom/sqn/dcc/OutValue;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v4, v8}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v8, :cond_c

    iput-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-static {v1, v4}, Lcom/sqn/dcc/Ndss;->SetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v8

    if-eqz v8, :cond_b

    const-string v7, "WimaxStateTracker"

    const-string v8, "setupNdss :  Ndss.SetNdsConfig fails"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x59

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    goto/16 :goto_2

    :catch_2
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12c

    goto/16 :goto_3

    :catch_3
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto/16 :goto_4

    :catch_4
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto/16 :goto_5

    :catch_5
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x78

    goto/16 :goto_6

    :catch_6
    move-exception v2

    const-string v8, "WimaxStateTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseInt parsing error, prop_value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_b
    iput-boolean v6, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    :cond_c
    move v6, v7

    goto/16 :goto_0
.end method

.method public setupRoutingRulesForStaticIp()V
    .locals 4

    const-string v2, "wimax.staticIP.wimax0.ipaddress"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wimax.staticIP.wimax0.gateway"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/htc/net/wimax/WimaxStateTracker;->nap(I)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxNative;->AddRouteToGateway()Z

    :cond_0
    return-void
.end method

.method showFwVersion()Z
    .locals 6

    const/4 v3, 0x0

    const-string v4, "WimaxStateTracker"

    const-string v5, "showFwVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    new-instance v2, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const-string v4, "showversion"

    invoke-static {v4, v2, v1}, Lcom/sqn/dcc/Dbg;->Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string v4, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method showRomInfo()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v5, "ro.build.changelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ROM CL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v5, "ro.build.fingerprint"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ROM fingerprint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "ro.build.project"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ROM project = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v5, "ro.product.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ROM version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v5, "ro.build.tags"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ROM tags = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "release"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_5

    iput-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    :goto_0
    const-string v5, "wimax.testkey"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_6

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    :cond_4
    :goto_1
    return v8

    :cond_5
    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    goto :goto_0

    :cond_6
    const-string v5, "wimax.testkey"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_4

    iput-boolean v8, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bReleaseKey:Z

    goto :goto_1
.end method

.method showSsMac()V
    .locals 4

    const-string v1, "persist.wimax.0.MAC"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SS MacAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startAccessOmaDmConfig()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->startAccessOmaDmConfig()V

    return-void
.end method

.method public declared-synchronized startDriver()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDriverIsStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mTornDownByConnMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "WimaxStateTracker"

    const-string v1, "startMonitoring()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxMonitor:Lcom/htc/net/wimax/WimaxMonitor;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxMonitor;->startServerSocket()V

    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public stopAccessOmaDmConfig()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->stopAccessOmaDmConfig()V

    return-void
.end method

.method public declared-synchronized stopDriver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDriverIsStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDriverIsStopped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->disconnectFromDcs()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "WimaxStateTracker"

    const-string v2, "DEVICE_STOP_EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyDriverStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "teardown(): mTornDownByConnMgr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isStopWimax:Z

    if-eqz v2, :cond_2

    const-string v1, "WimaxStateTracker"

    const-string v2, "teardown(): Wimax is stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->isSequansdExisting()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bWimaxShutdowning:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bIsEverConnecting:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bDumpConnectionDropLog:Z

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    invoke-virtual {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->mgtSetSsStarted(Z)Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bInThp:Z

    const/16 v2, 0x1f4

    invoke-static {v2}, Lcom/htc/net/wimax/WimaxStateTracker;->napm(I)V

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isConnecting:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isMeetEntry:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEverConnected:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isForceScan:Z

    iput v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->scanRound:I

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bsList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bBackoffState:Z

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isEapFailure:Z

    iput v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->retryCount:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxInfo:Lcom/htc/net/wimax/WimaxInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mHaveIPAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mObtainingIPAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateBsInfo()V
    .locals 7

    const-wide/16 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDcdBsMacAddress()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_mac:J

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBsInfo: bs_mac ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_mac:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDcdFrequency()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_freq:J

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBsInfo: freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_freq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_mac:J

    const/16 v3, 0x17

    shr-long/2addr v1, v3

    rem-long/2addr v1, v5

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->bs_mac:J

    const/16 v3, 0x18

    shr-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nap_id:J

    if-eqz v0, :cond_3

    const-string v1, "WimaxStateTracker"

    const-string v2, "updateBsInfo: multiple nsp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x14

    iput-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    :cond_0
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-wide v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    :cond_1
    :goto_1
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBsInfo: nap_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nap_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBsInfo: nsp_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "WimaxStateTracker"

    const-string v2, "updateBsInfo: single nsp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nap_id:J

    iput-wide v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nsp_id:J

    goto :goto_1
.end method

.method public updateLock()V
    .locals 11

    const/4 v10, 0x5

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->HaveSimLock()Z

    move-result v7

    if-eqz v7, :cond_8

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    const-string v6, ""

    const-string v7, "gsm.sim.types"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLock: SimType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "RIL_DBDM_SIM_CARD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsReleaseKey()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "wimax.lock.simtype"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_0
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: Sim is not DBDM sim!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLock: SimState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v10, :cond_2

    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: Sim is not ready!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLock: NetworkOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v10, :cond_3

    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: Operator code is not valid!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :cond_3
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_2
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :goto_2
    :try_start_3
    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLock: MCC code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "450"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsReleaseKey()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "wimax.lock.mcc"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_4
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: MCC code is not valid!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsReleaseKey()Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "wimax.lock.roaming"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_6
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: 3G is in Roaming state!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_7
    :goto_4
    iget-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    if-eq v7, v2, :cond_d

    if-eqz v2, :cond_c

    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: lock WiMAX!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.htc.net.wimax.WIMAX_4G_NOT_AVAILABLE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    :goto_5
    iput-boolean v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    :goto_6
    monitor-exit p0

    :cond_8
    return-void

    :cond_9
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: Sim is not DBDM sim: ignore for debug"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    :catch_0
    move-exception v0

    :try_start_4
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: Operator code is not valid!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: can not get MCC code!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_a
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: MCC code is not valid: ignore for debug"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: 3G is in Roaming state: ignore for debug"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const-string v7, "WimaxStateTracker"

    const-string v8, "updateLock: unlock WiMAX!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :cond_d
    const-string v8, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WiMAX already "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v7, p0, Lcom/htc/net/wimax/WimaxStateTracker;->isLocked:Z

    if-eqz v7, :cond_e

    const-string v7, "Locked"

    :goto_7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    const-string v7, "Unlocked"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7
.end method

.method public updateNetworkConfiguration(Lcom/htc/net/FourG/FourGConfiguration;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "WimaxStateTracker"

    invoke-virtual {p1}, Lcom/htc/net/FourG/FourGConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GInfo:Lcom/htc/net/wimax/HTCWimax4GInfo;

    invoke-virtual {v3}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v6, "updateNetworkConfiguration: Wimax is not enabled"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    new-instance v6, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;

    invoke-direct {v6}, Lcom/htc/net/wimax/HTCWimax4GConfigurationComparator;-><init>()V

    invoke-static {v3, p1, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimax4GConfiguration:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    move-object v2, v0

    if-nez v2, :cond_1

    const-string v3, "WimaxStateTracker"

    const-string v6, "updateNetworkConfiguration: config is null"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    move v3, v4

    goto :goto_0

    :cond_1
    instance-of v3, p1, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    if-eqz v3, :cond_2

    const-string v3, "WimaxStateTracker"

    const-string v4, "updateNetworkConfiguration: HTCWimax4GConfiguration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v3, p1, Lcom/htc/net/FourG/FourGConfiguration;->priority:I

    iput v3, v2, Lcom/htc/net/FourG/FourGConfiguration;->priority:I

    const/4 v3, 0x1

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    instance-of v3, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;

    if-eqz v3, :cond_3

    const-string v3, "WimaxStateTracker"

    const-string v4, "updateNetworkConfiguration: Wimax4GConfiguration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    instance-of v3, p1, Lcom/htc/net/FourG/FourGConfiguration;

    if-eqz v3, :cond_4

    const-string v3, "WimaxStateTracker"

    const-string v4, "updateNetworkConfiguration: FourGConfiguration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v3, "WimaxStateTracker"

    const-string v4, "updateNetworkConfiguration: else"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method updateNspTable(JLjava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    :try_start_0
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WimaxStateTracker"

    const-string v4, "nsp name changes=> update nsp name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "WimaxStateTracker"

    const-string v4, "there is such entry=> add to nsp table"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxStateTracker;->nspNameTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateWimaxEnabledState(I)V
    .locals 5

    iget v1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxState:I

    iput p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxState:I

    sget-boolean v2, Lcom/htc/net/wimax/WimaxStateTracker;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast WimaxController.WIMAX_ENABLED_CHANGED_ACTION, currrent state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "curWimaxEnabledState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "preWimaxEnabledState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/net/wimax/WimaxStateTracker;->iPendingWimaxState:I

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/net/wimax/WimaxStateTracker;->iPendingWimaxState:I

    goto :goto_0
.end method

.method public wimaxRescan()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->wimaxRescan(Z)I

    move-result v0

    return v0
.end method

.method public declared-synchronized wimaxRestart()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "WimaxStateTracker"

    const-string v1, "wimaxRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxStateTracker;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    const-string v1, "resetss"

    invoke-interface {v0, v1}, Lcom/htc/net/wimax/Wimax4GApi;->sendCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
