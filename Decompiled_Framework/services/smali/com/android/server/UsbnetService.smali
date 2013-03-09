.class public Lcom/android/server/UsbnetService;
.super Lcom/htc/net/usbnet/IUsbnetController$Stub;
.source "UsbnetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UsbnetService$HtcUsbHistory;,
        Lcom/android/server/UsbnetService$LockList;,
        Lcom/android/server/UsbnetService$UsbnetLock;,
        Lcom/android/server/UsbnetService$UsbnetHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.UsbnetController.action.DEVICE_IDLE"

.field private static final HTC_HISTORY_ENTRIES:I = 0x10

.field private static final HTC_HISTORY_LOG:Z = true

.field private static final HTC_HISTORY__EVENT_2PC_STATE_CHANGE:I = 0x1

.field private static final HTC_HISTORY__EVENT_TOTAL:I = 0x2

.field private static final HTC_HISTORY__EVENT_USB_STATE_CHANGE:I = 0x0

.field private static final IDLE_REQUEST:I = 0x0

.field private static final LOCAL_LOGD:Z = true

.field private static final MESSAGE_DISABLE_USBNET:I = 0x1

.field private static final MESSAGE_ENABLE_USBNET:I = 0x0

.field private static final MESSAGE_START_USBNET:I = 0x2

.field private static final MESSAGE_STOP_USBNET:I = 0x3

.field public static final MODE_NATIVE_CMD:I = 0x0

.field public static final MODE_USB_CTRL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbnetService"

.field public static final TYPE_USB_IPT:Ljava/lang/String; = "usb_ipt"

.field public static final TYPE_USB_IPT_CONN:Ljava/lang/String; = "usb_conn"

.field public static final TYPE_USB_MTP:Ljava/lang/String; = "usb_mtp"

.field public static final TYPE_USB_MTP_OFF:Ljava/lang/String; = "usb_mtpoff"

.field public static final TYPE_USB_NONE:Ljava/lang/String; = "usb_none"

.field public static final UIS_DEVNAME:Ljava/lang/String; = "usb0"

.field public static final UIS_PROP_NAME_PS_GW:Ljava/lang/String; = "net.usb0.ps.gw"

.field public static final fcPASS_THRU_DHCP_DNSMASQ:Z = true

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field iBd:Landroid/os/IBinder;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdle:Z

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private final mLocks:Lcom/android/server/UsbnetService$LockList;

.field private mLogUsb:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/UsbnetService$HtcUsbHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOff:Z

.field private mUsbnetHandler:Lcom/android/server/UsbnetService$UsbnetHandler;

.field private final mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

