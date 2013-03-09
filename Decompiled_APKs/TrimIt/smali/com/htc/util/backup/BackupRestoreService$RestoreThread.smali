.class Lcom/htc/util/backup/BackupRestoreService$RestoreThread;
.super Ljava/lang/Thread;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/backup/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/backup/BackupRestoreService;


# direct methods
.method private constructor <init>(Lcom/htc/util/backup/BackupRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/backup/BackupRestoreService;Lcom/htc/util/backup/BackupRestoreService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;-><init>(Lcom/htc/util/backup/BackupRestoreService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 549
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "Start Restore Processing..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v4, 0x0

    .line 551
    .local v4, ifSuccess:Z
    const/16 v2, -0x2328

    .line 555
    .local v2, failReason:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$400(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, folderSplit:[Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    const/4 v10, 0x3

    aget-object v10, v3, v10

    #setter for: Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/htc/util/backup/BackupRestoreService;->access$1102(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RestoreModel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->restoreModel:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/util/backup/BackupRestoreService;->access$1100(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$400(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v8, workingFolder:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, subFolder:[Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    #setter for: Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/htc/util/backup/BackupRestoreService;->access$1202(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RestoreVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/util/backup/BackupRestoreService;->access$1200(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/backup/BackupRestoreService;->access$400(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->restoreVersion:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/backup/BackupRestoreService;->access$1200(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, restoreRootStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RestoreRootFolder="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {v9}, Lcom/htc/util/backup/BackupRestoreService;->initRestore()V

    .line 570
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->restoreFromSdcard(Ljava/lang/String;)V
    invoke-static {v9, v6}, Lcom/htc/util/backup/BackupRestoreService;->access$1300(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V

    .line 572
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {v9}, Lcom/htc/util/backup/BackupRestoreService;->finishRestore()V
    :try_end_0
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 574
    const/4 v4, 0x1

    .line 587
    .end local v3           #folderSplit:[Ljava/lang/String;
    .end local v6           #restoreRootStr:Ljava/lang/String;
    .end local v7           #subFolder:[Ljava/lang/String;
    .end local v8           #workingFolder:Ljava/io/File;
    :goto_0
    if-eqz v4, :cond_0

    .line 588
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$1000(Lcom/htc/util/backup/BackupRestoreService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 597
    :goto_1
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "End Restore Processing..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, ex:Lcom/htc/util/backup/BackupRestoreException;
    const/4 v4, 0x0

    .line 577
    invoke-virtual {v1}, Lcom/htc/util/backup/BackupRestoreException;->getReasonCode()I

    move-result v2

    .line 578
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "Backup Fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->getExceptionStack(Ljava/lang/Exception;)Ljava/lang/String;
    invoke-static {v10, v1}, Lcom/htc/util/backup/BackupRestoreService;->access$900(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    .end local v1           #ex:Lcom/htc/util/backup/BackupRestoreException;
    :catch_1
    move-exception v1

    .line 581
    .local v1, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 582
    const/16 v2, -0x2328

    .line 583
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "Backup Fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->getExceptionStack(Ljava/lang/Exception;)Ljava/lang/String;
    invoke-static {v10, v1}, Lcom/htc/util/backup/BackupRestoreService;->access$900(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 591
    .local v5, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 592
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "RETURN_CODE"

    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 594
    iput v13, v5, Landroid/os/Message;->what:I

    .line 595
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$RestoreThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$1000(Lcom/htc/util/backup/BackupRestoreService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
