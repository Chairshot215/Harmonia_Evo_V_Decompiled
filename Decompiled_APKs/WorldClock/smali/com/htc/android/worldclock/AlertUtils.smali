.class public Lcom/htc/android/worldclock/AlertUtils;
.super Ljava/lang/Object;
.source "AlertUtils.java"


# static fields
.field private static final ACTION_ALARM_TIMEOUT:Ljava/lang/String; = "com.htc.intent.action.alarm_timeout"

.field private static final ACTION_ALARM_TIMEOUT_VOLUMEKEY:Ljava/lang/String; = "com.htc.intent.action.alarm_timeout.volumekey."

.field public static final ACTION_CANCEL_ALERT:Ljava/lang/String; = "cancel_alert"

.field public static final ACTION_REQUEST_VOLUMEKEY:Ljava/lang/String; = "com.htc.lockscreen.volumekey"

.field private static final ACTION_TIMER_TIMEOUT:Ljava/lang/String; = "com.htc.intent.action.timer_timeout"

.field public static final ALARM_NOTIFICATION_ID:I = 0x5

.field private static final DEFAULT_SNOOZE:Ljava/lang/String; = "10"

.field public static final TIMER_NOTIFICATION_ID:I = 0x6

.field public static final VOLUMEKEY_DISMISS:I = 0x2

.field public static final VOLUMEKEY_SNOOZE:I = 0x1

.field private static mAlarmLed:Z

.field private static mLedLock:Ljava/lang/Object;

.field private static mTimerLed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/htc/android/worldclock/AlertUtils;->mAlarmLed:Z

    .line 38
    sput-boolean v0, Lcom/htc/android/worldclock/AlertUtils;->mTimerLed:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/worldclock/AlertUtils;->mLedLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/worldclock/AlertUtils;->mLedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/android/worldclock/AlertUtils;->mAlarmLed:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/android/worldclock/AlertUtils;->mTimerLed:Z

    return v0
.end method

.method public static alarmAlert(Landroid/content/Context;ILjava/lang/String;ZI)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "description"
    .parameter "lockscreen"
    .parameter "alarmType"

    .prologue
    .line 139
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, fireAlarm:Landroid/content/Intent;
    const-string v1, "alarm_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v1, "alarm_description"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "lock_screen"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v1, "alarm_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 88
    sget-object v2, Lcom/htc/android/worldclock/AlertUtils;->mLedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    const-string v1, "cancelNotification"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 91
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/worldclock/AlertUtils;->mAlarmLed:Z

    .line 95
    :cond_0
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 97
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 98
    monitor-exit v2

    .line 99
    return-void

    .line 92
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 93
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/worldclock/AlertUtils;->mTimerLed:Z

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createNotification(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNotification, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 48
    sput-boolean v2, Lcom/htc/android/worldclock/AlertUtils;->mAlarmLed:Z

    .line 52
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/AlertUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/worldclock/AlertUtils$1;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 50
    sput-boolean v2, Lcom/htc/android/worldclock/AlertUtils;->mTimerLed:Z

    goto :goto_0
.end method

.method public static dismissNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 223
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 224
    invoke-static {}, Lcom/htc/android/worldclock/Global;->getSnoozeNotification()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 229
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static getDeviceLock(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 233
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 234
    const/4 v0, 0x0

    .line 237
    .local v0, lockPattern:Z
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockPattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 239
    if-eqz v0, :cond_0

    .line 240
    const/4 v1, 0x1

    .line 243
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRingToneExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 268
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 269
    const/4 v2, 0x1

    .line 270
    .local v2, exist:Z
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 272
    .local v0, audio:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 277
    const/4 v0, 0x0

    .line 279
    return v2

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSnoozeMinute(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 185
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 186
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooze_duration"

    const-string v3, "10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, snooze:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static playTone()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 257
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 258
    .local v0, tone:Landroid/media/ToneGenerator;
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 259
    const-wide/16 v1, 0x5dc

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 260
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 261
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static readTextFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"
    .parameter "TAG"

    .prologue
    .line 161
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, fileName:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v0, buffer:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 170
    .local v1, data:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #data:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 178
    .local v2, ex:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 179
    const/4 v5, 0x0

    .line 181
    .end local v2           #ex:Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 175
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .restart local v1       #data:Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static sendAlarmTimeout(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, alarmIntent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.alarm_timeout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public static sendAlarmTimeout(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "volumeKeyType"

    .prologue
    .line 109
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, alarmIntent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.alarm_timeout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "com.htc.intent.action.alarm_timeout.volumekey."

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public static sendCancelIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 247
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v0, cancelIntent:Landroid/content/Intent;
    const-string v1, "cancel_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public static sendTimerTimeout(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, timerIntent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.action.timer_timeout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public static setNextAlarm(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "id"

    .prologue
    .line 131
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 132
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)I

    .line 133
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/Alarms;->disableAlert(Landroid/content/Context;I)V

    .line 134
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public static snoozeNotification(Landroid/content/Context;IJ)V
    .locals 11
    .parameter "context"
    .parameter "id"
    .parameter "snoozeTarget"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 192
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 193
    invoke-static {}, Lcom/htc/android/worldclock/Global;->getSnoozeNotification()Z

    move-result v6

    if-nez v6, :cond_0

    .line 220
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 199
    .local v1, c:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    const v6, 0x7f080028

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, label:Ljava/lang/String;
    const v6, 0x7f08007c

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/htc/android/worldclock/AlarmReceiver;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v2, cancelSnooze:Landroid/content/Intent;
    const-string v6, "cancel_snooze"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v6, "alarm_id"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-static {p0, p1, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 211
    .local v0, broadcast:Landroid/app/PendingIntent;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 212
    .local v5, nm:Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    const v6, 0x7f020031

    const-wide/16 v7, 0x0

    invoke-direct {v4, v6, v3, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 213
    .local v4, n:Landroid/app/Notification;
    const v6, 0x7f08007d

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/htc/android/worldclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v3, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 216
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x12

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 218
    invoke-virtual {v5, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static stopRecord(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 124
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static timerAlert(Landroid/content/Context;ZI)V
    .locals 2
    .parameter "context"
    .parameter "isLockScreenExist"
    .parameter "timerType"

    .prologue
    .line 151
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/worldclock/TimerAlert;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, fireTimer:Landroid/content/Intent;
    const-string v1, "lock_screen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v1, "timer_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
