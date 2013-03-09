.class public Lcom/google/android/gsf/gtalkservice/Alarm;
.super Landroid/content/BroadcastReceiver;
.source "Alarm.java"


# static fields
.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mIntentSender:Landroid/app/PendingIntent;

.field private mNextAlarmTime:J

.field private mTag:Ljava/lang/String;

.field private mTimer:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "context"
    .parameter "tag"
    .parameter "callback"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mContext:Landroid/content/Context;

    .line 36
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 44
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/gsf/gtalkservice/Alarm;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTag(Ljava/lang/String;)V

    .line 48
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mCallback:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 206
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Alarm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method


# virtual methods
.method public clearAlarm()V
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 111
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearAlarm: alarm not set"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->log(Ljava/lang/String;)V

    .line 112
    :cond_0
    monitor-exit p0

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAlarm for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->log(Ljava/lang/String;)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntent:Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntentSender:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntentSender:Landroid/app/PendingIntent;

    .line 122
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarm("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mNextAlarmTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 199
    const-string v0, "    alarm in the past"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/gtalkservice/Alarm;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public getNextAlarmTime()J
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    monitor-exit p0

    return-wide v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initAlarm()V
    .locals 4

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 77
    monitor-exit p0

    .line 95
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "GTalkService"

    const-string v1, "[Alarm] initAlarm: action is not set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit p0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 85
    :cond_1
    :try_start_1
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAlarm for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->log(Ljava/lang/String;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntent:Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntentSender:Landroid/app/PendingIntent;

    .line 94
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 4

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    new-instance v0, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, wakeLockDiag:Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;
    sget-object v1, Lcom/google/android/gsf/gtalkservice/Alarm;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 179
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 181
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 188
    sget-object v1, Lcom/google/android/gsf/gtalkservice/Alarm;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 190
    return-void

    .line 184
    :cond_0
    :try_start_1
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Alarm("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")] onReceive: no callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 188
    sget-object v2, Lcom/google/android/gsf/gtalkservice/Alarm;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAction:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTimer(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTimer:J

    .line 57
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTimer:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    .line 133
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->log(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntentSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop alarm for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->log(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mIntentSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Alarm;->mNextAlarmTime:J

    .line 162
    :cond_1
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
