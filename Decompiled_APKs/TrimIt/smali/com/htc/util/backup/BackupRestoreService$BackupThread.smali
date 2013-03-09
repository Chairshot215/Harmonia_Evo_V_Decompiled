.class Lcom/htc/util/backup/BackupRestoreService$BackupThread;
.super Ljava/lang/Thread;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/backup/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/backup/BackupRestoreService;


# direct methods
.method private constructor <init>(Lcom/htc/util/backup/BackupRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/backup/BackupRestoreService;Lcom/htc/util/backup/BackupRestoreService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/htc/util/backup/BackupRestoreService$BackupThread;-><init>(Lcom/htc/util/backup/BackupRestoreService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 253
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "Start Backup Processing..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v6, 0x0

    .line 255
    .local v6, ifSuccess:Z
    const/16 v5, -0x2328

    .line 257
    .local v5, failReason:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {v9}, Lcom/htc/util/backup/BackupRestoreService;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, dataFolderStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->mWorkingFolder:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$400(Lcom/htc/util/backup/BackupRestoreService;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, backupRootStr:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, bkRootFolder:Ljava/io/File;
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->deleteFolder(Ljava/lang/String;)V
    invoke-static {v9, v0}, Lcom/htc/util/backup/BackupRestoreService;->access$500(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 266
    .local v7, makeOk:Z
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Make Dir: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez v7, :cond_0

    .line 269
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create Folder Fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    .end local v0           #backupRootStr:Ljava/lang/String;
    .end local v1           #bkRootFolder:Ljava/io/File;
    .end local v3           #dataFolderStr:Ljava/lang/String;
    .end local v7           #makeOk:Z
    :catch_0
    move-exception v4

    .line 289
    .local v4, ex:Lcom/htc/util/backup/BackupRestoreException;
    const/4 v6, 0x0

    .line 290
    invoke-virtual {v4}, Lcom/htc/util/backup/BackupRestoreException;->getReasonCode()I

    move-result v5

    .line 291
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "Backup Fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->getExceptionStack(Ljava/lang/Exception;)Ljava/lang/String;
    invoke-static {v10, v4}, Lcom/htc/util/backup/BackupRestoreService;->access$900(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v4           #ex:Lcom/htc/util/backup/BackupRestoreException;
    :goto_0
    if-eqz v6, :cond_2

    .line 301
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$1000(Lcom/htc/util/backup/BackupRestoreService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    :goto_1
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "End Backup Processing..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 272
    .restart local v0       #backupRootStr:Ljava/lang/String;
    .restart local v1       #bkRootFolder:Ljava/io/File;
    .restart local v3       #dataFolderStr:Ljava/lang/String;
    .restart local v7       #makeOk:Z
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {v9}, Lcom/htc/util/backup/BackupRestoreService;->initBackup()V

    .line 274
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-boolean v9, v9, Lcom/htc/util/backup/BackupRestoreService;->mBackupWholeDataPartition:Z

    if-eqz v9, :cond_1

    .line 275
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->backupToSdcard(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v0, v3}, Lcom/htc/util/backup/BackupRestoreService;->access$600(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->copyExtraFolder(Ljava/lang/String;)V
    invoke-static {v9, v0}, Lcom/htc/util/backup/BackupRestoreService;->access$700(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V

    .line 280
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->copyExtraFile(Ljava/lang/String;)V
    invoke-static {v9, v0}, Lcom/htc/util/backup/BackupRestoreService;->access$800(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/String;)V

    .line 282
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {v9}, Lcom/htc/util/backup/BackupRestoreService;->finishBackup()V
    :try_end_1
    .catch Lcom/htc/util/backup/BackupRestoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    const/4 v6, 0x1

    goto :goto_0

    .line 293
    .end local v0           #backupRootStr:Ljava/lang/String;
    .end local v1           #bkRootFolder:Ljava/io/File;
    .end local v3           #dataFolderStr:Ljava/lang/String;
    .end local v7           #makeOk:Z
    :catch_1
    move-exception v4

    .line 294
    .local v4, ex:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 295
    const/16 v5, -0x2328

    .line 296
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    const-string v10, "Backup Fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v9, v9, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->getExceptionStack(Ljava/lang/Exception;)Ljava/lang/String;
    invoke-static {v10, v4}, Lcom/htc/util/backup/BackupRestoreService;->access$900(Lcom/htc/util/backup/BackupRestoreService;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_2
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 304
    .local v8, msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v2, bundle:Landroid/os/Bundle;
    const-string v9, "RETURN_CODE"

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    invoke-virtual {v8, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    const/4 v9, 0x1

    iput v9, v8, Landroid/os/Message;->what:I

    .line 308
    iget-object v9, p0, Lcom/htc/util/backup/BackupRestoreService$BackupThread;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #getter for: Lcom/htc/util/backup/BackupRestoreService;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/util/backup/BackupRestoreService;->access$1000(Lcom/htc/util/backup/BackupRestoreService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
