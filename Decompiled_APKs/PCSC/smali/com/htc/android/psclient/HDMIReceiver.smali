.class public Lcom/htc/android/psclient/HDMIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HDMIReceiver.java"


# static fields
.field private static final PATH_HDMI_STATUS:Ljava/lang/String; = "/data/data/com.htc.android.psclient/hdmi_status"

.field private static final PLUG:Ljava/lang/String; = "PLUG"

.field private static final UNPLUG:Ljava/lang/String; = "UNPLUG"


# instance fields
.field private final BIT_HDMI_CABLE:I

.field private final TAG:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-string v0, "HDMIReceiver"

    iput-object v0, p0, Lcom/htc/android/psclient/HDMIReceiver;->TAG:Ljava/lang/String;

    .line 21
    const/16 v0, 0x800

    iput v0, p0, Lcom/htc/android/psclient/HDMIReceiver;->BIT_HDMI_CABLE:I

    return-void
.end method

.method private UpdateHDMIPlugStatus(Z)V
    .locals 7
    .parameter "isPlug"

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, writer:Ljava/io/Writer;
    const/4 v1, 0x0

    .line 113
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 114
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 115
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 116
    .end local v3           #writer:Ljava/io/Writer;
    .local v4, writer:Ljava/io/Writer;
    if-eqz p1, :cond_1

    .line 117
    :try_start_2
    const-string v5, "PLUG"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :goto_0
    if-eqz v4, :cond_3

    .line 126
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    const/4 v1, 0x0

    .line 128
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :try_start_4
    const-string v5, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {p0, v5}, Lcom/htc/android/psclient/HDMIReceiver;->setPermission(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_1
    move-object v3, v4

    .line 134
    .end local v4           #writer:Ljava/io/Writer;
    .restart local v3       #writer:Ljava/io/Writer;
    :cond_0
    :goto_2
    return-void

    .line 119
    .end local v1           #file:Ljava/io/File;
    .end local v3           #writer:Ljava/io/Writer;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/Writer;
    :cond_1
    :try_start_5
    const-string v5, "UNPLUG"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    move-object v3, v4

    .line 122
    .end local v4           #writer:Ljava/io/Writer;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #writer:Ljava/io/Writer;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    if-eqz v3, :cond_0

    .line 126
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 127
    const/4 v1, 0x0

    .line 128
    const-string v5, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {p0, v5}, Lcom/htc/android/psclient/HDMIReceiver;->setPermission(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 130
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #writer:Ljava/io/Writer;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/Writer;
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 131
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 133
    .end local v4           #writer:Ljava/io/Writer;
    .restart local v3       #writer:Ljava/io/Writer;
    goto :goto_2

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 125
    :goto_5
    if-eqz v3, :cond_2

    .line 126
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 127
    const/4 v1, 0x0

    .line 128
    const-string v6, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {p0, v6}, Lcom/htc/android/psclient/HDMIReceiver;->setPermission(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 132
    :cond_2
    :goto_6
    throw v5

    .line 130
    :catch_3
    move-exception v0

    .line 131
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_5

    .end local v1           #file:Ljava/io/File;
    .end local v3           #writer:Ljava/io/Writer;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/Writer;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    move-object v3, v4

    .end local v4           #writer:Ljava/io/Writer;
    .restart local v3       #writer:Ljava/io/Writer;
    goto :goto_5

    .line 121
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_3

    .line 130
    .end local v3           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    :catch_6
    move-exception v0

    goto :goto_4

    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/android/psclient/HDMIReceiver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/android/psclient/HDMIReceiver;->UpdateHDMIPlugStatus(Z)V

    return-void
.end method

.method private setPermission(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v3, "HDMIReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-object v1, p1

    .line 28
    .local v1, mContext:Landroid/content/Context;
    move-object v2, p2

    .line 29
    .local v2, mIntent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/psclient/HDMIReceiver$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/htc/android/psclient/HDMIReceiver$1;-><init>(Lcom/htc/android/psclient/HDMIReceiver;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method

.method public setHDMINotification(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    .line 69
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 70
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f02000d

    .line 72
    .local v1, id:I
    const v7, 0x7f070023

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, title:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 74
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 83
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    const v7, 0x7f070022

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, message:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 85
    .local v0, HDMINotification:Landroid/app/Notification;
    const v7, 0x7f02000d

    iput v7, v0, Landroid/app/Notification;->icon:I

    .line 86
    const/4 v7, 0x2

    iput v7, v0, Landroid/app/Notification;->flags:I

    .line 87
    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 88
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/app/Notification;->when:J

    .line 89
    invoke-virtual {v0, p1, v6, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 90
    invoke-virtual {v4, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 94
    .end local v0           #HDMINotification:Landroid/app/Notification;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
