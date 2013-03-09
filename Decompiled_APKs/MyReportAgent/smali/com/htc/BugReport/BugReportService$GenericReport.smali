.class Lcom/htc/BugReport/BugReportService$GenericReport;
.super Ljava/lang/Object;
.source "BugReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/BugReport/BugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericReport"
.end annotation


# instance fields
.field final file:Ljava/lang/String;

.field fromDropBox:Z

.field private final mUniqueMsg:Ljava/lang/String;

.field final msg:Ljava/lang/String;

.field final position:Ljava/lang/String;

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/BugReport/BugReportService;

.field time:J


# direct methods
.method constructor <init>(Lcom/htc/BugReport/BugReportService;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter "intent"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 385
    iput-object p1, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->this$0:Lcom/htc/BugReport/BugReportService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-wide v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->time:J

    .line 381
    iput-boolean v1, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->fromDropBox:Z

    .line 386
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->tag:Ljava/lang/String;

    .line 387
    const-string v0, "msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->msg:Ljava/lang/String;

    .line 388
    const-string v0, "fromDropBox"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->fromDropBox:Z

    .line 389
    iget-boolean v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->fromDropBox:Z

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "time"

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->time:J

    .line 391
    :cond_0
    const-string v0, "file"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->file:Ljava/lang/String;

    .line 392
    const-string v0, "radio"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->position:Ljava/lang/String;

    .line 393
    const-string v0, "unique_msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->mUniqueMsg:Ljava/lang/String;

    .line 394
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 10

    .prologue
    .line 401
    monitor-enter p0

    const/4 v5, 0x0

    .line 402
    .local v5, istream:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 404
    .local v7, logEntry:Lcom/htc/BugReport/io/LogEntry;
    :try_start_0
    iget-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->file:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 405
    new-instance v8, Lcom/htc/BugReport/io/LogEntry;

    iget-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->file:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/htc/BugReport/io/LogEntry;-><init>(Ljava/lang/String;)V

    .end local v7           #logEntry:Lcom/htc/BugReport/io/LogEntry;
    .local v8, logEntry:Lcom/htc/BugReport/io/LogEntry;
    move-object v7, v8

    .line 410
    .end local v8           #logEntry:Lcom/htc/BugReport/io/LogEntry;
    .restart local v7       #logEntry:Lcom/htc/BugReport/io/LogEntry;
    :cond_0
    :goto_0
    if-eqz v7, :cond_3

    .line 411
    invoke-virtual {v7}, Lcom/htc/BugReport/io/LogEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 412
    if-eqz v5, :cond_2

    .line 414
    iget-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->this$0:Lcom/htc/BugReport/BugReportService;

    iget-object v1, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->position:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->mUniqueMsg:Ljava/lang/String;

    #calls: Lcom/htc/BugReport/BugReportService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    invoke-static/range {v0 .. v5}, Lcom/htc/BugReport/BugReportService;->access$000(Lcom/htc/BugReport/BugReportService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 416
    invoke-virtual {v7}, Lcom/htc/BugReport/io/LogEntry;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    :goto_1
    monitor-exit p0

    return-void

    .line 406
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->fromDropBox:Z

    if-eqz v0, :cond_0

    .line 407
    new-instance v8, Lcom/htc/BugReport/io/LogEntry;

    iget-object v0, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->tag:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->time:J

    iget-object v3, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->this$0:Lcom/htc/BugReport/BugReportService;

    invoke-virtual {v3}, Lcom/htc/BugReport/BugReportService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/htc/BugReport/io/LogEntry;-><init>(Ljava/lang/String;JLandroid/content/Context;)V

    .end local v7           #logEntry:Lcom/htc/BugReport/io/LogEntry;
    .restart local v8       #logEntry:Lcom/htc/BugReport/io/LogEntry;
    move-object v7, v8

    .end local v8           #logEntry:Lcom/htc/BugReport/io/LogEntry;
    .restart local v7       #logEntry:Lcom/htc/BugReport/io/LogEntry;
    goto :goto_0

    .line 419
    :cond_2
    const-string v0, "BugReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "istream is null, tag= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file path= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 425
    :catch_0
    move-exception v6

    .line 426
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 401
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :cond_3
    :try_start_3
    const-string v0, "BugReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logEntry is null, tag= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file path= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/BugReport/BugReportService$GenericReport;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 428
    :catch_1
    move-exception v9

    .line 429
    .local v9, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v0, "BugReportService"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/BugReport/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method
