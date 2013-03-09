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

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/htc/cscore/util/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;

    move-result-object v0

    .line 65
    .local v0, lock:Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    invoke-static {v0}, Lcom/htc/cscore/util/LockUtil;->acquirePowerLock(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)V

    .line 66
    return-object v0
.end method

.method public static acquirePowerLock(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 82
    if-eqz p0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 86
    :cond_0
    return-void
.end method

.method public static acquirePowerLockTimeout(Landroid/content/Context;Ljava/lang/String;J)Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"
    .parameter "timeout"

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/htc/cscore/util/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;

    move-result-object v0

    .line 71
    .local v0, lock:Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    invoke-static {v0, p2, p3}, Lcom/htc/cscore/util/LockUtil;->acquirePowerLockTimeout(Lcom/htc/cscore/util/LockUtil$CSWakeLock;J)V

    .line 72
    return-object v0
.end method

.method public static acquirePowerLockTimeout(Lcom/htc/cscore/util/LockUtil$CSWakeLock;J)V
    .locals 1
    .parameter "lock"
    .parameter "timeout"

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 93
    :cond_0
    return-void
.end method

.method public static acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWifiLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/htc/cscore/util/LockUtil;->newWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWifiLock;

    move-result-object v0

    .line 77
    .local v0, lock:Lcom/htc/cscore/util/LockUtil$CSWifiLock;
    invoke-static {v0}, Lcom/htc/cscore/util/LockUtil;->acquireWifiLock(Lcom/htc/cscore/util/LockUtil$CSWifiLock;)V

    .line 78
    return-object v0
.end method

.method public static acquireWifiLock(Lcom/htc/cscore/util/LockUtil$CSWifiLock;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 100
    :cond_0
    return-void
.end method

.method public static isPowerLockHeld(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)Z
    .locals 2
    .parameter "lock"

    .prologue
    const/4 v0, 0x1

    .line 117
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    .locals 4
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 36
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 37
    .local v1, powerManager:Landroid/os/PowerManager;
    if-nez v1, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;

    invoke-direct {v0}, Lcom/htc/cscore/util/LockUtil$CSWakeLock;-><init>()V

    .line 40
    .local v0, lock:Lcom/htc/cscore/util/LockUtil$CSWakeLock;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    .line 41
    iget-object v2, v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 42
    iput-object p1, v0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private static newWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/cscore/util/LockUtil$CSWifiLock;
    .locals 6
    .parameter "context"
    .parameter "lockTag"

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 50
    .local v3, wifiInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :cond_1
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 54
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 56
    new-instance v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;

    invoke-direct {v1}, Lcom/htc/cscore/util/LockUtil$CSWifiLock;-><init>()V

    .line 57
    .local v1, lock:Lcom/htc/cscore/util/LockUtil$CSWifiLock;
    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 58
    iget-object v4, v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 59
    iput-object p1, v1, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static releasePowerLock(Lcom/htc/cscore/util/LockUtil$CSWakeLock;)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 103
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 107
    :cond_0
    return-void
.end method

.method public static releaseWifiLock(Lcom/htc/cscore/util/LockUtil$CSWifiLock;)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/cscore/util/LockUtil$CSWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 114
    :cond_0
    return-void
.end method