.field nwService:Landroid/os/INetworkManagementService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/net/usbnet/UsbnetStateTracker;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/htc/net/usbnet/IUsbnetController$Stub;-><init>()V

    new-instance v4, Lcom/android/server/UsbnetService$LockList;

    invoke-direct {v4, p0}, Lcom/android/server/UsbnetService$LockList;-><init>(Lcom/android/server/UsbnetService;)V

    iput-object v4, p0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    new-instance v4, Lcom/android/server/UsbnetService$1;

    invoke-direct {v4, p0}, Lcom/android/server/UsbnetService$1;-><init>(Lcom/android/server/UsbnetService;)V

    iput-object v4, p0, Lcom/android/server/UsbnetService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/UsbnetService;->mLogUsb:Ljava/util/LinkedList;

    const-string v4, "UsbnetService"

    const-string v5, "UsbnetService+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "UsbnetService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/android/server/UsbnetService$UsbnetHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/UsbnetService$UsbnetHandler;-><init>(Lcom/android/server/UsbnetService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/UsbnetService;->mUsbnetHandler:Lcom/android/server/UsbnetService$UsbnetHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/UsbnetService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.UsbnetController.action.DEVICE_IDLE"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/UsbnetService;->mIdleIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "UsbnetService"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/UsbnetService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/android/server/UsbnetService;->registerForBroadcasts()V

    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    :cond_0
    const-string v5, "UsbnetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbnetService starting up with UsbNet "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_1

    const-string v4, "enabled"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UsbnetService"

    const-string v5, "UsbnetService-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v4, "disabled"

    goto :goto_0
.end method

.method private SendNotifyPhaseIntent(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.usbnet.MODE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "UsbnetSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UsbnetService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/UsbnetService;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/UsbnetService;Landroid/os/IBinder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/UsbnetService;->releaseUsbnetLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/UsbnetService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UsbnetService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UsbnetService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UsbnetService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/UsbnetService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UsbnetService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/UsbnetService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UsbnetService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/UsbnetService;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/UsbnetService;->addToHtcUsbHistory(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/UsbnetService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/UsbnetService;->SendNotifyPhaseIntent(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/UsbnetService;)Lcom/htc/net/usbnet/UsbnetStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    return-object v0
.end method

.method static synthetic access$800()Landroid/os/PowerManager$WakeLock;
    .locals 1

    sget-object v0, Lcom/android/server/UsbnetService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UsbnetService;)Lcom/android/server/UsbnetService$LockList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    return-object v0
.end method

.method private acquireUsbnetLockLocked(Lcom/android/server/UsbnetService$UsbnetLock;)Z
    .locals 2

    const-string v0, "UsbnetService"

    const-string v1, "acquireUsbnetLockLocked+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/UsbnetService$LockList;->addLock(Lcom/android/server/UsbnetService$UsbnetLock;)V

    const-string v0, "UsbnetService"

    const-string v1, "acquireUsbnetLockLocked-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private addToHtcUsbHistory(I[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/android/server/UsbnetService$HtcUsbHistory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/UsbnetService$HtcUsbHistory;-><init>(Lcom/android/server/UsbnetService;Lcom/android/server/UsbnetService$1;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/UsbnetService$HtcUsbHistory;->timeStamp:J

    iput p1, v0, Lcom/android/server/UsbnetService$HtcUsbHistory;->event:I

    iput-object p2, v0, Lcom/android/server/UsbnetService$HtcUsbHistory;->args:[Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UsbnetService;->mLogUsb:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mLogUsb:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mLogUsb:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enforceAccessPermission()V
    .locals 0

    return-void
.end method

.method private enforceChangePermission()V
    .locals 0

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UsbnetService"

    const-string v3, "isAirplaneModeOn +-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

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

.method private registerForBroadcasts()V
    .locals 5

    const-string v1, "UsbnetService"

    const-string v2, "registerForBroadcasts +"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.UsbnetController.action.DEVICE_IDLE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.usbnet.STATE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "UsbnetService"

    const-string v2, "registerForBroadcasts -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseUsbnetLockLocked(Landroid/os/IBinder;)Z
    .locals 3

    const-string v1, "UsbnetService"

    const-string v2, "releaseUsbnetLockLocked+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    invoke-virtual {v1, p1}, Lcom/android/server/UsbnetService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/UsbnetService$UsbnetLock;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "UsbnetService"

    const-string v2, "releaseUsbnetLockLocked-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEnableMessage(ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "UsbnetService"

    const-string v4, "sendEnableMessage+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/UsbnetService;->mUsbnetHandler:Lcom/android/server/UsbnetService$UsbnetHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "UsbnetService"

    const-string v2, "sendEnableMessage-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized UsbMiscControl(ILjava/lang/String;)I
    .locals 7

    monitor-enter p0

    const/4 v1, -0x1

    const/4 v0, -0x1

    :try_start_0
    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBNET] MiscControl+: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    if-nez v4, :cond_0

    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.net.usbnet.STATE_NOTIFY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "newNetworkState"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const-string v4, "UsbnetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[USBNET] MiscControl-: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :pswitch_0
    :try_start_1
    const-string v4, "usb_mtp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->SwitchUsbFunc(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "UsbnetService"

    const-string v5, "Exception in TYPE_USB_MTP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    :try_start_4
    const-string v4, "usb_mtpoff"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    :try_start_5
    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->SwitchUsbFunc(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_6
    const-string v4, "UsbnetService"

    const-string v5, "Exception in TYPE_USB_MTP_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v4, "usb_ipt"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startIptMode(I)V

    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->SwitchUsbFunc(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v3

    :try_start_8
    const-string v4, "UsbnetService"

    const-string v5, "Exception in TYPE_USB_IPT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    const-string v4, "usb_none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startIptMode(I)V

    iget-object v4, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->SwitchUsbFunc(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :try_start_a
    const-string v4, "UsbnetService"

    const-string v5, "Exception in TYPE_USB_NONE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    const-string v4, "usb_conn"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public UsbMiscControl_IPT(I)I
    .locals 6

    const/4 v5, 0x1

    const-string v2, "UsbnetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[USBNET] MiscControl_IPT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UsbnetService;->iBd:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v2, "usb_conn"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/UsbnetService;->UsbMiscControl(ILjava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_1
    if-ne p1, v5, :cond_2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "net.usb0.ps.gw"

    const-string v4, "192.168.0.1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->setIptDhcp([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "usb_ipt"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/UsbnetService;->UsbMiscControl(ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UsbnetService"

    const-string v3, "Exception of setIptDhcp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UsbnetService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopIptDhcp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v2, "usb_none"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/UsbnetService;->UsbMiscControl(ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "UsbnetService"

    const-string v3, "Exception of stopIptDhcp"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public UsbMiscControl_MTP(I)I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "UsbnetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] MiscControl_MTP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    const-string v0, "usb_mtp"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/UsbnetService;->UsbMiscControl(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "usb_mtpoff"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/UsbnetService;->UsbMiscControl(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public acquireUsbnetLock(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 4

    const-string v1, "UsbnetService"

    const-string v2, "acquireUsbnetLock+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/UsbnetService$UsbnetLock;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/UsbnetService$UsbnetLock;-><init>(Lcom/android/server/UsbnetService;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    monitor-enter v2

    :try_start_0
    const-string v1, "UsbnetService"

    const-string v3, "acquireUsbnetLock-"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/UsbnetService;->acquireUsbnetLockLocked(Lcom/android/server/UsbnetService$UsbnetLock;)Z

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

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "android.permission.DUMP"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Permission Denial: can\'t dump UsbnetService from from pid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", uid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    const-string v18, "UsbnetService State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UsbnetService;->mLogUsb:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v12, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-wide/16 v16, -0x1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v16

    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "History: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " entries (current 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, v12

    array-length v11, v3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v11, :cond_5

    aget-object v13, v3, v7

    move-object v6, v13

    check-cast v6, Lcom/android/server/UsbnetService$HtcUsbHistory;

    const-string v2, ""

    if-eqz v6, :cond_3

    iget-object v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->args:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v5, v0

    :goto_4
    if-lez v5, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->args:[Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    :goto_5
    if-ge v10, v5, :cond_3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->args:[Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :catchall_0
    move-exception v18

    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v18

    :catch_0
    move-exception v14

    :try_start_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Log Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v18

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v18

    :cond_2
    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " [0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->timeStamp:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->event:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/util/Date;

    iget-wide v0, v6, Lcom/android/server/UsbnetService$HtcUsbHistory;->timeStamp:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    sub-long v20, v8, v20

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_4
    const-string v18, "History: 16 entries"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    :catch_1
    move-exception v18

    goto/16 :goto_2
.end method

.method public getConnectionInfo()Lcom/htc/net/usbnet/UsbnetInfo;
    .locals 2

    const-string v0, "UsbnetService"

    const-string v1, "getConnectionInfo +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/UsbnetService;->enforceAccessPermission()V

    const-string v0, "UsbnetService"

    const-string v1, "getConnectionInfo -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->requestConnectionInfo()Lcom/htc/net/usbnet/UsbnetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUsbnetState()I
    .locals 2

    const-string v0, "UsbnetService"

    const-string v1, "getUsbnetState+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/UsbnetService;->enforceAccessPermission()V

    const-string v0, "UsbnetService"

    const-string v1, "getUsbnetState-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-virtual {v0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->getUsbnetEnabledState()I

    move-result v0

    return v0
.end method

.method public isDeviceReady()Z
    .locals 2

    const-string v0, "UsbnetService"

    const-string v1, "isDeviceReady +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public releaseUsbnetLock(Landroid/os/IBinder;)Z
    .locals 3

    const-string v0, "UsbnetService"

    const-string v1, "releaseUsbnetLock+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/UsbnetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;

    monitor-enter v1

    :try_start_0
    const-string v0, "UsbnetService"

    const-string v2, "releaseUsbnetLock-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/UsbnetService;->releaseUsbnetLockLocked(Landroid/os/IBinder;)Z

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

.method public setUsbnetEnabled(Z)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "UsbnetService"

    const-string v2, "setUsbnetEnabled+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/UsbnetService;->enforceChangePermission()V

    iget-object v1, p0, Lcom/android/server/UsbnetService;->mUsbnetHandler:Lcom/android/server/UsbnetService$UsbnetHandler;

    if-nez v1, :cond_0

    const-string v0, "UsbnetService"

    const-string v1, "setUsbnetEnabled: mUsbnetHandler == null -"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/UsbnetService;->mUsbnetHandler:Lcom/android/server/UsbnetService$UsbnetHandler;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/UsbnetService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v3, "UsbnetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUsbnetEnabled="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v1, "enable"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", persist=1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/UsbnetService;->sendEnableMessage(ZZ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "UsbnetService"

    const-string v2, "setUsbnetEnabled-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "diable"

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setUsbnetEnabledBlocking(ZZ)Z
    .locals 5

    const/4 v1, 0x1

    const-string v2, "UsbnetService"

    const-string v3, "setUsbnetEnabledBlocking+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-virtual {v2}, Lcom/htc/net/usbnet/UsbnetStateTracker;->getUsbnetEnabledState()I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "UsbnetService"

    const-string v3, "setUsbnetEnabledBlocking: enabled == eventualUsbnetState-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "UsbnetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tracker state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-virtual {v4}, Lcom/htc/net/usbnet/UsbnetStateTracker;->getUsbnetEnabledState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", eventual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/UsbnetService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "UsbnetService"

    const-string v3, "setUsbnetEnabledBlocking: airPlaneModeOn-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    if-eqz p1, :cond_4

    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v3, v2}, Lcom/htc/net/usbnet/UsbnetStateTracker;->updateUsbnetEnabledState(I)V

    if-eqz p1, :cond_5

    :goto_3
    if-eqz p2, :cond_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-virtual {v2, v0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->updateUsbnetEnabledState(I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const-string v2, "UsbnetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUsbnetEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/UsbnetService;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-virtual {v2}, Lcom/htc/net/usbnet/UsbnetStateTracker;->resetInterface()V

    goto :goto_3
.end method
