.class Lcom/android/server/BatteryService$5;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$entryTime:J

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    iput-object p3, p0, Lcom/android/server/BatteryService$5;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/BatteryService$5;->val$logFile:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/BatteryService$5;->val$dbox:Landroid/os/DropBoxManager;

    iput-wide p6, p0, Lcom/android/server/BatteryService$5;->val$entryTime:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/HTC_BATT_LOG@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dbox_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$5;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n----- KERNEL -----\n"

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v9, v3}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    const-string v0, "\n----- CMDLINE -----\n"

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/cmdline"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #calls: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v9, v3}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$5;->val$logFile:Ljava/io/File;

    if-eqz v0, :cond_0

    const-string v0, "\n----- LOG FILE -----\n"

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$5;->val$logFile:Ljava/io/File;

    #calls: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V
    invoke-static {v0, v1, v9}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$5;->val$dbox:Landroid/os/DropBoxManager;

    const-string v1, "HTC_BATT_LOG"

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/BatteryService$5;->val$entryTime:J

    invoke-virtual/range {v0 .. v5}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending POWERREPORT+++"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.POWERREPORT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "fromDropBox"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tag"

    const-string v1, "HTC_BATT_LOG"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "time"

    iget-wide v3, p0, Lcom/android/server/BatteryService$5;->val$entryTime:J

    invoke-virtual {v6, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "msg"

    const-string v1, "Collect htc power logs"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending POWERREPORT---"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v8, v9

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v8, v9

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in dumping error information"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_4

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_5

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto :goto_2

    :catch_4
    move-exception v7

    move-object v8, v9

    goto :goto_1
.end method
