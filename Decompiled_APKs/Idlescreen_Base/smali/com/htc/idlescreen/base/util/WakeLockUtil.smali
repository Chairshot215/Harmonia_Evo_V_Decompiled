.class public Lcom/htc/idlescreen/base/util/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "WakeLockUtil"

.field private static final MAX_REMINDER_WAKELOCK_TIME:I = 0x927c0

.field private static final MAX_WAKELOCK_TIME:I = 0x3a98

.field private static sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sUIWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized UIWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 77
    const-class v3, Lcom/htc/idlescreen/base/util/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_4

    .line 78
    :try_start_0
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/IdleState;->isShow()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_1
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 83
    sget-object v0, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    :cond_2
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 87
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 88
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v4, "IdleScreen_base:UI"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 91
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 92
    const-string v2, "WakeLockUtil"

    const-string v4, "UIWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_3
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 100
    :cond_4
    :try_start_2
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 101
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 102
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    const-string v2, "WakeLockUtil"

    const-string v4, "UIWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized eventWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 48
    const-class v3, Lcom/htc/idlescreen/base/util/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 51
    sget-object v0, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    :cond_0
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 55
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 56
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "IdleScreen_base:event"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 59
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 60
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 68
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 69
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 70
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized reminderWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 18
    const-class v3, Lcom/htc/idlescreen/base/util/WakeLockUtil;

    monitor-enter v3

    :try_start_0
    const-string v2, "WakeLockUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminderWakeLock bLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    if-eqz p1, :cond_3

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 22
    sget-object v0, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    :cond_0
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 26
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 27
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v4, "IdleScreen_base:reminder"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 30
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 31
    const-string v2, "WakeLockUtil"

    const-string v4, "sReminderWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 39
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 40
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 41
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    const-string v2, "WakeLockUtil"

    const-string v4, "sReminderWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized viewModeWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 109
    const-class v3, Lcom/htc/idlescreen/base/util/WakeLockUtil;

    monitor-enter v3

    :try_start_0
    const-string v2, "WakeLockUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sRemoteWakeLock bLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_3

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 113
    sget-object v0, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    :cond_0
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 117
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 118
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "IdleScreen_base:remote"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 121
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 122
    const-string v2, "WakeLockUtil"

    const-string v4, "sRemoteWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 130
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 131
    sget-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 132
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/idlescreen/base/util/WakeLockUtil;->sViewModeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    const-string v2, "WakeLockUtil"

    const-string v4, "sRemoteWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
