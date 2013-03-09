.class public Lcom/sprint/ce/updater/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field public static final MDN:I = 0x1

.field public static final MSID:I = 0x23

.field public static final NAI:I = 0x2

.field private static final SIX_ZEROS:Ljava/lang/String; = "000000"

.field public static TAG:Ljava/lang/String;

.field private static sConnectionManager:Lcom/sprint/internal/ConnectionManager;

.field public static sMsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "SprintUpdater"

    sput-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "0"

    sput-object v0, Lcom/sprint/ce/updater/DeviceUtil;->sMsid:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canConnectTo(Ljava/lang/String;)Z
    .locals 9
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 180
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x5

    if-lt v1, v6, :cond_0

    .line 202
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 183
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 185
    .local v2, ip:Ljava/net/InetAddress;
    new-instance v4, Ljava/net/Socket;

    const/16 v6, 0x50

    invoke-direct {v4, v2, v6}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v4, socket:Ljava/net/Socket;
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 193
    .local v3, out:Ljava/io/OutputStream;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 194
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 196
    .end local v2           #ip:Ljava/net/InetAddress;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Socket Exceptin:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #ip:Ljava/net/InetAddress;
    .restart local v4       #socket:Ljava/net/Socket;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static isFactoryDefault(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    :try_start_0
    new-instance v3, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v3, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 163
    .local v3, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, mdn:Ljava/lang/String;
    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, msid:Ljava/lang/String;
    sput-object v2, Lcom/sprint/ce/updater/DeviceUtil;->sMsid:Ljava/lang/String;

    .line 166
    const-string v6, "000000"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "000000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    :cond_0
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v7, "Device isFactoryDefault: yes"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v5

    .line 176
    .end local v1           #mdn:Ljava/lang/String;
    .end local v2           #msid:Ljava/lang/String;
    .end local v3           #sp:Lcom/sprint/internal/SystemProperties;
    :cond_2
    :goto_0
    return v4

    .line 170
    .restart local v1       #mdn:Ljava/lang/String;
    .restart local v2       #msid:Ljava/lang/String;
    .restart local v3       #sp:Lcom/sprint/internal/SystemProperties;
    :cond_3
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v6, "Device isFactoryDefault: no"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1           #mdn:Ljava/lang/String;
    .end local v2           #msid:Ljava/lang/String;
    .end local v3           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v5, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v6, "Unable to get SystemProperties setting factory default to no"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logDataProfile(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 110
    sparse-switch p0, :sswitch_data_0

    .line 130
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current data profile: UNKNOWN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 112
    :sswitch_0
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current data profile: CDMA Slot 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :sswitch_1
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current data profile: CDMA Slot 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :sswitch_2
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current data profile: WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :sswitch_3
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current data profile: WIMAX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :sswitch_4
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current data profile: DATA_NOT_ALLOWED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :sswitch_5
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v1, "Current data profile: DATA_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x64 -> :sswitch_0
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_4
    .end sparse-switch
.end method

.method public static releaseDataSession(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 136
    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->sConnectionManager:Lcom/sprint/internal/ConnectionManager;

    .line 137
    .local v0, cm:Lcom/sprint/internal/ConnectionManager;
    const-class v3, Lcom/sprint/ce/updater/DownloadUtil;

    monitor-enter v3

    .line 138
    :try_start_0
    sget-object v2, Lcom/sprint/ce/updater/DeviceUtil;->sConnectionManager:Lcom/sprint/internal/ConnectionManager;

    if-eqz v2, :cond_0

    .line 139
    const/4 v2, 0x0

    sput-object v2, Lcom/sprint/ce/updater/DeviceUtil;->sConnectionManager:Lcom/sprint/internal/ConnectionManager;

    .line 137
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    new-instance v1, Lcom/sprint/ce/updater/DeviceUtil$1;

    invoke-direct {v1, v0}, Lcom/sprint/ce/updater/DeviceUtil$1;-><init>(Lcom/sprint/internal/ConnectionManager;)V

    .line 154
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 156
    .end local v1           #t:Ljava/lang/Thread;
    :cond_1
    return-void

    .line 137
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static requestDataSession(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x2

    .line 29
    const/4 v7, 0x1

    .line 30
    .local v7, success:Z
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->isUsingSlot0(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 31
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "Using CDMA Slot 0"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-class v9, Lcom/sprint/ce/updater/DownloadUtil;

    monitor-enter v9

    .line 34
    :try_start_0
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->sConnectionManager:Lcom/sprint/internal/ConnectionManager;

    if-nez v8, :cond_0

    .line 35
    new-instance v8, Lcom/sprint/internal/ConnectionManager;

    invoke-direct {v8, p0}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/sprint/ce/updater/DeviceUtil;->sConnectionManager:Lcom/sprint/internal/ConnectionManager;

    .line 33
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object v0, Lcom/sprint/ce/updater/DeviceUtil;->sConnectionManager:Lcom/sprint/internal/ConnectionManager;

    .line 40
    .local v0, cm:Lcom/sprint/internal/ConnectionManager;
    :try_start_1
    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->getDataProfile()I

    move-result v3

    .line 41
    .local v3, profile:I
    invoke-static {v3}, Lcom/sprint/ce/updater/DeviceUtil;->logDataProfile(I)V
    :try_end_1
    .catch Lcom/sprint/internal/ConnectionManagerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 42
    sparse-switch v3, :sswitch_data_0

    .end local v0           #cm:Lcom/sprint/internal/ConnectionManager;
    .end local v3           #profile:I
    :cond_1
    :goto_0
    move v8, v7

    .line 106
    :goto_1
    return v8

    .line 33
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 51
    .restart local v0       #cm:Lcom/sprint/internal/ConnectionManager;
    .restart local v3       #profile:I
    :sswitch_0
    :try_start_3
    new-instance v6, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v6, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Lcom/sprint/internal/ConnectionManagerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 52
    .local v6, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x0

    .line 54
    .local v2, nai:Ljava/lang/String;
    const/4 v8, 0x2

    :try_start_4
    invoke-virtual {v6, v8}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sprint/internal/ConnectionManagerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 58
    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    .line 59
    :try_start_5
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, proxy:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/sprint/ce/updater/DeviceUtil;->canConnectTo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 62
    const/4 v8, 0x1

    goto :goto_1

    .line 55
    .end local v4           #proxy:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-boolean v8, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "Failed to get NAI"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/sprint/internal/ConnectionManagerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 95
    .end local v1           #e:Lcom/sprint/internal/SystemPropertiesException;
    .end local v2           #nai:Ljava/lang/String;
    .end local v3           #profile:I
    .end local v6           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_1
    move-exception v1

    .line 96
    .local v1, e:Lcom/sprint/internal/ConnectionManagerException;
    const/4 v7, 0x0

    .line 97
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "error in ConnectionManager"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    .end local v1           #e:Lcom/sprint/internal/ConnectionManagerException;
    .restart local v2       #nai:Ljava/lang/String;
    .restart local v3       #profile:I
    .restart local v4       #proxy:Ljava/lang/String;
    .restart local v6       #sp:Lcom/sprint/internal/SystemProperties;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 66
    .end local v4           #proxy:Ljava/lang/String;
    :cond_4
    :try_start_6
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "Requesting slot 0"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v8, 0x64

    invoke-virtual {v0, v8}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V

    .line 69
    const/4 v5, 0x1

    .line 70
    .local v5, retries:I
    const/4 v7, 0x0

    .line 72
    :goto_3
    if-gt v5, v11, :cond_1

    if-nez v7, :cond_1

    .line 73
    sget-boolean v8, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Attempting connection to Slot 0 try #: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_5
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->waitForNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 75
    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->getDataProfile()I

    move-result v3

    .line 76
    invoke-static {v3}, Lcom/sprint/ce/updater/DeviceUtil;->logDataProfile(I)V

    .line 77
    if-eq v3, v12, :cond_6

    .line 78
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "Failed to acquire slot 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/sprint/internal/ConnectionManagerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 79
    const/4 v7, 0x0

    .line 86
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 81
    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    .line 84
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 92
    .end local v2           #nai:Ljava/lang/String;
    .end local v5           #retries:I
    .end local v6           #sp:Lcom/sprint/internal/SystemProperties;
    :sswitch_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 98
    .end local v3           #profile:I
    :catch_2
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    .line 100
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "unexpected error in ConnectionManager"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 103
    .end local v0           #cm:Lcom/sprint/internal/ConnectionManager;
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_8
    sget-object v8, Lcom/sprint/ce/updater/DeviceUtil;->TAG:Ljava/lang/String;

    const-string v9, "Not using CDMA Slot 0"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->waitForNetwork(Landroid/content/Context;)Z

    move-result v7

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x64 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method
