.class public Lcom/htc/android/mail/eassvc/util/LockUtil;
.super Ljava/lang/Object;
.source "LockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;,
        Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LockUtil"

.field public static final WAKELOCK_DIRECTPUSH:Ljava/lang/String; = "DIRECTPUSH"

.field public static final WAKELOCK_DIRECTPUSH_MAIL:Ljava/lang/String; = "DIRECTPUSH_MAIL"

.field public static final WAKELOCK_DP_NETWORKCHANGE:Ljava/lang/String; = "DP_NETWORK_CHANGE"

.field public static final WAKELOCK_EAS_NETWORKCHANGE:Ljava/lang/String; = "EAS_NETWORK_CHANGE"

.field public static final WAKELOCK_MAIL_BLK:Ljava/lang/String; = "MAIL_BLK"

.field public static final WAKELOCK_SCHEDULE:Ljava/lang/String; = "SCHEDULE"

.field public static final WAKELOCK_START_SERVICE:Ljava/lang/String; = "START_SERVICE"

.field public static final WAKELOCK_SYNC:Ljava/lang/String; = "SYNCHRONIZED"

.field public static final WIFILOCK_DIRECTPUSH:Ljava/lang/String; = "DIRECTPUSH"

.field public static final WIFILOCK_DIRECTPUSH_MAIL:Ljava/lang/String; = "DIRECTPUSH_MAIL"

.field public static final WIFILOCK_MAIL_BLK:Ljava/lang/String; = "MAIL_BLK"

.field public static final WIFILOCK_SYNC:Ljava/lang/String; = "SYNCHRONIZED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/LockUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v0

    .line 70
    .local v0, lock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 71
    return-object v0
.end method

.method public static acquirePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    const-string v0, "LockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- acquire PowerLock - PARTIAL_WAKE_LOCK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lockTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 91
    :cond_0
    return-void
.end method

.method public static acquirePowerLockTimeout(Landroid/content/Context;Ljava/lang/String;J)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"
    .parameter "timeout"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v0

    .line 76
    .local v0, lock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v0, p2, p3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLockTimeout(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;J)V

    .line 77
    return-object v0
.end method

.method public static acquirePowerLockTimeout(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;J)V
    .locals 3
    .parameter "lock"
    .parameter "timeout"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    const-string v0, "LockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- acquire PowerLock with Timeout - PARTIAL_WAKE_LOCK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lockTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 98
    :cond_0
    return-void
.end method

.method public static acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/LockUtil;->newWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v0

    .line 82
    .local v0, lock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 83
    return-object v0
.end method

.method public static acquireWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 102
    const-string v0, "LockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- acquire WifiLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lockTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 105
    :cond_0
    return-void
.end method

.method public static isPowerLockHeld(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Z
    .locals 2
    .parameter "lock"

    .prologue
    const/4 v0, 0x1

    .line 122
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .locals 4
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 41
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 42
    .local v1, powerManager:Landroid/os/PowerManager;
    if-nez v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;-><init>()V

    .line 45
    .local v0, lock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object v2, v0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 47
    iput-object p1, v0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private static newWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    .locals 6
    .parameter "context"
    .parameter "lockTag"

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 55
    .local v3, wifiInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 59
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 61
    new-instance v1, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;-><init>()V

    .line 62
    .local v1, lock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 63
    iget-object v4, v1, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 64
    iput-object p1, v1, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 109
    const-string v0, "LockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- release PowerLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lockTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 112
    :cond_0
    return-void
.end method

.method public static releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 115
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 116
    const-string v0, "LockUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- release WifiLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lockTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;->lock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 119
    :cond_0
    return-void
.end method
