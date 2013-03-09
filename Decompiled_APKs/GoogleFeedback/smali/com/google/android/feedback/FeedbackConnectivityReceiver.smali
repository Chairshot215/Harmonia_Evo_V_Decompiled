.class public Lcom/google/android/feedback/FeedbackConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FeedbackConnectivityReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getTimestampMinutes(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    .line 156
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "background_scan_timestamp"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v3, timestampFile:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v1, in:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, timestamp:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 170
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v2           #timestamp:Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "FeedbackConnectivityReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to open timestamp file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    const-string v4, "FeedbackConnectivityReceiver"

    const-string v5, "failed to read timestamp file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "FeedbackConnectivityReceiver"

    const-string v5, "corrupted timestamp file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private scheduleScanMinutes(Landroid/content/Context;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 121
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/feedback/FeedbackConnectivityReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const/high16 v2, 0x4000

    invoke-static {p1, v6, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, p2

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 107
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/android/feedback/FeedbackConnectivityReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_1

    move v0, v1

    .line 112
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 113
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 115
    :cond_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateTimestamp(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 133
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "background_scan_timestamp.tmp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v4, tmpFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "background_scan_timestamp"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v3, timestampFile:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 138
    .local v1, out:Ljava/io/FileWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, timestamp:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 141
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    const-string v5, "FeedbackConnectivityReceiver"

    const-string v6, "failed to rename timestamp file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 149
    .end local v1           #out:Ljava/io/FileWriter;
    .end local v2           #timestamp:Ljava/lang/String;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "FeedbackConnectivityReceiver"

    const-string v6, "failed to create timestamp file"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v11, 0x2d0

    const/4 v9, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, enabled:I
    if-nez v0, :cond_1

    .line 60
    invoke-static {p1, v9}, Lcom/google/android/feedback/FeedbackConnectivityReceiver;->setEnabled(Landroid/content/Context;Z)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 67
    .local v2, manager:Landroid/net/ConnectivityManager;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "reports"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v5, reportDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 76
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 78
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 80
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    invoke-direct {p0, p1}, Lcom/google/android/feedback/FeedbackConnectivityReceiver;->getTimestampMinutes(Landroid/content/Context;)J

    move-result-wide v9

    sub-long v3, v7, v9

    .line 91
    .local v3, minutes:J
    cmp-long v7, v3, v11

    if-gez v7, :cond_3

    .line 92
    sub-long v7, v11, v3

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-direct {p0, p1, v7, v8}, Lcom/google/android/feedback/FeedbackConnectivityReceiver;->scheduleScanMinutes(Landroid/content/Context;J)V

    goto :goto_0

    .line 97
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/android/feedback/SendService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/feedback/FeedbackConnectivityReceiver;->updateTimestamp(Landroid/content/Context;)V

    goto :goto_0
.end method
