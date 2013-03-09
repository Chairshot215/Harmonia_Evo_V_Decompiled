.class public Lcom/htc/lockscreen/app/util/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "WakeLockUtil"

.field private static final MAX_WAKELOCK_TIME:I = 0x3a98

.field private static sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sUIWakeLock:Landroid/os/PowerManager$WakeLock;

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
    .line 76
    const-class v3, Lcom/htc/lockscreen/app/util/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 79
    sget-object v0, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 83
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 84
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v4, "HtcLockScreen:UI"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 87
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 88
    const-string v2, "WakeLockUtil"

    const-string v4, "UIWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 96
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 97
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 98
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    const-string v2, "WakeLockUtil"

    const-string v4, "UIWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized eventWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 47
    const-class v3, Lcom/htc/lockscreen/app/util/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 50
    sget-object v0, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 54
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 55
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "HtcLockScreen:event"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 58
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 59
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 67
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 68
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 69
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized reminderWakeLock(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 18
    const-class v3, Lcom/htc/lockscreen/app/util/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 21
    sget-object v0, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 25
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 26
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v4, "HtcLockScreen:reminder"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 29
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 30
    const-string v2, "WakeLockUtil"

    const-string v4, "sReminderWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 38
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 39
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 40
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    const-string v2, "WakeLockUtil"

    const-string v4, "sReminderWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized remoteWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 119
    const-class v3, Lcom/htc/lockscreen/app/util/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 122
    sget-object v0, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 126
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 127
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "HtcLockScreen:remoteView"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 130
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 131
    const-string v2, "WakeLockUtil"

    const-string v4, "remoteWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 139
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 140
    sget-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 141
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/app/util/WakeLockUtil;->sRemoteViewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 142
    const-string v2, "WakeLockUtil"

    const-string v4, "sRemoteViewWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
