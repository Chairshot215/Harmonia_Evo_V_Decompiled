.class public Lcom/htc/dmc/utils/HeadSetHelper;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;
    }
.end annotation


# static fields
.field private static final HEADSET_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field private static final HEADSET_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field private static final TAG:Ljava/lang/String; = "[HeadSethelper]"


# instance fields
.field private mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

.field protected mIsBTPlugged:Z

.field protected mIsWiredPlugged:Z

.field private mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

.field protected mStartMonitor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    .line 25
    iput-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    .line 27
    iput-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    .line 149
    iput-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mStartMonitor:Z

    .line 211
    return-void
.end method

.method private static getHeadsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "/sys/class/switch/h2w/name"

    invoke-static {v0}, Lcom/htc/dmc/utils/HeadSetHelper;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadsetState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/htc/dmc/utils/HeadSetHelper;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBTHeadsetPlugged(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    return v1
.end method

.method public static isHeadsetPlugged(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    invoke-static {}, Lcom/htc/dmc/utils/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/dmc/utils/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiredHeadsetPlugged()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-static {}, Lcom/htc/dmc/utils/HeadSetHelper;->getHeadsetName()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v5

    .line 91
    :cond_1
    const/4 v4, 0x0

    .line 94
    .local v4, state:I
    :try_start_0
    invoke-static {}, Lcom/htc/dmc/utils/HeadSetHelper;->getHeadsetState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, bstate:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "h2w"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    :cond_2
    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 114
    .local v2, length:I
    if-ne v2, v6, :cond_3

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    const-string v5, "[HeadSethelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 116
    goto :goto_0

    .line 95
    .end local v0           #bstate:Ljava/lang/String;
    .end local v2           #length:I
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 97
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 119
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bstate:Ljava/lang/String;
    .restart local v2       #length:I
    :cond_3
    const/4 v7, 0x2

    if-lt v2, v7, :cond_5

    const-string v7, "01"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "11"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 122
    :cond_4
    const-string v5, "[HeadSethelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 123
    goto/16 :goto_0

    .line 126
    :cond_5
    const-string v6, "[HeadSethelper]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset false:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 38
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 40
    const/4 v9, 0x0

    .line 77
    :goto_0
    return-object v9

    .line 42
    :cond_0
    const/4 v9, 0x0

    .line 43
    .local v9, line:Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 45
    .local v7, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 47
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 48
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 49
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v8, isr:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 50
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v9

    .line 55
    if-eqz v1, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 63
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 67
    :cond_2
    :goto_2
    if-eqz v5, :cond_9

    .line 69
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 74
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    goto :goto_0

    .line 58
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 59
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 65
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 70
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 71
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 72
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 52
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 53
    .local v6, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 55
    if-eqz v0, :cond_4

    .line 57
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 61
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 63
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 67
    :cond_5
    :goto_6
    if-eqz v4, :cond_3

    .line 69
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 70
    :catch_4
    move-exception v2

    .line 71
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 58
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 59
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 64
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 65
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 55
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v0, :cond_6

    .line 57
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 61
    :cond_6
    :goto_8
    if-eqz v7, :cond_7

    .line 63
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 67
    :cond_7
    :goto_9
    if-eqz v4, :cond_8

    .line 69
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 72
    :cond_8
    :goto_a
    throw v10

    .line 58
    :catch_7
    move-exception v2

    .line 59
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 64
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 65
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 70
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 71
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 55
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 52
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v6

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_c
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :cond_9
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public isBTHeadsetPluggedCacheValue()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    return v0
.end method

.method public isHeadsetPluggedCacheValue()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWiredHeadsetPluggedCacheValue()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    return v0
.end method

.method protected notifyMonitorBTHeadSetChange()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    iget-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    invoke-interface {v0, v1}, Lcom/htc/dmc/utils/IMonitorHeadSetStatus;->BTHeadSetStatusChanged(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method protected notifyMonitorHeadSetChange()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    iget-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/htc/dmc/utils/IMonitorHeadSetStatus;->headSetStatusChanged(Z)V

    .line 199
    :cond_1
    return-void

    .line 198
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyMonitorWiredHeadSetChange()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    iget-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    invoke-interface {v0, v1}, Lcom/htc/dmc/utils/IMonitorHeadSetStatus;->wiredHeadSetStatusChanged(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public startMonitor(Landroid/content/Context;Lcom/htc/dmc/utils/IMonitorHeadSetStatus;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    .line 151
    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p2, :cond_0

    .line 154
    iget-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mStartMonitor:Z

    if-ne v2, v1, :cond_2

    .line 155
    const-string v1, "[HeadSethelper]"

    const-string v2, "already start monitor..."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {}, Lcom/htc/dmc/utils/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    .line 160
    invoke-static {p1}, Lcom/htc/dmc/utils/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    .line 162
    iput-object p2, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mListener:Lcom/htc/dmc/utils/IMonitorHeadSetStatus;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    if-nez v1, :cond_3

    .line 169
    new-instance v1, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    invoke-direct {v1, p0}, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;-><init>(Lcom/htc/dmc/utils/HeadSetHelper;)V

    iput-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    .line 175
    :goto_1
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mStartMonitor:Z

    .line 176
    iget-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0

    .line 171
    :cond_3
    const-string v1, "[HeadSethelper]"

    const-string v2, "someone called this twice?"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopMonitor(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mStartMonitor:Z

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mStartMonitor:Z

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dmc/utils/HeadSetHelper;->mIntentReceiver:Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[HeadSethelper]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
