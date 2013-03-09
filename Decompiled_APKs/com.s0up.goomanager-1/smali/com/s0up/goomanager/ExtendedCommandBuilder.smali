.class public Lcom/s0up/goomanager/ExtendedCommandBuilder;
.super Ljava/lang/Object;
.source "ExtendedCommandBuilder.java"


# static fields
.field public static final DATA_DIRECTORY:Ljava/lang/String; = "/data/data/com.s0up.goomanager/"

.field private static final RECOVERY_INSTALL_PATH:Ljava/lang/String; = "/cache/recovery/command"

.field private static final RECOVERY_PATH:Ljava/lang/String; = "/cache/recovery/openrecoveryscript"

.field private static final TAG:Ljava/lang/String; = "GooManager.ExtendedCommandBuilder"


# instance fields
.field private mainContext:Landroid/content/Context;

.field private modules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "thisContext"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s0up/goomanager/ExtendedCommandBuilder;->modules:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/s0up/goomanager/ExtendedCommandBuilder;->mainContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "primaryProperty"
    .parameter "secondaryProperty"

    .prologue
    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, output:Ljava/lang/String;
    const/4 v2, 0x0

    .line 327
    .local v2, input:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getprop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 328
    .local v4, p:Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 331
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 332
    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 333
    move-object v3, v2

    :cond_0
    :goto_0
    move-object v5, v3

    .line 344
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #p:Ljava/lang/Process;
    :goto_1
    return-object v5

    .line 334
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #p:Ljava/lang/Process;
    :cond_1
    if-eqz p1, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getprop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 336
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 337
    .restart local v0       #br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 339
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #p:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static hasSu()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 32
    .local v2, run:Ljava/lang/Runtime;
    const/4 v1, 0x0

    .line 34
    .local v1, p:Ljava/lang/Process;
    :try_start_0
    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 35
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 39
    :goto_0
    return-object v3

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "GooManager.ExtendedCommandBuilder"

    const-string v4, "Unable to get root"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static installRecovery(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 62
    .local v4, run:Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 63
    .local v3, p:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 64
    .local v1, out:Ljava/io/DataOutputStream;
    const-string v5, "/mnt"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    const-string v5, "/mnt"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_0
    :try_start_0
    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 69
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "echo \'--update_package="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cache/recovery/command"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 74
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootRecovery()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 80
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "GooManager.ExtendedCommandBuilder"

    const-string v6, "Unable to reboot into recovery mode:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static rebootNative()V
    .locals 9

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 92
    .local v7, runtime:Ljava/lang/Runtime;
    const/4 v6, 0x0

    .line 93
    .local v6, proc:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 96
    .local v4, osw:Ljava/io/OutputStreamWriter;
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getBoardName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, board:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v8, "TF201"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "tf201"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 99
    :cond_0
    const-string v1, "echo boot-recovery|dd of=/dev/block/mmcblk0p3 bs=1 seek=0; reboot"

    .line 104
    .local v1, command:Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 105
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .local v5, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 108
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 113
    if-eqz v5, :cond_5

    .line 115
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 122
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 123
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 127
    :cond_2
    :goto_2
    return-void

    .line 101
    .end local v1           #command:Ljava/lang/String;
    :cond_3
    const-string v1, "reboot recovery"

    .restart local v1       #command:Ljava/lang/String;
    goto :goto_0

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    if-eqz v4, :cond_1

    .line 115
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 116
    :catch_1
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 113
    :goto_4
    if-eqz v4, :cond_4

    .line 115
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 120
    :cond_4
    :goto_5
    throw v8

    .line 116
    :catch_2
    move-exception v2

    .line 117
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 116
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v2

    .line 117
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_1

    .line 124
    :catch_4
    move-exception v2

    .line 125
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 110
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method public static rebootPrebuilt()V
    .locals 7

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 130
    .local v5, runtime:Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 131
    .local v4, proc:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 133
    .local v2, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 134
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .local v3, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    const-string v6, "chmod 755 /data/data/com.s0up.goomanager/reboot\n"

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 136
    const-string v6, "/data/data/com.s0up.goomanager/reboot recovery\n"

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 138
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 143
    if-eqz v3, :cond_3

    .line 145
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 152
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 153
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, ex:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    if-eqz v2, :cond_0

    .line 145
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 143
    :goto_3
    if-eqz v2, :cond_2

    .line 145
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 150
    :cond_2
    :goto_4
    throw v6

    .line 146
    :catch_2
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 154
    :catch_4
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 140
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2
.end method

.method public static rebootRecovery()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootNative()V

    .line 83
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootPrebuilt()V

    .line 84
    return-void
.end method


# virtual methods
.method public addModule(Ljava/lang/String;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/s0up/goomanager/ExtendedCommandBuilder;->modules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public clearModules()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s0up/goomanager/ExtendedCommandBuilder;->modules:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public copyModules()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    const-string v0, ""

    .line 52
    .local v0, cmd:Ljava/lang/String;
    const-string v2, ""

    .line 53
    .local v2, output:Ljava/lang/String;
    iget-object v3, p0, Lcom/s0up/goomanager/ExtendedCommandBuilder;->modules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    return-object v2

    .line 53
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, module:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cat /data/data/com.s0up.goomanager/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "command"

    .prologue
    .line 428
    const/4 v6, 0x0

    .line 430
    .local v6, rval:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 432
    .local v5, p:Ljava/lang/Process;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    .local v1, dis:Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 435
    .local v2, dos:Ljava/io/DataOutputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 437
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 439
    const-string v7, "GOO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Executing command "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 444
    .local v4, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 449
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 451
    const-string v7, "GOO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Returning "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #p:Ljava/lang/Process;
    :goto_1
    return-object v6

    .line 445
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #p:Ljava/lang/Process;
    :cond_0
    const-string v7, "GOO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Reading line from binary "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 453
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #p:Ljava/lang/Process;
    :catch_0
    move-exception v3

    .line 454
    .local v3, e:Ljava/io/IOException;
    const-string v7, "GOO"

    const-string v8, "Unable to run command, failed with IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 456
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 458
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public flashImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "imgPath"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, command:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/flash_image"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, flashImageFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flash_image recovery "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    const-string v2, "chmod 755 /data/data/com.s0up.goomanager/flash_image"

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/com.s0up.goomanager/flash_image recovery "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public flashRom([Ljava/lang/String;ZZZLandroid/content/Context;)V
    .locals 12
    .parameter "zip"
    .parameter "wipeCache"
    .parameter "wipeData"
    .parameter "createBackup"
    .parameter "context"

    .prologue
    .line 347
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 348
    .local v7, run:Ljava/lang/Runtime;
    const/4 v6, 0x0

    .line 349
    .local v6, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 351
    .local v4, out:Ljava/io/DataOutputStream;
    :try_start_0
    const-string v9, "su"

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 352
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    .end local v4           #out:Ljava/io/DataOutputStream;
    .local v5, out:Ljava/io/DataOutputStream;
    :try_start_1
    const-string v9, "goomanager"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 355
    .local v8, settings:Landroid/content/SharedPreferences;
    const-string v9, "download_path"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/goomanager/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, flashPath:Ljava/lang/String;
    const-string v9, "/mnt"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 358
    const-string v9, "/mnt"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_0
    const-string v9, "/storage/sdcard0"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 361
    const-string v9, "GOO"

    const-string v10, "Fixing path on jellybean..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v9, "/storage/sdcard0/"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_1
    const-string v9, "echo \'set tw_signed_zip_verify 0\'>/cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 376
    if-eqz p4, :cond_2

    .line 377
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v9

    const-string v10, "backupName"

    invoke-virtual {v9, v10}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v9

    const-string v10, "backupName"

    invoke-virtual {v9, v10}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 378
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "echo \'backup SDBOM "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v10

    const-string v11, "backupName"

    invoke-virtual {v10, v11}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cache/recovery/openrecoveryscript"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 384
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 387
    const-string v9, "echo \'wipe data\'>>/cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 391
    :cond_3
    if-eqz p2, :cond_4

    .line 394
    const-string v9, "echo \'wipe cache\'>>/cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 396
    const-string v9, "echo \'wipe dalvik\'>>/cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 400
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v9, p1

    if-lt v3, v9, :cond_6

    .line 415
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 416
    invoke-virtual {p0}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootRecoveryWithMsg()V

    move-object v4, v5

    .line 423
    .end local v2           #flashPath:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v8           #settings:Landroid/content/SharedPreferences;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :goto_2
    return-void

    .line 380
    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v2       #flashPath:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    .restart local v8       #settings:Landroid/content/SharedPreferences;
    :cond_5
    const-string v9, "echo \'backup SDBOM\'>/cache/recovery/openrecoveryscript\n"

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 418
    .end local v2           #flashPath:Ljava/lang/String;
    .end local v8           #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 419
    .end local v5           #out:Ljava/io/DataOutputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :goto_3
    const-string v9, "GooManager.ExtendedCommandBuilder"

    const-string v10, "Unable to reboot into recovery mode:"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 402
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v2       #flashPath:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/DataOutputStream;
    .restart local v8       #settings:Landroid/content/SharedPreferences;
    :cond_6
    :try_start_2
    aget-object v9, p1, v3

    const-string v10, "/mnt/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 403
    aget-object v9, p1, v3

    const-string v10, "/mnt/sdcard"

    const-string v11, "/sdcard"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, p1, v3

    .line 405
    :cond_7
    aget-object v9, p1, v3

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 406
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "echo \'install \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, p1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 407
    const-string v10, ">>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cache/recovery/openrecoveryscript"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 406
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 400
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 409
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "echo \'install \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 410
    const-string v10, ">>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cache/recovery/openrecoveryscript"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 409
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 418
    .end local v2           #flashPath:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v8           #settings:Landroid/content/SharedPreferences;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public installRecoveryImg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "imgPath"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    const-string v3, "device_install_command"

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, ddCmd:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    const-string v2, "#FILE#"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "GOO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Installing with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, v0}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    :goto_0
    return-object v1

    .line 166
    :cond_0
    const-string v2, "GOO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using flash_image recovery "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->flashImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public rebootRecoveryWithMsg()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootNative()V

    .line 87
    invoke-static {}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->rebootPrebuilt()V

    .line 88
    iget-object v0, p0, Lcom/s0up/goomanager/ExtendedCommandBuilder;->mainContext:Landroid/content/Context;

    const-string v1, "Attempting to reboot recovery, if this fails you may want to perform the operation manually!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method
