.class Lcom/google/android/backup/BackupTransportService$1;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "BackupTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/BackupTransportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastRestoreApp:Ljava/lang/String;

.field private mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

.field private mRestoreApp:Ljava/lang/String;

.field private mRestoreData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

.field final synthetic this$0:Lcom/google/android/backup/BackupTransportService;


# direct methods
.method constructor <init>(Lcom/google/android/backup/BackupTransportService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-object p1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    .line 254
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    .line 257
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 258
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    return-void
.end method

.method private getRestoreDataLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "lock not held"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "restore was never started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 589
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/android/backup/RestoreRequestProcessor;->getApplicationData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    invoke-virtual {v1}, Lcom/google/android/backup/RestoreRequestProcessor;->nextRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 592
    .local v0, req:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_3

    .line 599
    .end local v0           #req:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    return-void

    .line 594
    .restart local v0       #req:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_3
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$800(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 595
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$800(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    #calls: Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v2, v0, v3}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/backup/RestoreRequestProcessor;->handleResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 596
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/android/backup/RestoreRequestProcessor;->getApplicationData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    goto :goto_0
.end method

.method private initRequestGeneratorLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 564
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "lock not held"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    if-eqz v3, :cond_1

    .line 575
    :goto_0
    return v2

    .line 567
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 568
    .local v0, now:J
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 569
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;
    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_2

    .line 570
    const-string v2, "BackupTransportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not ready for backup request right now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v2, 0x0

    goto :goto_0

    .line 574
    :cond_2
    new-instance v3, Lcom/google/android/backup/BackupRequestGenerator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/backup/BackupRequestGenerator;-><init>(J)V

    iput-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 9
    .parameter "packageInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 406
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->initRequestGeneratorLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 423
    :goto_0
    monitor-exit p0

    return v5

    .line 407
    :cond_0
    const/4 v0, 0x0

    .line 408
    .local v0, apiKey:Ljava/lang/String;
    :try_start_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    .local v4, packageName:Ljava/lang/String;
    :try_start_2
    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v7}, Lcom/google/android/backup/BackupTransportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 412
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.google.android.backup.api_key"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_1
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v3, v5

    .line 415
    .local v3, isSystem:Z
    :goto_1
    if-nez v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 416
    :cond_2
    const-string v5, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IGNORING WIPE without API key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v6

    .line 417
    goto :goto_0

    .end local v3           #isSystem:Z
    :cond_3
    move v3, v6

    .line 413
    goto :goto_1

    .line 419
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 420
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v5, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package in wipe request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/backup/BackupRequestGenerator;->getApplication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/backup/BackupRequestGenerator$Application;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/google/android/backup/BackupRequestGenerator$Application;->deleteAll(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v6

    .line 423
    goto :goto_0

    .line 406
    .end local v0           #apiKey:Ljava/lang/String;
    .end local v4           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.backup.SetBackupAccountActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;

    move-result-object v0

    .line 268
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v1}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v1}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized finishBackup()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 428
    const/16 v1, -0xfd

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 429
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v2}, Lcom/google/android/backup/BackupRequestGenerator;->makeFinalRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    #calls: Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v1, v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 445
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 453
    :try_start_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 454
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 456
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    const/4 v3, -0x1

    #setter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$502(Lcom/google/android/backup/BackupTransportService;I)I

    .line 457
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :try_start_3
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server policy rejection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 441
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v2}, Lcom/google/android/backup/BackupRequestGenerator;->makeAbortRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    #calls: Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v1, v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 446
    .end local v0           #e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :try_start_4
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup server requires initialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 448
    const/4 v1, 0x2

    .line 453
    :try_start_5
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 454
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 456
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    const/4 v3, -0x1

    #setter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$502(Lcom/google/android/backup/BackupTransportService;I)I

    .line 457
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 427
    .end local v0           #e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 449
    :catch_2
    move-exception v0

    .line 450
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending final backup to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 451
    const/4 v1, 0x1

    .line 453
    :try_start_7
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 454
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 456
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    const/4 v3, -0x1

    #setter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$502(Lcom/google/android/backup/BackupTransportService;I)I

    .line 457
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    goto/16 :goto_1

    .line 453
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 454
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 456
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    const/4 v3, -0x1

    #setter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$502(Lcom/google/android/backup/BackupTransportService;I)I

    .line 457
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized finishRestore()V
    .locals 1

    .prologue
    .line 553
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 5

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$800(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 464
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {}, Lcom/google/android/backup/RestoreRequestProcessor;->makeDeviceRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$800(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v4

    #calls: Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v2, v3, v4}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/backup/RestoreRequestProcessor;->processDeviceResponse(Lcom/google/common/io/protocol/ProtoBuf;)[Landroid/app/backup/RestoreSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 470
    :goto_0
    monitor-exit p0

    return-object v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "BackupTransportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting device list from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    const/4 v1, 0x0

    goto :goto_0

    .line 463
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCurrentRestoreSet()J
    .locals 4

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v0}, Lcom/google/android/backup/BackupTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .parameter "outFd"

    .prologue
    const/4 v3, 0x1

    .line 531
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "no package to restore"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 534
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 535
    .local v0, data:Landroid/app/backup/BackupDataOutput;
    new-instance v2, Lcom/google/android/backup/BackupDataReassembler;

    invoke-direct {v2, v0}, Lcom/google/android/backup/BackupDataReassembler;-><init>(Landroid/app/backup/BackupDataOutput;)V

    .line 536
    .local v2, reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :goto_0
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Lcom/google/android/backup/BackupDataReassembler;->writeSomeData(Ljava/util/Map;)V

    .line 538
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->getRestoreDataLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/backup/BackupDataReassembler$InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 541
    .end local v0           #data:Landroid/app/backup/BackupDataOutput;
    .end local v2           #reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "BackupTransportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting restore data from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    monitor-exit p0

    return v3

    .line 540
    .restart local v0       #data:Landroid/app/backup/BackupDataOutput;
    .restart local v2       #reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 545
    .end local v0           #data:Landroid/app/backup/BackupDataOutput;
    .end local v2           #reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :catch_1
    move-exception v1

    .line 546
    .local v1, e:Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;
    :try_start_3
    const-string v4, "BackupTransportService"

    const-string v5, "Error in restore data from server"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized initializeDevice()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 314
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->initRequestGeneratorLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 340
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 316
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v4}, Lcom/google/android/backup/BackupRequestGenerator;->initializeDevice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, isBackupEnabled:Z
    :try_start_2
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->getBackupManager()Landroid/app/backup/IBackupManager;
    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$300(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 327
    if-nez v1, :cond_2

    .line 328
    :try_start_3
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->cancelSetBackupAccountNotification()V
    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$400(Lcom/google/android/backup/BackupTransportService;)V

    move v2, v3

    .line 329
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BackupTransportService"

    const-string v4, "Cannot get BackupManager isBackupEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 314
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #isBackupEnabled:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 333
    .restart local v1       #isBackupEnabled:Z
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 334
    goto :goto_0
.end method

.method public declared-synchronized nextRestorePackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    if-nez v2, :cond_0

    .line 511
    const-string v2, "BackupTransportService"

    const-string v3, "Restore processing aborted, no more packages"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_0
    monitor-exit p0

    return-object v1

    .line 517
    :cond_0
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->getRestoreDataLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "BackupTransportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting restore data from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 520
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    .line 522
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 11
    .parameter "pkg"
    .parameter "inFd"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    .local v5, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 348
    .local v0, apiKey:Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v8}, Lcom/google/android/backup/BackupTransportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 351
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.google.android.backup.api_key"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_0
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v4, v7

    .line 354
    .local v4, isSystem:Z
    :goto_0
    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 355
    :cond_1
    const-string v8, "BackupTransportService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IGNORING BACKUP DATA without API key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #isSystem:Z
    :goto_1
    monitor-exit p0

    return v6

    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v4, v6

    .line 352
    goto :goto_0

    .line 358
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 359
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v8, "BackupTransportService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package in backup request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v9, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2
    #setter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v9, v8}, Lcom/google/android/backup/BackupTransportService;->access$502(Lcom/google/android/backup/BackupTransportService;I)I

    .line 368
    const/16 v8, -0xfd

    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 369
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mActiveUid:I
    invoke-static {v8}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;)I

    move-result v8

    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->initRequestGeneratorLocked()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-nez v8, :cond_5

    .line 400
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 401
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v6, v7

    goto :goto_1

    .line 365
    :cond_4
    const/16 v8, 0x3e8

    goto :goto_2

    .line 375
    :cond_5
    :try_start_5
    new-instance v3, Lcom/google/android/backup/BackupDataFragmenter;

    new-instance v8, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v9, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v9, v5, v0}, Lcom/google/android/backup/BackupRequestGenerator;->getApplication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/backup/BackupRequestGenerator$Application;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/google/android/backup/BackupDataFragmenter;-><init>(Landroid/app/backup/BackupDataInput;Lcom/google/android/backup/BackupRequestGenerator$Application;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 379
    .local v3, fragmenter:Lcom/google/android/backup/BackupDataFragmenter;
    :cond_6
    :goto_3
    const/16 v8, 0x5000

    :try_start_6
    invoke-virtual {v3, v8}, Lcom/google/android/backup/BackupDataFragmenter;->readSomeData(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 380
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v8}, Lcom/google/android/backup/BackupRequestGenerator;->approximateSize()I

    move-result v8

    const v9, 0xc800

    if-lt v8, v9, :cond_6

    .line 381
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v9, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v9}, Lcom/google/android/backup/BackupRequestGenerator;->makePartialRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v10}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v10

    #calls: Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v8, v9, v10}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 382
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v8}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 385
    :catch_1
    move-exception v2

    .line 386
    .local v2, e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :try_start_7
    const-string v8, "BackupTransportService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server policy rejection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v8}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 389
    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v9, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v9}, Lcom/google/android/backup/BackupRequestGenerator;->makeAbortRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v10}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v10

    #calls: Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v8, v9, v10}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 400
    .end local v2           #e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :cond_7
    :try_start_8
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 401
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 344
    .end local v0           #apiKey:Ljava/lang/String;
    .end local v3           #fragmenter:Lcom/google/android/backup/BackupDataFragmenter;
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 393
    .restart local v0       #apiKey:Ljava/lang/String;
    .restart local v5       #packageName:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 394
    .local v2, e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :try_start_9
    const-string v6, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uninitialized device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 395
    const/4 v6, 0x2

    .line 400
    :try_start_a
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 401
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 396
    .end local v2           #e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :catch_3
    move-exception v2

    .line 397
    .local v2, e:Ljava/io/IOException;
    :try_start_b
    const-string v6, "BackupTransportService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error sending partial backup to server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 400
    :try_start_c
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 401
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    move v6, v7

    goto/16 :goto_1

    .line 400
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 401
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public declared-synchronized requestBackupTime()J
    .locals 6

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 304
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;
    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v0

    .line 306
    .local v0, next:J
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 309
    .end local v0           #next:J
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    const-wide/32 v2, 0x240c8400

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 8
    .parameter "token"
    .parameter "packages"

    .prologue
    .line 479
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 480
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 481
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 482
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    array-length v5, p3

    new-array v0, v5, [Ljava/lang/String;

    .line 486
    .local v0, apps:[Ljava/lang/String;
    const/4 v3, -0x1

    .line 487
    .local v3, settingsIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p3

    if-ge v2, v5, :cond_1

    .line 488
    aget-object v5, p3, v2

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 489
    const-string v5, "com.android.providers.settings"

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    move v3, v2

    .line 487
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_1
    const/4 v5, -0x1

    if-le v3, v5, :cond_2

    .line 495
    aget-object v4, v0, v3

    .line 496
    .local v4, swap:Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    aput-object v5, v0, v3

    .line 497
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aput-object v4, v0, v5

    .line 499
    .end local v4           #swap:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/google/android/backup/RestoreRequestProcessor;

    const v6, 0xc800

    invoke-direct {v5, p1, p2, v0, v6}, Lcom/google/android/backup/RestoreRequestProcessor;-><init>(J[Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 501
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->getRestoreDataLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    const/4 v5, 0x0

    .line 505
    .end local v0           #apps:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #settingsIndex:I
    :goto_1
    monitor-exit p0

    return v5

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting restore data from server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    const/4 v5, 0x1

    goto :goto_1

    .line 479
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "com.google.android.backup.BackupTransportService"

    return-object v0
.end method
