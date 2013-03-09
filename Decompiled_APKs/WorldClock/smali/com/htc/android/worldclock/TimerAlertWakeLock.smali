.class Lcom/htc/android/worldclock/TimerAlertWakeLock;
.super Ljava/lang/Object;
.source "TimerAlertWakeLock.java"


# static fields
.field private static sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final sWakeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sWakeLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 34
    sget-object v2, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sWakeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v1, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 37
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v3, "TimerAlertWakeLock"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    sget-object v1, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/htc/android/worldclock/TimerAlertWakeLock;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " acquire WakeLock"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 47
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static release()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 52
    sget-object v1, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sWakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/worldclock/TimerAlertWakeLock;->sTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/android/worldclock/TimerAlertWakeLock;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " release WakeLock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 58
    :cond_0
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
