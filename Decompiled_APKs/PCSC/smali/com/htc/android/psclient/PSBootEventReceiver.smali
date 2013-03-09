.class public Lcom/htc/android/psclient/PSBootEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PSBootEventReceiver.java"


# static fields
.field private static final PATH_HDMI_STATUS:Ljava/lang/String; = "/data/data/com.htc.android.psclient/hdmi_status"

.field private static final PLUG:Ljava/lang/String; = "PLUG"

.field private static final UNPLUG:Ljava/lang/String; = "UNPLUG"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const-string v0, "PSBootEventReceiver"

    iput-object v0, p0, Lcom/htc/android/psclient/PSBootEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private UpdateHDMIPlugStatus(Z)V
    .locals 7
    .parameter "isPlug"

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, writer:Ljava/io/Writer;
    const/4 v1, 0x0

    .line 50
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 51
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 52
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 53
    .end local v3           #writer:Ljava/io/Writer;
    .local v4, writer:Ljava/io/Writer;
    if-eqz p1, :cond_1

    .line 54
    :try_start_2
    const-string v5, "PLUG"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :goto_0
    if-eqz v4, :cond_3

    .line 63
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    const/4 v1, 0x0

    .line 65
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :try_start_4
    const-string v5, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {p0, v5}, Lcom/htc/android/psclient/PSBootEventReceiver;->setPermission(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_1
    move-object v3, v4

    .line 71
    .end local v4           #writer:Ljava/io/Writer;
    .restart local v3       #writer:Ljava/io/Writer;
    :cond_0
    :goto_2
    return-void

    .line 56
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

    .line 58
    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    move-object v3, v4

    .line 59
    .end local v4           #writer:Ljava/io/Writer;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #writer:Ljava/io/Writer;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 62
    if-eqz v3, :cond_0

    .line 63
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 64
    const/4 v1, 0x0

    .line 65
    const-string v5, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {p0, v5}, Lcom/htc/android/psclient/PSBootEventReceiver;->setPermission(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #writer:Ljava/io/Writer;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/Writer;
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 68
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 70
    .end local v4           #writer:Ljava/io/Writer;
    .restart local v3       #writer:Ljava/io/Writer;
    goto :goto_2

    .line 61
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 62
    :goto_5
    if-eqz v3, :cond_2

    .line 63
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 64
    const/4 v1, 0x0

    .line 65
    const-string v6, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {p0, v6}, Lcom/htc/android/psclient/PSBootEventReceiver;->setPermission(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 69
    :cond_2
    :goto_6
    throw v5

    .line 67
    :catch_3
    move-exception v0

    .line 68
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 61
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

    .line 58
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

    .line 67
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

.method static synthetic access$000(Lcom/htc/android/psclient/PSBootEventReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/android/psclient/PSBootEventReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/psclient/PSBootEventReceiver;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/android/psclient/PSBootEventReceiver;->UpdateHDMIPlugStatus(Z)V

    return-void
.end method

.method private setPermission(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 39
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

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/android/psclient/PSBootEventReceiver;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/htc/android/psclient/PSBootEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/htc/android/psclient/PSBootEventReceiver$1;-><init>(Lcom/htc/android/psclient/PSBootEventReceiver;)V

    invoke-virtual {v0}, Lcom/htc/android/psclient/PSBootEventReceiver$1;->start()V

    .line 35
    return-void
.end method
