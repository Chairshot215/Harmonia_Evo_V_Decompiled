.class public Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;
.super Ljava/lang/Object;
.source "LockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockUtil"

.field public static final WAKELOCK_DIRECTPUSH:Ljava/lang/String; = "DIRECTPUSH"

.field public static final WAKELOCK_DIRECTPUSH_MAIL:Ljava/lang/String; = "DIRECTPUSH_MAIL"

.field public static final WAKELOCK_DP_NETWORKCHANGE:Ljava/lang/String; = "DP_NETWORK_CHANGE"

.field public static final WAKELOCK_EAS_NETWORKCHANGE:Ljava/lang/String; = "EAS_NETWORK_CHANGE"

.field public static final WAKELOCK_MAIL_BLK:Ljava/lang/String; = "MAIL_BLK"

.field public static final WAKELOCK_SCHEDULE:Ljava/lang/String; = "SCHEDULE"

.field public static final WAKELOCK_START_SERVICE:Ljava/lang/String; = "START_SERVICE"

.field public static final WAKELOCK_SYNC:Ljava/lang/String; = "SYNCHRONIZED"

.field private static final WAKELOCK_TIMEOUT:I = 0x7530

.field public static final WIFILOCK_DIRECTPUSH:Ljava/lang/String; = "DIRECTPUSH"

.field public static final WIFILOCK_DIRECTPUSH_MAIL:Ljava/lang/String; = "DIRECTPUSH_MAIL"

.field public static final WIFILOCK_MAIL_BLK:Ljava/lang/String; = "MAIL_BLK"

.field public static final WIFILOCK_SYNC:Ljava/lang/String; = "SYNCHRONIZED"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    .locals 1
    .parameter "context"
    .parameter "lockTag"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v0

    .line 48
    .local v0, lock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->acquirePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 49
    return-object v0
.end method

.method public static acquirePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V
    .locals 3
    .parameter "lock"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 59
    :cond_0
    return-void
.end method

.method private static newPowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
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
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-direct {v0}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;-><init>()V

    .line 40
    .local v0, lock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    .line 41
    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 42
    iput-object p1, v0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;->lockTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public static releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    :cond_0
    return-void
.end method
