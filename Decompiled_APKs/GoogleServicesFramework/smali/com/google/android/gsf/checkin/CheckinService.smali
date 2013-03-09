.class public Lcom/google/android/gsf/checkin/CheckinService;
.super Landroid/app/Service;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/CheckinService$SecretCodeReceiver;,
        Lcom/google/android/gsf/checkin/CheckinService$TriggerReceiver;,
        Lcom/google/android/gsf/checkin/CheckinService$Receiver;
    }
.end annotation


# static fields
.field private static sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static volatile sSystemWasUpgraded:Z


# instance fields
.field private mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTask:Lcom/google/android/gsf/checkin/CheckinTask;

.field private mTaskStartedUptime:J

.field private mTaskTriggerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskStartedUptime:J

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->launchService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/checkin/CheckinService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinService;->checkSchedule()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gsf/checkin/CheckinService;->handleResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/android/gsf/checkin/CheckinTask;)Lcom/google/android/gsf/checkin/CheckinTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/checkin/CheckinService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/checkin/CheckinService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V

    return-void
.end method

.method private checkSchedule()Z
    .locals 13

    .prologue
    const/4 v4, 0x1

    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 300
    const-string v0, "CheckinService"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 301
    new-instance v6, Lcom/android/common/OperationScheduler;

    invoke-direct {v6, v5}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 303
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 306
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    :goto_0
    invoke-virtual {v6, v0}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    .line 311
    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->wasSystemUpgraded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CheckinService"

    const-string v2, "system was upgraded"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    invoke-virtual {v6, v11, v12}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 317
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 318
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_7

    const-string v0, "no-sim"

    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_8

    const-string v0, "no-imsi"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v2, "CheckinService_lastSim"

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 322
    const-string v2, "CheckinService"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subscriberid changed to "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3
    invoke-virtual {v6, v11, v12}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 324
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CheckinService_lastSim"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    :cond_4
    new-instance v5, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v5}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 328
    const-wide/16 v2, 0x7530

    iput-wide v2, v5, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 329
    const-wide/16 v2, 0x3e8

    const-string v0, "checkin_interval"

    const-wide/32 v8, 0xa8c0

    invoke-static {v7, v0, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    mul-long/2addr v2, v7

    iput-wide v2, v5, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 334
    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    const-string v0, "CheckinService"

    invoke-virtual {v6}, Lcom/android/common/OperationScheduler;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 339
    invoke-virtual {v6, v5}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v2

    .line 340
    cmp-long v0, v2, v7

    if-gtz v0, :cond_9

    move v1, v4

    .line 358
    :goto_3
    return v1

    :cond_6
    move v0, v1

    .line 306
    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    .line 320
    goto/16 :goto_1

    :cond_8
    move-object v0, v3

    goto/16 :goto_2

    .line 342
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gsf/checkin/CheckinService$Receiver;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 343
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v2, v7

    if-nez v0, :cond_b

    .line 344
    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CheckinService"

    const-string v2, "Checkin disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_a
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_3

    .line 349
    :cond_b
    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 350
    const-string v0, "CheckinService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checkin scheduled at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_c
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 353
    iget-wide v7, v5, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    cmp-long v4, v7, v11

    if-lez v4, :cond_d

    .line 354
    iget-wide v4, v5, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 357
    :cond_d
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3
.end method

.method public static getLastCheckinSuccessTime(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 389
    new-instance v0, Lcom/android/common/OperationScheduler;

    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 363
    const-string v0, "CheckinService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 13
    .parameter "response"

    .prologue
    const v12, 0x108008a

    const/4 v11, 0x0

    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinResponseProcessor;->getIntents(Lcom/google/common/io/protocol/ProtoBuf;)[Landroid/content/Intent;

    move-result-object v0

    .local v0, arr$:[Landroid/content/Intent;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 270
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "CheckinService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From server: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/CheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v0           #arr$:[Landroid/content/Intent;
    .end local v1           #i$:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #len$:I
    :cond_0
    const-string v8, "CheckinService"

    invoke-virtual {p0, v8, v11}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 277
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v8, "CheckinService_notify"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 278
    if-eqz p1, :cond_2

    const-string v4, "checkin succeeded"

    .line 279
    .local v4, message:Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v12, v4, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 281
    .local v5, n:Landroid/app/Notification;
    iget v8, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 282
    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v11, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, p0, v4, v8, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 286
    .local v6, nm:Landroid/app/NotificationManager;
    invoke-virtual {v6, v12, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 287
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "CheckinService_notify"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #n:Landroid/app/Notification;
    .end local v6           #nm:Landroid/app/NotificationManager;
    :cond_1
    return-void

    .line 278
    :cond_2
    const-string v4, "checkin failed"

    goto :goto_1
.end method

.method private static launchService(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 167
    const-class v1, Lcom/google/android/gsf/checkin/CheckinService;

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 170
    const/4 v2, 0x1

    const-string v3, "Checkin Handoff"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    sget-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/checkin/CheckinService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private launchTask()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 183
    iget v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    .line 185
    const-string v7, "CheckinService"

    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    const-string v7, "CheckinService"

    const-string v8, "launchTask"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget-object v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    if-eqz v7, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 192
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskStartedUptime:J

    sub-long v3, v7, v9

    .line 193
    .local v3, millisRunning:J
    const-wide/16 v7, 0x3e8

    const-string v9, "checkin_watchdog_seconds"

    const-wide/16 v10, 0xe10

    invoke-static {v6, v9, v10, v11}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    mul-long v1, v7, v9

    .line 196
    .local v1, millisMax:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_2

    cmp-long v7, v3, v1

    if-lez v7, :cond_2

    .line 199
    const-string v7, "wtf_is_fatal"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    const-wide/32 v7, 0xea60

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 204
    :cond_1
    const-string v7, "CheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checkin still running after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 206
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 209
    :cond_2
    const-string v7, "CheckinService"

    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 210
    const-string v7, "CheckinService"

    const-string v8, "checkinRunning"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v1           #millisMax:J
    .end local v3           #millisRunning:J
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_3
    :goto_0
    return-void

    .line 215
    :cond_4
    iget v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    .line 216
    .local v0, lastTriggerCount:I
    new-instance v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;

    invoke-direct {v5}, Lcom/google/android/gsf/checkin/CheckinTask$Params;-><init>()V

    .line 217
    .local v5, params:Lcom/google/android/gsf/checkin/CheckinTask$Params;
    iput-object p0, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    .line 218
    const-string v7, "dropbox"

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/DropBoxManager;

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    .line 219
    const-string v7, "CheckinService"

    invoke-virtual {p0, v7, v12}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    .line 220
    new-instance v7, Lcom/android/common/OperationScheduler;

    iget-object v8, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    invoke-direct {v7, v8}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "market_checkin"

    invoke-static {v7, v8}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->marketData:Ljava/lang/String;

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskStartedUptime:J

    .line 225
    new-instance v7, Lcom/google/android/gsf/checkin/CheckinService$1;

    invoke-direct {v7, p0, v0}, Lcom/google/android/gsf/checkin/CheckinService$1;-><init>(Lcom/google/android/gsf/checkin/CheckinService;I)V

    iput-object v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    .line 256
    iget-object v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    aput-object v5, v8, v12

    invoke-virtual {v7, v8}, Lcom/google/android/gsf/checkin/CheckinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static wasSystemUpgraded(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 369
    sget-boolean v3, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    if-eqz v3, :cond_0

    .line 385
    :goto_0
    return v2

    .line 373
    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 375
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, build:Ljava/lang/String;
    const-string v3, "CheckinService_lastBuild"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    const/4 v2, 0x0

    goto :goto_0

    .line 382
    :cond_1
    sput-boolean v2, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    .line 384
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CheckinService_lastBuild"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 148
    const-string v1, "Checkin Service"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 152
    :cond_0
    const-class v1, Lcom/google/android/gsf/checkin/CheckinService;

    monitor-enter v1

    .line 153
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 157
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V

    .line 160
    return v2

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
