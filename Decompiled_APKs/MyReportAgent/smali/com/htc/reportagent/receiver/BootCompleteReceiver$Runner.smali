.class Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;
.super Ljava/lang/Object;
.source "BootCompleteReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/receiver/BootCompleteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runner"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/reportagent/receiver/BootCompleteReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/reportagent/receiver/BootCompleteReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context_in"
    .parameter "intent_in"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->this$0:Lcom/htc/reportagent/receiver/BootCompleteReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p3, p0, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->intent:Landroid/content/Intent;

    .line 49
    iput-object p2, p0, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private hasReported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 17
    .parameter "context"
    .parameter "sKlog"

    .prologue
    .line 142
    const-string v8, "last_k_hashcode"

    .line 143
    .local v8, hashfile:Ljava/lang/String;
    const/16 v7, 0xc8

    .line 144
    .local v7, hashCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 145
    .local v12, sHashBegin:I
    const/4 v9, 0x0

    .line 146
    .local v9, newHashCode:I
    const/4 v10, 0x0

    .line 148
    .local v10, oldHashCode:I
    const/4 v4, 0x0

    .line 150
    .local v4, fr:Ljava/io/FileReader;
    if-le v12, v7, :cond_2

    sub-int/2addr v12, v7

    .line 151
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 156
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 157
    .local v3, fd:Ljava/io/File;
    const/16 v13, 0x400

    new-array v1, v13, [C

    .line 158
    .local v1, buf:[C
    const/4 v11, 0x0

    .line 159
    .local v11, readLength:I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 160
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileReader;->read([C)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_6

    .line 163
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v10

    move-object v4, v5

    .line 167
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_0
    :goto_1
    if-ne v10, v9, :cond_3

    .line 168
    const/4 v13, 0x1

    .line 182
    if-eqz v4, :cond_1

    .line 184
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    .end local v1           #buf:[C
    .end local v3           #fd:Ljava/io/File;
    .end local v11           #readLength:I
    :cond_1
    :goto_2
    return v13

    .line 150
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 185
    .restart local v1       #buf:[C
    .restart local v3       #fd:Ljava/io/File;
    .restart local v11       #readLength:I
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const-string v14, "BugReportBootCompleteReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 171
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 172
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 173
    .local v6, fw:Ljava/io/FileWriter;
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/io/FileWriter;->write([C)V

    .line 174
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 175
    const/4 v13, 0x0

    .line 182
    if-eqz v4, :cond_1

    .line 184
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 185
    :catch_1
    move-exception v2

    .line 186
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const-string v14, "BugReportBootCompleteReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v1           #buf:[C
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fd:Ljava/io/File;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v11           #readLength:I
    :catch_2
    move-exception v2

    .line 178
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v13, "BugReportBootCompleteReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    if-eqz v4, :cond_4

    .line 184
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 190
    :cond_4
    :goto_4
    const/4 v13, 0x0

    goto :goto_2

    .line 185
    :catch_3
    move-exception v2

    .line 186
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const-string v13, "BugReportBootCompleteReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 182
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v4, :cond_5

    .line 184
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 188
    :cond_5
    :goto_6
    throw v13

    .line 185
    :catch_4
    move-exception v2

    .line 186
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const-string v14, "BugReportBootCompleteReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 182
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:[C
    .restart local v3       #fd:Ljava/io/File;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v11       #readLength:I
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 177
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :cond_6
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_1
.end method

.method private isShutdownLog(Ljava/lang/String;)Z
    .locals 3
    .parameter "sKlog"

    .prologue
    .line 195
    const-string v0, "back msm_pm_power_off"

    .line 197
    .local v0, powerOff:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 53
    iget-object v12, p0, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v9, ""

    .line 56
    .local v9, sKlog:Ljava/lang/String;
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 57
    const-string v12, "BugReportBootCompleteReceiver"

    const-string v13, "BugReport bootcomplete receiver get a not boot completed intent!!"

    invoke-static {v12, v13}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v5, 0x0

    .line 64
    .local v5, fileReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v12, "/proc/last_kmsg"

    invoke-direct {v6, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 65
    .end local v5           #fileReader:Ljava/io/FileReader;
    .local v6, fileReader:Ljava/io/FileReader;
    const/16 v12, 0x1000

    :try_start_1
    new-array v3, v12, [C

    .line 66
    .local v3, buffer:[C
    const/4 v8, 0x0

    .line 67
    .local v8, numRead:I
    :goto_1
    invoke-virtual {v6, v3}, Ljava/io/FileReader;->read([C)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_2

    .line 68
    const/4 v12, 0x0

    invoke-static {v3, v12, v8}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v9

    goto :goto_1

    .line 77
    :cond_2
    if-eqz v6, :cond_3

    .line 79
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->context:Landroid/content/Context;

    invoke-direct {p0, v12, v9}, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->hasReported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 86
    const-string v12, "BugReportBootCompleteReceiver"

    const-string v13, "Crash reported"

    invoke-static {v12, v13}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v3           #buffer:[C
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fileReader:Ljava/io/FileReader;
    .end local v8           #numRead:I
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :catch_1
    move-exception v4

    .line 77
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v5, :cond_0

    .line 79
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 80
    :catch_2
    move-exception v4

    .line 81
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 74
    .restart local v4       #e:Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v12, "Read last kernel message fail."

    invoke-static {v0, v12, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    if-eqz v5, :cond_0

    .line 79
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 80
    :catch_4
    move-exception v4

    .line 81
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v5, :cond_4

    .line 79
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 82
    :cond_4
    :goto_6
    throw v12

    .line 80
    :catch_5
    move-exception v4

    .line 81
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 90
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v3       #buffer:[C
    .restart local v6       #fileReader:Ljava/io/FileReader;
    .restart local v8       #numRead:I
    :cond_5
    const-string v12, "reboot(parent:sh): Restarting system."

    invoke-virtual {v9, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 91
    .local v7, iResetCommand:I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_6

    .line 92
    const-string v12, "BugReportBootCompleteReceiver"

    const-string v13, "Receive a normal reset case"

    invoke-static {v12, v13}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_6
    const-string v11, "Restarting system with command \'"

    .line 96
    .local v11, sRestartCommand:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 97
    const/4 v12, -0x1

    if-eq v7, v12, :cond_27

    .line 98
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v7

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, sKlog2:Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, bNormalReset:Z
    if-nez v1, :cond_7

    const-string v12, "\'\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    :cond_7
    const/4 v1, 0x1

    .line 106
    :goto_7
    if-nez v1, :cond_8

    const-string v12, "\'oem-00\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_8
    const/4 v1, 0x1

    .line 107
    :goto_8
    if-nez v1, :cond_9

    const-string v12, "\'oem-11\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    :cond_9
    const/4 v1, 0x1

    .line 108
    :goto_9
    if-nez v1, :cond_a

    const-string v12, "\'oem-1F\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    :cond_a
    const/4 v1, 0x1

    .line 109
    :goto_a
    if-nez v1, :cond_b

    const-string v12, "\'oem-33\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    :cond_b
    const/4 v1, 0x1

    .line 110
    :goto_b
    if-nez v1, :cond_c

    const-string v12, "\'oem-42\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    :cond_c
    const/4 v1, 0x1

    .line 111
    :goto_c
    if-nez v1, :cond_d

    const-string v12, "\'oem-74\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :cond_d
    const/4 v1, 0x1

    .line 112
    :goto_d
    if-nez v1, :cond_e

    const-string v12, "\'oem-76\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_e
    const/4 v1, 0x1

    .line 113
    :goto_e
    if-nez v1, :cond_f

    const-string v12, "\'oem-77\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    :cond_f
    const/4 v1, 0x1

    .line 114
    :goto_f
    if-nez v1, :cond_10

    const-string v12, "\'oem-78\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_10
    const/4 v1, 0x1

    .line 115
    :goto_10
    if-nez v1, :cond_11

    const-string v12, "\'oem-88\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    :cond_11
    const/4 v1, 0x1

    .line 116
    :goto_11
    if-nez v1, :cond_12

    const-string v12, "\'bootloader\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    :cond_12
    const/4 v1, 0x1

    .line 117
    :goto_12
    if-nez v1, :cond_13

    const-string v12, "\'recovery\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    :cond_13
    const/4 v1, 0x1

    .line 118
    :goto_13
    if-nez v1, :cond_14

    const-string v12, "\'eraseflash\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    :cond_14
    const/4 v1, 0x1

    .line 119
    :goto_14
    if-nez v1, :cond_15

    const-string v12, "\'force-hard\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25

    :cond_15
    const/4 v1, 0x1

    .line 121
    :goto_15
    if-nez v1, :cond_16

    const-string v12, "\'off-charge\'"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    :cond_16
    const/4 v1, 0x1

    .line 122
    :goto_16
    if-eqz v1, :cond_27

    .line 123
    const-string v12, "BugReportBootCompleteReceiver"

    const-string v13, "Receive a normal reset case"

    invoke-static {v12, v13}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 106
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 107
    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 108
    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 109
    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 110
    :cond_1c
    const/4 v1, 0x0

    goto/16 :goto_c

    .line 111
    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_d

    .line 112
    :cond_1e
    const/4 v1, 0x0

    goto :goto_e

    .line 113
    :cond_1f
    const/4 v1, 0x0

    goto :goto_f

    .line 114
    :cond_20
    const/4 v1, 0x0

    goto :goto_10

    .line 115
    :cond_21
    const/4 v1, 0x0

    goto :goto_11

    .line 116
    :cond_22
    const/4 v1, 0x0

    goto :goto_12

    .line 117
    :cond_23
    const/4 v1, 0x0

    goto :goto_13

    .line 118
    :cond_24
    const/4 v1, 0x0

    goto :goto_14

    .line 119
    :cond_25
    const/4 v1, 0x0

    goto :goto_15

    .line 121
    :cond_26
    const/4 v1, 0x0

    goto :goto_16

    .line 130
    .end local v1           #bNormalReset:Z
    .end local v10           #sKlog2:Ljava/lang/String;
    :cond_27
    invoke-direct {p0, v9}, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->isShutdownLog(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 131
    const-string v12, "BugReportBootCompleteReceiver"

    const-string v13, "Normal shut down"

    invoke-static {v12, v13}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 136
    :cond_28
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.android.updater.NOTIFY_SYSTEM_CRASH"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, bi:Landroid/content/Intent;
    iget-object v12, p0, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;->context:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 77
    .end local v2           #bi:Landroid/content/Intent;
    .end local v3           #buffer:[C
    .end local v7           #iResetCommand:I
    .end local v8           #numRead:I
    .end local v11           #sRestartCommand:Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_5

    .line 73
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .line 71
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_3
.end method
