.class public Lcom/htc/cscore/util/LockUtil;
.super Ljava/lang/Object;
.source "LockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/util/LockUtil$CSWifiLock;,
        Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LockUtil"

.field public static final WAKELOCK_CSEAS_NETWORKCHANGE:Ljava/lang/String; = "CSEAS_NETWORK_CHANGE"

.field public static final WAKELOCK_CSPUSH:Ljava/lang/String; = "CSPUSH"

.field public static final WAKELOCK_CSP_NETWORKCHANGE:Ljava/lang/String; = "CSP_NETWORK_CHANGE"

.field public static final WAKELOCK_SCHEDULE:Ljava/lang/String; = "SCHEDULE"

.field public static final WAKELOCK_START_SERVICE:Ljava/lang/String; = "START_SERVICE"

.field public static final WAKELOCK_SYNC:Ljava/lang/String; = "CSSYNCHRONIZED"

.field public static final WIFILOCK_CSPUSH:Ljava/lang/String; = "CSPUSH"

.field public static final WIFILOCK_SYNC:Ljava/lang/String; = "CSSYNCHRONIZED"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/cscore/util/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/LockUtil;->acquirePowerLock(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)V

    return-object v0
.end method

.method public static acquirePowerLock(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public static acquirePowerLockTimeout(Landroid/content/Context;Ljava/lang/String;J)Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/cscore/util/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/htc/cscore/util/LockUtil;->acquirePowerLockTimeout(Lcom/htc/cscore/util/LockUtil$CSWakeLock;J)V

    return-object v0
.end method

.method public static acquirePowerLockTimeout(Lcom/htc/cscore/util/LockUtil$CSWakeLock;J)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method public static acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWifiLock;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/cscore/util/LockUtil;->newWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWifiLock;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/LockUtil;->acquireWifiLock(Lcom/htc/cscore/util/LockUtil$CSWifiLock;)V

    return-object v0
.end method

.method public static acquireWifiLock(Lcom/htc/cscore/util/LockUtil$CSWifiLock;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_0
    return-void
.end method

.method public static isPowerLockHeld(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    .locals 4

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;

    invoke-direct {v0}, Lcom/htc/cscore/util/LockUtil$CSWakeLock;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-object p1, v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private static newWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWifiLock;
    .locals 6

    const/4 v1, 0x0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;

    invoke-direct {v1}, Lcom/htc/cscore/util/LockUtil$CSWifiLock;-><init>()V

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v4, v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    iput-object p1, v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static releasePowerLock(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public static releaseWifiLock(Lcom/htc/cscore/util/LockUtil$CSWifiLock;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    return-void
.end method
