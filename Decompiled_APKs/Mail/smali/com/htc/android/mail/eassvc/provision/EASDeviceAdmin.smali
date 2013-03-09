.class public Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "EASDeviceAdmin.java"


# static fields
.field static final TAG:Ljava/lang/String; = "EASDeviceAdmin"

.field public static isFromAdminUpdate:Z

.field static lastupdatetime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide/high16 v0, -0x8000

    sput-wide v0, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->lastupdatetime:J

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->isFromAdminUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private static getPasswordChangedTime(Landroid/content/Context;)J
    .locals 11
    .parameter "context"

    .prologue
    .line 114
    const-string v10, "pass_change"

    monitor-enter v10

    .line 115
    :try_start_0
    const-string v8, "config"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 116
    .local v1, dataFilePath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "pass_change"

    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 118
    .local v5, reader:Ljava/io/FileReader;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .end local v5           #reader:Ljava/io/FileReader;
    .local v6, reader:Ljava/io/FileReader;
    const/16 v8, 0x14

    :try_start_2
    new-array v0, v8, [C

    .line 122
    .local v0, chs:[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 123
    .local v4, len:I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    .line 124
    .local v7, time:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-wide v8

    .line 128
    if-eqz v6, :cond_0

    .line 130
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 124
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v6

    .line 137
    .end local v0           #chs:[C
    .end local v4           #len:I
    .end local v6           #reader:Ljava/io/FileReader;
    .end local v7           #time:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/FileReader;
    :goto_1
    return-wide v8

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    if-eqz v5, :cond_1

    .line 130
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 137
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    const-wide/16 v8, -0x1

    :try_start_7
    monitor-exit v10

    goto :goto_1

    .line 138
    .end local v1           #dataFilePath:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #reader:Ljava/io/FileReader;
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v8

    .line 128
    .restart local v1       #dataFilePath:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    :goto_4
    if-eqz v5, :cond_2

    .line 130
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 128
    :cond_2
    :goto_5
    :try_start_9
    throw v8

    .line 131
    :catch_1
    move-exception v2

    .line 132
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 131
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 132
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 131
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v0       #chs:[C
    .restart local v4       #len:I
    .restart local v6       #reader:Ljava/io/FileReader;
    .restart local v7       #time:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 132
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 128
    .end local v0           #chs:[C
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #len:I
    .end local v7           #time:Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_4

    .line 125
    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method static getSamplePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-class v0, Landroid/app/admin/DeviceAdminReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isPasswordExpire(Landroid/content/Context;I)Z
    .locals 13
    .parameter "context"
    .parameter "expiration"

    .prologue
    const-wide/16 v11, 0x3c

    const/4 v4, 0x0

    .line 100
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 101
    .local v5, nowTime:J
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->getPasswordChangedTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 102
    .local v0, changeTime:J
    int-to-long v7, p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x18

    mul-long/2addr v7, v9

    mul-long/2addr v7, v11

    mul-long/2addr v7, v11

    const-wide/16 v9, 0x3e8

    mul-long v2, v7, v9

    .line 103
    .local v2, expTime:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gez v7, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v4

    .line 106
    :cond_1
    add-long v7, v0, v2

    cmp-long v7, v7, v5

    if-gez v7, :cond_2

    const/4 v4, 0x1

    .line 107
    .local v4, isExpire:Z
    :cond_2
    if-eqz v4, :cond_0

    .line 108
    const-string v7, "EASDeviceAdmin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPasswordExpire(): changeTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",nowTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",exp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateChangePasswordTime(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 142
    const-string v8, "pass_change"

    monitor-enter v8

    .line 143
    :try_start_0
    const-string v7, "EASDeviceAdmin"

    const-string v9, "onPasswordChanged"

    invoke-static {v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 146
    .local v5, nowTime:J
    sget-wide v9, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->lastupdatetime:J

    const-wide/high16 v11, -0x8000

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    sget-wide v9, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->lastupdatetime:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x1f4

    cmp-long v7, v9, v11

    if-gez v7, :cond_0

    .line 147
    monitor-exit v8

    .line 170
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v7, "EASDeviceAdmin"

    const-string v9, "go"

    invoke-static {v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v7, "config"

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "pass_change"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 154
    .local v3, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .local v4, fileWriter:Ljava/io/FileWriter;
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 160
    if-eqz v4, :cond_1

    .line 162
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    move-object v3, v4

    .line 168
    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :cond_2
    :goto_2
    :try_start_4
    sput-wide v5, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->lastupdatetime:J

    .line 169
    monitor-exit v8

    goto :goto_0

    .end local v0           #dataFilePath:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .end local v5           #nowTime:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 157
    .restart local v0       #dataFilePath:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #nowTime:J
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    if-eqz v3, :cond_2

    .line 162
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 163
    :catch_1
    move-exception v1

    .line 164
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 160
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 162
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 160
    :cond_3
    :goto_5
    :try_start_9
    throw v7

    .line 163
    :catch_2
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 163
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 160
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_4

    .line 157
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_3
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    const-string v0, "EASDeviceAdmin"

    const-string v1, "onDisableRequested"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const v0, 0x7f0b02df

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 64
    const-string v1, "EASDeviceAdmin"

    const-string v2, "onDisabled"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-boolean v1, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->isFromAdminUpdate:Z

    if-nez v1, :cond_0

    .line 66
    invoke-static {p1, v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->disableEASAdmin(Landroid/content/Context;Z)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.deleteaccount"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v1, "EASDeviceAdmin"

    const-string v2, "Reset isFromAdminUpdate as false."

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sput-boolean v3, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->isFromAdminUpdate:Z

    goto :goto_0
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    const-string v0, "EASDeviceAdmin"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->updateChangePasswordTime(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    return-void
.end method
