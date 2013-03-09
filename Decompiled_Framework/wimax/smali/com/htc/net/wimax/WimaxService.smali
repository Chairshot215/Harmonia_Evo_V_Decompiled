.class public Lcom/htc/net/wimax/WimaxService;
.super Lcom/htc/net/wimax/IWimaxController$Stub;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/WimaxService$LockList;,
        Lcom/htc/net/wimax/WimaxService$WimaxLock;,
        Lcom/htc/net/wimax/WimaxService$WimaxHandler;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_DHCPRENEW:Ljava/lang/String; = "com.android.server.WimaxController.action.DEVICE_DHCPRENEW"

.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WimaxController.action.DEVICE_IDLE"

.field public static final ACTION_DEVICE_SCANRETRY:Ljava/lang/String; = "com.android.server.WimaxController.action.DEVICE_SCANRETRY"

.field private static final DEFAULT_IDLE_MILLIS:J = 0x1d4c0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final DHCPRENEW_REQUEST:I = 0x2

.field private static final IDLE_REQUEST:I = 0x0

.field private static LOCAL_LOGD:Z = false

.field private static final LOG_DEBUG:I = 0x4

.field private static final LOG_ERROR:I = 0x2

.field private static final LOG_FATAL:I = 0x1

.field private static final LOG_WARNING:I = 0x3

.field private static final MAX_RETRY_CONNECTION_TIMES:I = 0x1f4

.field private static final MESSAGE_DISABLE_WIMAX:I = 0x1

.field private static final MESSAGE_ENABLE_WIMAX:I = 0x0

.field private static final MESSAGE_START_WIMAX:I = 0x2

.field private static final MESSAGE_STOP_WIMAX:I = 0x3

.field private static final SCANRETRY_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WimaxService"

