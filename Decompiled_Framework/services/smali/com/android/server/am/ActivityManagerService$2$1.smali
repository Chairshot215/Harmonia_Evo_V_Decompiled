.class Lcom/android/server/am/ActivityManagerService$2$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$2$1;->getPriority()I

    move-result v27

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService$2$1;->setPriority(I)V

    new-instance v23, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v31, Ljava/io/StringWriter;

    invoke-direct/range {v31 .. v31}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    new-instance v8, Ljava/io/PrintWriter;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    new-array v6, v2, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Low on memory -- "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const-string v5, "  "

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "procrank"

    aput-object v7, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v32

    new-instance v22, Ljava/io/InputStreamReader;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v24, Ljava/io/BufferedReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;->setPriority(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Z

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/ActivityManagerService;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object v14, v6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v12, "lowmem"

    const/4 v13, 0x0

    const-string v14, "system_server"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    const-string v2, "ActivityManager"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, v2, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v2, v11, v28

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v28

    iput-wide v0, v2, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method
