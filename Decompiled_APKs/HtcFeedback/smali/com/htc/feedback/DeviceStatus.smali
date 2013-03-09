.class public Lcom/htc/feedback/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static final LOG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "DeviceStatus"

    sput-object v0, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 3
    .parameter "dir"
    .parameter "fileWriter"

    .prologue
    .line 23
    :try_start_0
    const-string v1, "\n----- DEVICE STATUS -----"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 24
    invoke-static {p0, p1}, Lcom/htc/feedback/DeviceStatus;->sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 25
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/htc/feedback/DeviceStatus;->sBatteryLevel(Ljava/io/OutputStreamWriter;)V

    .line 27
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lcom/htc/feedback/DeviceStatus;->sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    const-string v2, "dumping error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static runCommand(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 10
    .parameter "command"
    .parameter "fileWriter"

    .prologue
    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, process:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 77
    .local v2, output:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "sh"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 78
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 79
    .end local v2           #output:Ljava/io/DataOutputStream;
    .local v3, output:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 80
    const-string v6, "exit\n"

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 83
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 89
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runCommand "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    if-eqz v3, :cond_0

    .line 100
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 102
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v2, v3

    .line 107
    .end local v3           #output:Ljava/io/DataOutputStream;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_2
    return-void

    .line 93
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 95
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 96
    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_3
    :try_start_7
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 102
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 103
    :catch_2
    move-exception v0

    .line 104
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runCommand "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 98
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .line 99
    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    :goto_4
    if-eqz v2, :cond_3

    .line 100
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 102
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 105
    :goto_5
    throw v6

    .line 103
    .end local v2           #output:Ljava/io/DataOutputStream;
    .restart local v3       #output:Ljava/io/DataOutputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 104
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runCommand "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 106
    .end local v3           #output:Ljava/io/DataOutputStream;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .line 104
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runCommand "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v6

    goto :goto_4

    .line 95
    :catch_5
    move-exception v0

    goto/16 :goto_3
.end method

.method public static sBatteryLevel(Ljava/io/OutputStreamWriter;)V
    .locals 1
    .parameter "fileWriter"

    .prologue
    .line 66
    const-string v0, "dumpsys battery"

    invoke-static {v0, p0}, Lcom/htc/feedback/DeviceStatus;->runCommand(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 67
    return-void
.end method

.method public static sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    .locals 1
    .parameter "fileWriter"

    .prologue
    .line 70
    const-string v0, "df"

    invoke-static {v0, p0}, Lcom/htc/feedback/DeviceStatus;->runCommand(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 71
    return-void
.end method

.method public static sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 9
    .parameter "dir"
    .parameter "fileWriter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, isReadOnly:Z
    const/4 v1, 0x0

    .line 37
    .local v1, foutput:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 39
    .local v4, tmp:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".testReadOnly.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .end local v4           #tmp:Ljava/io/File;
    .local v5, tmp:Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 45
    .end local v1           #foutput:Ljava/io/FileOutputStream;
    .local v2, foutput:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_4

    .line 47
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v5           #tmp:Ljava/io/File;
    .restart local v4       #tmp:Ljava/io/File;
    move-object v1, v2

    .line 53
    .end local v2           #foutput:Ljava/io/FileOutputStream;
    .restart local v1       #foutput:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 54
    const-string v6, "\n/data read-only=true\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 59
    :goto_1
    if-eqz v4, :cond_1

    .line 60
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 64
    :cond_1
    :goto_2
    return-void

    .line 48
    .end local v1           #foutput:Ljava/io/FileOutputStream;
    .end local v4           #tmp:Ljava/io/File;
    .restart local v2       #foutput:Ljava/io/FileOutputStream;
    .restart local v5       #tmp:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .end local v5           #tmp:Ljava/io/File;
    .restart local v4       #tmp:Ljava/io/File;
    move-object v1, v2

    .line 50
    .end local v2           #foutput:Ljava/io/FileOutputStream;
    .restart local v1       #foutput:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 41
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 42
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t write: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    const/4 v3, 0x1

    .line 45
    if-eqz v1, :cond_0

    .line 47
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 48
    :catch_2
    move-exception v0

    .line 49
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_2

    .line 47
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 50
    :cond_2
    :goto_5
    throw v6

    .line 48
    :catch_3
    move-exception v0

    .line 49
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v7, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    const-string v8, "sIsDataPartitionReadOnly error: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 56
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v6, "\n/data read-only=false\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :catch_4
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/feedback/DeviceStatus;->TAG:Ljava/lang/String;

    const-string v7, "error: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #tmp:Ljava/io/File;
    .restart local v5       #tmp:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #tmp:Ljava/io/File;
    .restart local v4       #tmp:Ljava/io/File;
    goto :goto_4

    .line 41
    .end local v4           #tmp:Ljava/io/File;
    .restart local v5       #tmp:Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5           #tmp:Ljava/io/File;
    .restart local v4       #tmp:Ljava/io/File;
    goto :goto_3

    .end local v1           #foutput:Ljava/io/FileOutputStream;
    .end local v4           #tmp:Ljava/io/File;
    .restart local v2       #foutput:Ljava/io/FileOutputStream;
    .restart local v5       #tmp:Ljava/io/File;
    :cond_4
    move-object v4, v5

    .end local v5           #tmp:Ljava/io/File;
    .restart local v4       #tmp:Ljava/io/File;
    move-object v1, v2

    .end local v2           #foutput:Ljava/io/FileOutputStream;
    .restart local v1       #foutput:Ljava/io/FileOutputStream;
    goto :goto_0
.end method
