.class Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
.super Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonRequestController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "syncManager"
    .parameter "name"
    .parameter "syncSrcType"

    .prologue
    .line 958
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 959
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;I)V

    .line 960
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    .line 961
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->setName(Ljava/lang/String;)V

    .line 962
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 965
    const/4 v4, 0x0

    .line 966
    .local v4, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/4 v10, 0x0

    .line 967
    .local v10, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    const/4 v8, 0x0

    .line 968
    .local v8, stopRunning:Z
    const/4 v0, 0x0

    .line 969
    .local v0, bNeedRetry:Z
    const/4 v9, 0x1

    .line 970
    .local v9, syncResult:I
    const/4 v3, 0x0

    .line 971
    .local v3, errorCode:I
    :goto_0
    iget-boolean v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    if-nez v11, :cond_2

    .line 972
    const/4 v0, 0x0

    .line 973
    const/4 v9, 0x1

    .line 974
    const/4 v3, 0x0

    .line 976
    :try_start_0
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/eassvc/core/EASRequest;

    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 977
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 978
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    invoke-virtual {v4, v11}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getSyncSource(I)Lcom/htc/android/mail/eassvc/core/SyncSource;

    move-result-object v10

    .line 979
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->resetCancelFlag()V

    .line 980
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->beginSync()V

    .line 982
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_1

    .line 983
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncStartAfter(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 985
    :cond_1
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isPasswordSufficient()Z

    move-result v11

    if-nez v11, :cond_3

    .line 986
    new-instance v11, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v12, 0x400

    const-string v13, "Device password expiration."

    invoke-direct {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1009
    :catch_0
    move-exception v2

    .line 1010
    .local v2, err:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1011
    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " get a OutOfMemoryError!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1012
    const/4 v9, 0x1

    .line 1013
    const/16 v3, 0x32a

    .line 1033
    if-eqz v8, :cond_25

    .line 1078
    .end local v2           #err:Ljava/lang/OutOfMemoryError;
    :cond_2
    return-void

    .line 988
    :cond_3
    :try_start_2
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->checkPolicySufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 990
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    packed-switch v11, :pswitch_data_0

    .line 1006
    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": no mapping command"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1033
    :goto_1
    if-nez v8, :cond_2

    .line 1036
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_4
    if-nez v9, :cond_34

    .line 1049
    :goto_2
    if-eqz v0, :cond_5

    .line 1050
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v12, 0x5

    iput v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_5
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_6
    if-nez v0, :cond_7

    .line 1059
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v11, :cond_7

    .line 1060
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_7
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v11, 0x0

    :try_start_3
    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1068
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_8

    .line 1070
    :try_start_4
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 1075
    :cond_8
    :goto_3
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->resetCancelFlag()V

    goto/16 :goto_0

    .line 992
    :pswitch_0
    :try_start_5
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 993
    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->LOCK:Ljava/lang/Object;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 994
    :try_start_6
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v6, v11, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    .line 995
    .local v6, folderSynckey:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 996
    :cond_9
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v11, v13}, Lcom/htc/android/mail/eassvc/core/SyncManager;->updateEASFolderHierarchy(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)I

    .line 998
    :cond_a
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 999
    :try_start_7
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setCheckPoint()V

    .line 1001
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-nez v11, :cond_f

    const/4 v7, 0x0

    .line 1002
    .local v7, isFromDirectpush:Z
    :goto_4
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v12, v12, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    invoke-virtual {v11, v4, v12, v7}, Lcom/htc/android/mail/eassvc/core/SyncManager;->doSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;IZ)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1003
    const/4 v9, 0x0

    .line 1004
    goto/16 :goto_1

    .line 998
    .end local v6           #folderSynckey:Ljava/lang/String;
    .end local v7           #isFromDirectpush:Z
    :catchall_0
    move-exception v11

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1014
    :catch_1
    move-exception v1

    .line 1015
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":stop running"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1016
    const/4 v8, 0x1

    .line 1033
    if-nez v8, :cond_2

    .line 1036
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_b
    if-nez v9, :cond_2c

    .line 1049
    :goto_5
    if-eqz v0, :cond_c

    .line 1050
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v12, 0x5

    iput v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_c
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_d
    if-nez v0, :cond_e

    .line 1059
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v11, :cond_e

    .line 1060
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_e
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v11, 0x0

    :try_start_b
    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1068
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_8

    .line 1070
    :try_start_c
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_3

    .line 1071
    :catch_2
    move-exception v1

    .line 1072
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1001
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #folderSynckey:Ljava/lang/String;
    :cond_f
    :try_start_d
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v12, "extra.isDirectpush"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move-result v7

    goto/16 :goto_4

    .line 1017
    .end local v6           #folderSynckey:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 1018
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_e
    const-string v11, "EASRequestController"

    invoke-static {v11, v4, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 1019
    if-nez v4, :cond_14

    .line 1020
    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":Error! ExchangeSyncSources is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1033
    if-nez v8, :cond_2

    .line 1036
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v11

    if-nez v11, :cond_10

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_10
    if-nez v9, :cond_2e

    .line 1049
    :goto_6
    if-eqz v0, :cond_11

    .line 1050
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v12, 0x5

    iput v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_11
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_12
    if-nez v0, :cond_13

    .line 1059
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v11, :cond_13

    .line 1060
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_13
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v11, 0x0

    :try_start_f
    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 1068
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_8

    .line 1070
    :try_start_10
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_3

    .line 1071
    :catch_4
    move-exception v1

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1023
    :cond_14
    if-nez v10, :cond_19

    .line 1024
    :try_start_11
    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":Error! syncSource is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1033
    if-nez v8, :cond_2

    .line 1036
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v11

    if-nez v11, :cond_15

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_15
    if-nez v9, :cond_30

    .line 1049
    :goto_7
    if-eqz v0, :cond_16

    .line 1050
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v12, 0x5

    iput v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_16
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_17

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_17
    if-nez v0, :cond_18

    .line 1059
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v11, :cond_18

    .line 1060
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_18
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v11, 0x0

    :try_start_12
    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1068
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_8

    .line 1070
    :try_start_13
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_3

    .line 1071
    :catch_5
    move-exception v1

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1028
    :cond_19
    :try_start_14
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v11, v1, p0, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->handleException(Ljava/lang/Exception;Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;Lcom/htc/android/mail/eassvc/core/SyncSource;)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-result-object v5

    .line 1029
    .local v5, exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    iget v3, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    .line 1030
    iget v9, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    .line 1031
    iget-boolean v0, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1033
    if-nez v8, :cond_2

    .line 1036
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_1a
    if-nez v9, :cond_32

    .line 1049
    :goto_8
    if-eqz v0, :cond_1b

    .line 1050
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v12, 0x5

    iput v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_1b
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_1c

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_1c
    if-nez v0, :cond_1d

    .line 1059
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v11, :cond_1d

    .line 1060
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_1d
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v11, 0x0

    :try_start_15
    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1068
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_8

    .line 1070
    :try_start_16
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_3

    .line 1071
    :catch_6
    move-exception v1

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1071
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :catch_7
    move-exception v1

    .line 1072
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1075
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1e
    :goto_9
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->resetCancelFlag()V

    .line 1033
    throw v11

    :catchall_1
    move-exception v11

    if-nez v8, :cond_2

    .line 1036
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v13, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v12, v13, v14}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_1f
    if-nez v9, :cond_23

    .line 1049
    :goto_a
    if-eqz v0, :cond_20

    .line 1050
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v13, 0x5

    iput v13, v12, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_20
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v12, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v12

    if-eqz v12, :cond_21

    const-string v12, "EASRequestController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "< "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v14, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v4, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_21
    if-nez v0, :cond_22

    .line 1059
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v12, :cond_22

    .line 1060
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v12}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_22
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v13, 0x0

    :try_start_17
    iput-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1068
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v12, :cond_1e

    .line 1070
    :try_start_18
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v12, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7

    goto/16 :goto_9

    .line 1043
    :cond_23
    const/4 v12, -0x1

    if-ne v9, v12, :cond_24

    .line 1044
    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v12, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto :goto_a

    .line 1046
    :cond_24
    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v12, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_a

    .line 1067
    :catchall_2
    move-exception v11

    :try_start_19
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v11

    .line 1036
    .restart local v2       #err:Ljava/lang/OutOfMemoryError;
    :cond_25
    invoke-interface {v10}, Lcom/htc/android/mail/eassvc/core/SyncSource;->releaseHttpClient()V

    .line 1037
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v11

    if-nez v11, :cond_26

    .line 1038
    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1041
    :cond_26
    if-nez v9, :cond_2a

    .line 1049
    :goto_b
    if-eqz v0, :cond_27

    .line 1050
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v12, 0x5

    iput v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1051
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1053
    :cond_27
    invoke-interface {v10, v9}, Lcom/htc/android/mail/eassvc/core/SyncSource;->endSync(I)V

    .line 1055
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1056
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_28

    const-string v11, "EASRequestController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1058
    :cond_28
    if-nez v0, :cond_29

    .line 1059
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v11, :cond_29

    .line 1060
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v11}, Landroid/os/ConditionVariable;->open()V

    .line 1064
    :cond_29
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1065
    iget-object v12, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v12

    .line 1066
    const/4 v11, 0x0

    :try_start_1a
    iput-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1067
    monitor-exit v12
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 1068
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    if-eqz v11, :cond_8

    .line 1070
    :try_start_1b
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    invoke-interface {v11, v4, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8

    goto/16 :goto_3

    .line 1071
    :catch_8
    move-exception v1

    .line 1072
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1043
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2a
    const/4 v11, -0x1

    if-ne v9, v11, :cond_2b

    .line 1044
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto :goto_b

    .line 1046
    :cond_2b
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_b

    .line 1067
    :catchall_3
    move-exception v11

    :try_start_1c
    monitor-exit v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    throw v11

    .line 1043
    .end local v2           #err:Ljava/lang/OutOfMemoryError;
    .local v1, e:Ljava/lang/InterruptedException;
    :cond_2c
    const/4 v11, -0x1

    if-ne v9, v11, :cond_2d

    .line 1044
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_5

    .line 1046
    :cond_2d
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_5

    .line 1067
    :catchall_4
    move-exception v11

    :try_start_1d
    monitor-exit v12
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    throw v11

    .line 1043
    .local v1, e:Ljava/lang/Exception;
    :cond_2e
    const/4 v11, -0x1

    if-ne v9, v11, :cond_2f

    .line 1044
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_6

    .line 1046
    :cond_2f
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_6

    .line 1067
    :catchall_5
    move-exception v11

    :try_start_1e
    monitor-exit v12
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    throw v11

    .line 1043
    :cond_30
    const/4 v11, -0x1

    if-ne v9, v11, :cond_31

    .line 1044
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_7

    .line 1046
    :cond_31
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_7

    .line 1067
    :catchall_6
    move-exception v11

    :try_start_1f
    monitor-exit v12
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    throw v11

    .line 1043
    .restart local v5       #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :cond_32
    const/4 v11, -0x1

    if-ne v9, v11, :cond_33

    .line 1044
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_8

    .line 1046
    :cond_33
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_8

    .line 1067
    :catchall_7
    move-exception v11

    :try_start_20
    monitor-exit v12
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    throw v11

    .line 1043
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :cond_34
    const/4 v11, -0x1

    if-ne v9, v11, :cond_35

    .line 1044
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_2

    .line 1046
    :cond_35
    iget-object v11, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    invoke-virtual {v11, v10}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1047
    invoke-interface {v10, v3}, Lcom/htc/android/mail/eassvc/core/SyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_2

    .line 1067
    :catchall_8
    move-exception v11

    :try_start_21
    monitor-exit v12
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    throw v11

    .line 1071
    :catch_9
    move-exception v1

    .line 1072
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