.field private static logLevel:I

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sDhcpProps:[Ljava/lang/String;


# instance fields
.field private bIsDmCmdReady:Z

.field private bPostponeLaunch:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdle:Z

.field private mDhcpRenewIntent:Landroid/app/PendingIntent;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private final mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanRetryIntent:Landroid/app/PendingIntent;

.field private mScreenOff:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

.field private mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

.field private final mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

.field private retryConnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    const/4 v0, 0x4

    sput v0, Lcom/htc/net/wimax/WimaxService;->logLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/net/wimax/WimaxStateTracker;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/htc/net/wimax/IWimaxController$Stub;-><init>()V

    iput v9, p0, Lcom/htc/net/wimax/WimaxService;->retryConnectTimes:I

    new-instance v6, Lcom/htc/net/wimax/WimaxService$LockList;

    invoke-direct {v6, p0}, Lcom/htc/net/wimax/WimaxService$LockList;-><init>(Lcom/htc/net/wimax/WimaxService;)V

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxService;->bIsDmCmdReady:Z

    iput-boolean v9, p0, Lcom/htc/net/wimax/WimaxService;->bPostponeLaunch:Z

    new-instance v6, Lcom/htc/net/wimax/WimaxService$1;

    invoke-direct {v6, p0}, Lcom/htc/net/wimax/WimaxService$1;-><init>(Lcom/htc/net/wimax/WimaxService;)V

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v6, Lcom/htc/net/wimax/WimaxService$2;

    invoke-direct {v6, p0}, Lcom/htc/net/wimax/WimaxService$2;-><init>(Lcom/htc/net/wimax/WimaxService;)V

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v6, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "WimaxService"

    const-string v7, "WimaxService+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "WimaxService"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/net/wimax/WimaxService$WimaxHandler;-><init>(Lcom/htc/net/wimax/WimaxService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    invoke-static {v8}, Lcom/htc/net/wimax/WimaxCustomize;->getApiInstance(Lcom/htc/net/wimax/WimaxEventObserver;)Lcom/htc/net/wimax/Wimax4GApi;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxStateTracker;->getPersistWimaxEnabled()Z

    move-result v4

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.WimaxController.action.DEVICE_IDLE"

    invoke-direct {v1, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mIdleIntent:Landroid/app/PendingIntent;

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.WimaxController.action.DEVICE_SCANRETRY"

    invoke-direct {v3, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mScanRetryIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.server.WimaxController.action.DEVICE_DHCPRENEW"

    invoke-direct {v0, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    invoke-static {v6, v11, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v6, "WimaxService"

    invoke-virtual {v2, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    sput-object v6, Lcom/htc/net/wimax/WimaxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->registerForBroadcasts()V

    const-string v7, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WimaxService starting up with WiMAX "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_3

    const-string v6, "enabled"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxStateTracker;->isLock()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "WimaxService"

    const-string v7, "Wimax is Locked!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "dhcp.wimax0.dns1"

    aput-object v7, v6, v9

    const-string v7, "dhcp.wimax0.dns2"

    aput-object v7, v6, v10

    const-string v7, "dhcp.wimax0.ipaddress"

    aput-object v7, v6, v11

    const/4 v7, 0x3

    const-string v8, "dhcp.wimax0.gateway"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "dhcp.wimax0.mask"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "dhcp.wimax0.leasetime"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "dhcp.wimax0.server"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "dhcp.wimax0.pid"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "dhcp.wimax0.reason"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "dhcp.wimax0.result"

    aput-object v8, v6, v7

    sput-object v6, Lcom/htc/net/wimax/WimaxService;->sDhcpProps:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/htc/net/wimax/WimaxService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    sget-boolean v6, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_2

    const-string v6, "WimaxService"

    const-string v7, "WimaxService-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v6, "disabled"

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v4}, Lcom/htc/net/wimax/WimaxService;->setWimaxEnabledBlocking(ZZ)Z

    goto :goto_1
.end method

.method private static LOG(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/htc/net/wimax/WimaxService;->logLevel:I

    if-lt v0, p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "WimaxService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "WimaxService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/net/wimax/WimaxService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/net/wimax/WimaxService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxService;->bIsDmCmdReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/net/wimax/WimaxService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxService;->bPostponeLaunch:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/net/wimax/WimaxService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxService;->bPostponeLaunch:Z

    return p1
.end method

.method static synthetic access$500(I)V
    .locals 0

    invoke-static {p0}, Lcom/htc/net/wimax/WimaxService;->nap(I)V

    return-void
.end method

.method static synthetic access$600()Landroid/os/PowerManager$WakeLock;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/WimaxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/net/wimax/WimaxService;)Lcom/htc/net/wimax/WimaxService$LockList;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/net/wimax/WimaxService;Landroid/os/IBinder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxService;->releaseWimaxLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method private acquireWimaxLockLocked(Lcom/htc/net/wimax/WimaxService$WimaxLock;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "acquireWimaxLockLocked+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxService$LockList;->addLock(Lcom/htc/net/wimax/WimaxService$WimaxLock;)V

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->updateWimaxState()V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxService"

    const-string v1, "acquireWimaxLockLocked-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private clearDhcpProperties()V
    .locals 4

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxService"

    const-string v3, "clearDhcpProperties+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/htc/net/wimax/WimaxService;->sDhcpProps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/htc/net/wimax/WimaxService;->sDhcpProps:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/net/wimax/WimaxService;->sDhcpProps:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WimaxService"

    const-string v3, "clearDhcpProperties-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIMAX_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIMAX_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
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

.method private registerForBroadcasts()V
    .locals 6

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxService"

    const-string v3, "registerForBroadcasts +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "wimax"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "WimaxService"

    const-string v3, "Register ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.REBOOT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.WimaxController.action.DEVICE_SCANRETRY"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.WimaxController.action.DEVICE_DHCPRENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.net.wimax.WIMAX_4G_NOT_AVAILABLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "WimaxService"

    const-string v3, "registerForBroadcasts -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private releaseWimaxLockLocked(Landroid/os/IBinder;)Z
    .locals 3

    sget-boolean v1, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxService"

    const-string v2, "releaseWimaxLockLocked+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    invoke-virtual {v1, p1}, Lcom/htc/net/wimax/WimaxService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/htc/net/wimax/WimaxService$WimaxLock;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->updateWimaxState()V

    sget-boolean v1, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "WimaxService"

    const-string v2, "releaseWimaxLockLocked-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEnableMessage(ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxService"

    const-string v4, "sendEnableMessage+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    if-eqz p1, :cond_2

    move v3, v2

    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v4, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v1, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "WimaxService"

    const-string v2, "sendEnableMessage-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "stateName +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxService"

    const-string v1, "stateName ret invalid-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "WimaxService"

    const-string v1, "stateName ret disabling-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "WimaxService"

    const-string v1, "stateName ret disabled-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_4

    const-string v0, "WimaxService"

    const-string v1, "stateName ret enabling-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "WimaxService"

    const-string v1, "stateName ret enabled-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_6

    const-string v0, "WimaxService"

    const-string v1, "stateName ret unknown-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "unknown state"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private terminateSequansd()Z
    .locals 4

    const/4 v1, 0x1

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WimaxService"

    const-string v3, "terminateSequansd +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-string v2, "wimax.sequansd.pid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/htc/net/wimax/WimaxNative;->TerminateProcess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "WimaxService"

    const-string v2, "can\'t terminate sequansd!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v2, "wimax.sequansd.pid"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "WimaxService"

    const-string v3, "terminateSequansd -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "WimaxService"

    const-string v3, "sequansd_pid is null or zero!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWimaxState()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v8, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v8, :cond_0

    const-string v8, "WimaxService"

    const-string v9, "updatewimaxState +"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v8}, Lcom/htc/net/wimax/WimaxStateTracker;->getPersistWimaxEnabled()Z

    move-result v3

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->isAirplaneModeOn()Z

    move-result v0

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    invoke-virtual {v8}, Lcom/htc/net/wimax/WimaxService$LockList;->hasLocks()Z

    move-result v1

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget-object v8, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v8}, Lcom/htc/net/wimax/WimaxStateTracker;->isLock()Z

    move-result v8

    if-nez v8, :cond_4

    move v4, v6

    :goto_0
    iget-boolean v8, p0, Lcom/htc/net/wimax/WimaxService;->mDeviceIdle:Z

    if-eqz v8, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    move v5, v6

    :goto_1
    iget-object v7, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    monitor-enter v7

    if-eqz v4, :cond_8

    if-eqz v5, :cond_6

    :try_start_0
    sget-boolean v6, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_2

    const-string v6, "WimaxService"

    const-string v8, "updatewimaxState : wimaxEnabled,wimaxStarted"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v6, Lcom/htc/net/wimax/WimaxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/htc/net/wimax/WimaxService;->sendEnableMessage(ZZ)V

    sget-object v6, Lcom/htc/net/wimax/WimaxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->sendEmptyMessage(I)Z

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v6, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_3

    const-string v6, "WimaxService"

    const-string v7, "updatewimaxState -"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    move v4, v7

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_1

    :cond_6
    :try_start_1
    sget-boolean v6, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_7

    const-string v6, "WimaxService"

    const-string v8, "updatewimaxState : wimaxEnabled,not wimaxStarted"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wimax_mobile_data_transition_wakelock_timeout_ms"

    const/16 v9, 0x1f40

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lcom/htc/net/wimax/WimaxService$WimaxHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_8
    :try_start_2
    sget-boolean v6, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v6, :cond_9

    const-string v6, "WimaxService"

    const-string v8, "updatewimaxState : not wimaxEnabled"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v6, Lcom/htc/net/wimax/WimaxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/htc/net/wimax/WimaxService;->sendEnableMessage(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public acquireWimaxLock(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 4

    sget-boolean v1, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WimaxService"

    const-string v2, "acquireWimaxLock+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/net/wimax/WimaxService$WimaxLock;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/net/wimax/WimaxService$WimaxLock;-><init>(Lcom/htc/net/wimax/WimaxService;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "WimaxService"

    const-string v3, "acquireWimaxLock-"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/net/wimax/WimaxService;->acquireWimaxLockLocked(Lcom/htc/net/wimax/WimaxService$WimaxLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addFrequency(III)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/net/wimax/Wimax4GApi;->addFrequency(III)Z

    move-result v0

    return v0
.end method

.method public addNetwork(Lcom/htc/net/wimax/Wimax4GConfiguration;)I
    .locals 2

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    invoke-direct {v0, p1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v1, v0}, Lcom/htc/net/wimax/WimaxStateTracker;->addNetworkConfiguration(Lcom/htc/net/wimax/HTCWimax4GConfiguration;)I

    move-result v1

    return v1
.end method

.method public cancelAlarmDhcpRenew()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public cancelAlarmScanRetry()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mScanRetryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public changeToCorpNapid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->changeToCorpNapid(I)Z

    move-result v0

    return v0
.end method

.method public clearChannelList()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->clearChannelList()Z

    move-result v0

    return v0
.end method

.method public cli(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cli +- cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->cli(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cliCommand(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/htc/net/wimax/WimaxDcc;->cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    return v0
.end method

.method public connectToDcs()Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "connectToDcs +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-static {v0}, Lcom/htc/net/wimax/WimaxDcc;->connectToDcs(Lcom/htc/net/wimax/WimaxStateTracker;)Z

    move-result v0

    return v0
.end method

.method public dcIsConnected()Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "dcIsConnected +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxService;->isDeviceReady()Z

    move-result v0

    return v0
.end method

.method public debugChange(Z)V
    .locals 1

    sput-boolean p1, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->debugChange(Z)V

    return-void
.end method

.method public disableNetwork(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->disableNetworkConfiguration(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 3

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxStop()Z

    move-result v0

    return v0
.end method

.method public disconnectFromDcs()Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "disconnectFromDcs +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/htc/net/wimax/WimaxDcc;->disconnectFromDcs()Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "dump +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wimax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->getWimaxEnabledState()I

    move-result v1

    invoke-static {v1}, Lcom/htc/net/wimax/WimaxService;->stateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxService"

    const-string v1, "dump -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public enableLogLevel(I)V
    .locals 1

    sput p1, Lcom/htc/net/wimax/WimaxService;->logLevel:I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->enableLogLevel(I)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->enableLogLevel(I)V

    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->enableNetworkConfiguration(IZ)Z

    move-result v0

    return v0
.end method

.method public getAdapterStats(Lcom/sqn/dcc/AdapterStatistics;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getAdapterStats +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->getAdapterStats(Lcom/sqn/dcc/AdapterStatistics;)Z

    move-result v0

    return v0
.end method

.method public getBoardName(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getBoardName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->getBoardName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getConfiguredDefaultNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDefaultNetworkConfiguration()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getNetworkConfiguration()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Lcom/htc/net/wimax/WimaxInfo;
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getConnectionInfo +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceAccessPermission()V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxService"

    const-string v1, "getConnectionInfo -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->requestConnectionInfo()Lcom/htc/net/wimax/WimaxInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDecoration(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getDecoration(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/htc/net/FourG/DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDeviceInfo()Lcom/htc/net/FourG/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInnerIdentity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getInnerIdentity(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInnerMethodType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getInnerMethodType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAkaNotificationCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->GetLastAuthAkaNotificationCode()I

    move-result v0

    return v0
.end method

.method public getLastEapNotificationMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->GetLastAuthEapNotificationMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress(Lcom/htc/net/wimax/ParcelableLong;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getMacAddress +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->getMacAddress(Lcom/htc/net/wimax/ParcelableLong;)Z

    move-result v0

    return v0
.end method

.method public getMethodType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getMethodType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsVersion(Lcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/DeviceVersion;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getMsVersion +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/htc/net/wimax/WimaxDcc;->getMsVersion(Lcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/DeviceVersion;)Z

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOuterIdentity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getOuterIdentity(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getPassword(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->getRealm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRfChipName(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getRfChipName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->getRfChipName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getScanResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanResultsUpdateTime()J
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getScanResultsUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSettingAuthMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->getSettingAuthMode()I

    move-result v0

    return v0
.end method

.method public getSettingChannelList()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->getSettingChannelList()[I

    move-result-object v0

    return-object v0
.end method

.method public getSettingIdleModeTimer()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getSettingIdleModeTimer()I

    move-result v0

    return v0
.end method

.method public getSettingTxPower()F
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->getSettingTxPower()F

    move-result v0

    return v0
.end method

.method public getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWimaxProp +- propId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxNative;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWimaxState()I
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "getWimaxState+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceAccessPermission()V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxService"

    const-string v1, "getWimaxState-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->getWimaxEnabledState()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->isLock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackoffState()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->isBackoffState()Z

    move-result v0

    return v0
.end method

.method public isDeviceReady()Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "isDeviceReady +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/htc/net/wimax/ParcelableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/net/wimax/ParcelableBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/net/wimax/WimaxService;->mgtGetSsStarted(Lcom/htc/net/wimax/ParcelableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isPrivateNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->isPrivateNetwork()Z

    move-result v0

    return v0
.end method

.method public mgtGetSsStarted(Lcom/htc/net/wimax/ParcelableBoolean;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "mgtGetSsStarted +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->mgtGetSsStarted(Lcom/htc/net/wimax/ParcelableBoolean;)Z

    move-result v0

    return v0
.end method

.method public mgtGetSsState(Lcom/sqn/dcc/swmSsState;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "mgtGetSsState +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->mgtGetSsState(Lcom/sqn/dcc/swmSsState;)Z

    move-result v0

    return v0
.end method

.method public mgtSetSsStarted(Z)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "mgtSetSsStarted +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->mgtSetSsStarted(Z)Z

    move-result v0

    return v0
.end method

.method public ndssConnectToNetwork(IJIILcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 6

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssConnectToNetwork +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-short v3, p4

    move v0, p1

    move-wide v1, p2

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/htc/net/wimax/WimaxDcc;->ndssConnectToNetwork(IJSILcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    return v0
.end method

.method public ndssDisconnectFromNetwork(Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssDisconnectFromNetwork +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->ndssDisconnectFromNetwork(Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    return v0
.end method

.method public ndssGetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssGetNdsConfig +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->ndssGetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;)Z

    move-result v0

    return v0
.end method

.method public ndssGetScanResults([Lcom/sqn/dcc/ScanResult;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssGetScanResults +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->ndssGetScanResults([Lcom/sqn/dcc/ScanResult;)Z

    move-result v0

    return v0
.end method

.method public ndssGetScanResultsExt([Lcom/sqn/dcc/ScanResultExt;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssGetScanResultsExt +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->ndssGetScanResultsExt([Lcom/sqn/dcc/ScanResultExt;)Z

    move-result v0

    return v0
.end method

.method public ndssScan(Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssScan +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/htc/net/wimax/WimaxDcc;->ndssScan(Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    return v0
.end method

.method public ndssSetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 2

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "ndssSetNdsConfig +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Lcom/htc/net/wimax/WimaxDcc;->ndssSetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/htc/net/wimax/ParcelableInteger;)Z

    move-result v0

    return v0
.end method

.method public reassociate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->wimaxRestart()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 3

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxStart()Z

    move-result v0

    return v0
.end method

.method public refreshConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/Wimax4GApi;->updateConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/net/wimax/WimaxService;->getWimax4GInfo()Lcom/htc/net/wimax/HTCWimax4GInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V

    invoke-virtual {v0}, Lcom/htc/net/wimax/HTCWimax4GInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V

    :cond_0
    return-void
.end method

.method public releaseWimaxLock(Landroid/os/IBinder;)Z
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "releaseWimaxLock+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mLocks:Lcom/htc/net/wimax/WimaxService$LockList;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "WimaxService"

    const-string v2, "releaseWimaxLock-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/net/wimax/WimaxService;->releaseWimaxLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->removeNetworkConfiguration(I)Z

    move-result v0

    return v0
.end method

.method public resetAuthConfig()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->resetAuthConfig()V

    return-void
.end method

.method public resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;Landroid/app/PendingIntent;)V
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {p1, v0}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {p1, v0}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->resetConnectionStatistics(Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public resetPacketErrorRate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0}, Lcom/htc/net/wimax/Wimax4GApi;->resetPacketErrorRate()Z

    move-result v0

    return v0
.end method

.method public revertToSprintNapid()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->revertToSprintNapid()Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->saveNetworkConfiguration()Z

    move-result v0

    return v0
.end method

.method public setAlarmDhcpRenew(J)V
    .locals 5

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceAccessPermission()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxService;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setAlarmScanRetry(J)V
    .locals 5

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceAccessPermission()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxService;->mScanRetryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setAuthMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->setAuthMode(I)Z

    move-result v0

    return v0
.end method

.method public setDecoration(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setDecoration(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIdleModeTimer(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setIdleTimeOut(I)Z

    move-result v0

    return v0
.end method

.method public setInnerIdentity(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setInnerIdentity(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setInnerMethodType(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setInnerMethodType(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMethodType(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setMethodType(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOuterIdentity(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setOuterIdentity(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPassword(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setPassword(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRealm(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/net/wimax/WimaxStateTracker;->setRealm(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setToggling(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setToggling(Z)Z

    move-result v0

    return v0
.end method

.method public setTxPower(F)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/Wimax4GApi;->setTxPower(F)Z

    move-result v0

    return v0
.end method

.method public setWimaxDunMode(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxDunMode(Z)V

    return-void
.end method

.method public setWimaxEnabled(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/net/wimax/WimaxService;->setWimaxEnabledPersist(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWimaxEnabledBlocking(ZZ)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v3, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WimaxService"

    const-string v4, "setWimaxEnabledBlocking+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :goto_0
    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->getWimaxEnabledState()I

    move-result v3

    if-ne v3, v0, :cond_3

    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "WimaxService"

    const-string v3, "setWimaxEnabledBlocking: enabled == eventualWimaxState-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v3, :cond_4

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tracker state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v5}, Lcom/htc/net/wimax/WimaxStateTracker;->getWimaxEnabledState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eventual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v3, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setPersistWimaxEnabled(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "WimaxService"

    const-string v4, "setWimaxEnabledBlocking: airplane mode is on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v3, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->setWimaxBlockedEnabled(Z)V

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxStateTracker;->notifyResetSignalLevel()V

    const-string v1, "WimaxService"

    const-string v3, "setWimaxEnabledBlocking: can\'t turn on Wimax by AirplaneMode-"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Lcom/htc/net/wimax/WimaxStateTracker;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "WimaxService"

    const-string v3, "setWimaxEnabledBlocking: can\'t turn on Wimax by EmergencyCall-"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_9

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->NeedDmCmdDuringWimaxConnection()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/htc/net/wimax/WimaxService;->bIsDmCmdReady:Z

    if-nez v2, :cond_8

    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxService;->bPostponeLaunch:Z

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v2}, Lcom/htc/net/wimax/WimaxStateTracker;->enableWimax()Z

    goto/16 :goto_1

    :cond_9
    sget-boolean v2, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v2, :cond_a

    const-string v2, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWimaxEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v2}, Lcom/htc/net/wimax/WimaxStateTracker;->resetInterface()V

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v2, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateWimaxEnabledState(I)V

    goto/16 :goto_1
.end method

.method public setWimaxEnabledPersist(ZZ)Z
    .locals 4

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    const-string v1, "setWimaxEnabledPersist+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/htc/net/wimax/WimaxService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    if-nez v0, :cond_1

    const-string v0, "WimaxService"

    const-string v1, "setWimaxEnabled: mWimaxHandler == null -"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxHandler:Lcom/htc/net/wimax/WimaxService$WimaxHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/net/wimax/WimaxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWimaxEnabledPersist("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/net/wimax/WimaxService;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/htc/net/wimax/WimaxService;->sendEnableMessage(ZZ)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "WimaxService"

    const-string v1, "setWimaxEnabledPersist-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/htc/net/wimax/WimaxService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWimaxProp +- propId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Lcom/htc/net/wimax/WimaxNative;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startAccessOmaDmConfig()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->startAccessOmaDmConfig()V

    return-void
.end method

.method public stopAccessOmaDmConfig()V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->stopAccessOmaDmConfig()V

    return-void
.end method

.method public updateNetwork(Lcom/htc/net/FourG/FourGConfiguration;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Lcom/htc/net/wimax/WimaxStateTracker;->updateNetworkConfiguration(Lcom/htc/net/FourG/FourGConfiguration;)Z

    move-result v0

    return v0
.end method

.method public wimaxRescan()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxService;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxStateTracker;->wimaxRescan()I

    move-result v0

    return v0
.end method
