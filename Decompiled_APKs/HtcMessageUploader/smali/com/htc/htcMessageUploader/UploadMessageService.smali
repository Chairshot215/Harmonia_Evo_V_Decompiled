.class public Lcom/htc/htcMessageUploader/UploadMessageService;
.super Landroid/app/Service;
.source "UploadMessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcMessageUploader/UploadMessageService$1;,
        Lcom/htc/htcMessageUploader/UploadMessageService$SendScheduleReceiver;,
        Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;,
        Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;
    }
.end annotation


# static fields
.field public static LAST_UPLOAD_MESSAGE_TIME_FILE_PATH:Ljava/lang/String; = null

.field public static final SCHEDULE_COMMAND_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_SCHEDULE_COMMAND"

.field public static final SEND_UPLOAD_MESSAGE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_SEND_UPLOAD_MESSAGE"

.field public static final START_SCHEDULE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_START_SCHEDULE"

.field private static final TAG:Ljava/lang/String; = "htcMessageUploader"

.field public static final UPLOAD_MESSAGE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_UPLOAD_MESSAGE"


# instance fields
.field private UPLOAD_MESSAGE_INTERVAL:J

.field public mAlarmManager:Landroid/app/AlarmManager;

.field private mNetworkConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "/data/data/com.htc.htcMessageUploader/upload_time"

    sput-object v0, Lcom/htc/htcMessageUploader/UploadMessageService;->LAST_UPLOAD_MESSAGE_TIME_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 40
    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->UPLOAD_MESSAGE_INTERVAL:J

    .line 193
    return-void
.end method

.method static synthetic access$300(Lcom/htc/htcMessageUploader/UploadMessageService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/htcMessageUploader/UploadMessageService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/htcMessageUploader/UploadMessageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageService;->scheduleUpload()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/htcMessageUploader/UploadMessageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageService;->cancelSchedule()V

    return-void
.end method

.method private cancelSchedule()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    sget-boolean v2, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    .line 149
    const-string v2, "htcMessageUploader"

    const-string v3, "[UploadMessageService] CancelSchedule()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.server.checkin.FOTA_SEND_UPLOAD_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, schedIntent:Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 152
    .local v1, sender:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 153
    return-void
.end method

.method private getLastUploadTime()J
    .locals 8

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    .local v2, now:J
    const-wide/16 v4, 0x0

    .line 103
    .local v4, uploadTime:J
    sget-object v6, Lcom/htc/htcMessageUploader/UploadMessageService;->LAST_UPLOAD_MESSAGE_TIME_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/htcMessageUploader/UploadMessageService;->readUploadTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, lastUploadTime:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    :cond_0
    const-wide/16 v6, 0x0

    .line 112
    :goto_0
    return-wide v6

    .line 107
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 112
    :goto_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private readUploadTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 77
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 93
    :goto_0
    return-object v4

    .line 80
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    move-object v1, v2

    .line 88
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_1

    .line 89
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move-object v4, v3

    .line 93
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    :goto_3
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 82
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private declared-synchronized scheduleUpload()V
    .locals 10

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "htcMessageUploader"

    const-string v1, "[UploadMessageService] scheduleUpload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.server.checkin.FOTA_SEND_UPLOAD_MESSAGE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v9, schedIntent:Landroid/content/Intent;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 127
    .local v6, sender:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->hasLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z

    if-nez v0, :cond_3

    .line 128
    :cond_1
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "htcMessageUploader"

    const-string v1, "[UploadMessageService] Cancel Schedule since no log or network off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 136
    .local v7, now:J
    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageService;->getLastUploadTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->UPLOAD_MESSAGE_INTERVAL:J

    add-long v2, v0, v4

    .line 137
    .local v2, next:J
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 139
    const-string v0, "htcMessageUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UploadMessageService] Start to upload at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v4, v2, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms later, and repeat every "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->UPLOAD_MESSAGE_INTERVAL:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_4

    .line 141
    const-string v0, "htcMessageUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UploadMessageService] Last uploading started at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/htcMessageUploader/UploadMessageService;->getLastUploadTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms, current time is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    iget-wide v4, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->UPLOAD_MESSAGE_INTERVAL:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v2           #next:J
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v7           #now:J
    .end local v9           #schedIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/htc/htcMessageUploader/UploadMessageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 52
    new-instance v0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;-><init>(Lcom/htc/htcMessageUploader/UploadMessageService;Lcom/htc/htcMessageUploader/UploadMessageService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcMessageUploader/UploadMessageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v0, Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;-><init>(Lcom/htc/htcMessageUploader/UploadMessageService;Lcom/htc/htcMessageUploader/UploadMessageService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.server.checkin.FOTA_SCHEDULE_COMMAND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcMessageUploader/UploadMessageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    new-instance v0, Lcom/htc/htcMessageUploader/UploadMessageService$SendScheduleReceiver;

    invoke-direct {v0, p0, v3}, Lcom/htc/htcMessageUploader/UploadMessageService$SendScheduleReceiver;-><init>(Lcom/htc/htcMessageUploader/UploadMessageService;Lcom/htc/htcMessageUploader/UploadMessageService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.server.checkin.FOTA_SEND_UPLOAD_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/htcMessageUploader/UploadMessageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    const-string v0, "htcMessageUploader"

    const-string v1, "[UploadMessageService] onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method
