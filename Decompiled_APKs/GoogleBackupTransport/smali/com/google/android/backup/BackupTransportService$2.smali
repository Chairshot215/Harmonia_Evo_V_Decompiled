.class Lcom/google/android/backup/BackupTransportService$2;
.super Landroid/content/BroadcastReceiver;
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
.field final synthetic this$0:Lcom/google/android/backup/BackupTransportService;


# direct methods
.method constructor <init>(Lcom/google/android/backup/BackupTransportService;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 665
    const-string v5, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 667
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v5}, Lcom/google/android/backup/BackupTransportService;->clearMoratoriums()V

    .line 668
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;

    .line 674
    :cond_0
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/google/android/backup/BackupTransportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 675
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-nez v5, :cond_2

    .line 677
    :cond_1
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    .line 692
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 693
    .local v3, now:J
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;
    invoke-static {v6}, Lcom/google/android/backup/BackupTransportService;->access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_5

    .line 708
    :goto_1
    return-void

    .line 678
    .end local v3           #now:J
    :cond_2
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-nez v5, :cond_3

    .line 680
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto :goto_0

    .line 682
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 683
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 685
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto :goto_0

    .line 688
    :cond_4
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto :goto_0

    .line 697
    .end local v2           #ni:Landroid/net/NetworkInfo;
    .restart local v3       #now:J
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->getBackupManager()Landroid/app/backup/IBackupManager;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$300(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    if-nez v5, :cond_6

    .line 698
    const-string v5, "BackupTransportService"

    const-string v6, "No BackupManager service available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 704
    :catch_0
    move-exception v1

    .line 705
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "BackupTransportService"

    const-string v6, "Error triggering backup"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 701
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v5, v6, v7}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 702
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$900(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
