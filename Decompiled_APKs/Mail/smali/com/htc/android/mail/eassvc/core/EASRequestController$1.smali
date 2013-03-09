.class Lcom/htc/android/mail/eassvc/core/EASRequestController$1;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hadSyncError(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z
    .locals 4
    .parameter "exSyncSources"

    .prologue
    const/4 v2, 0x1

    .line 306
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getEnabledSyncSources()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 307
    .local v1, src:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncResult()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 310
    .end local v1           #src:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 3
    .parameter "exSyncSources"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContactReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$000(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    .line 157
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mCalendarReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$100(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    .line 158
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mMailReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->removeRequestByAccountId(J)V

    .line 159
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mTaskReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$300(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$CommonRequestController;->removeRequestByAccountId(J)V

    .line 160
    return-void
.end method

.method public getLastSyncInfo(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Ljava/util/ArrayList;
    .locals 4
    .parameter "exSyncSources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    invoke-virtual {p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getEnabledSyncSources()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 300
    .local v2, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v2           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_0
    return-object v1
.end method

.method public declared-synchronized syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 16
    .parameter "exSyncSources"
    .parameter "syncSource"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    move-result v9

    .line 165
    .local v9, requestEmpty:Z
    if-eqz v9, :cond_5

    .line 166
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "EASRequestController"

    const-string v12, "SyncEnd: all request sync finish"

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 168
    .local v8, msg:Landroid/os/Message;
    const/16 v11, 0x59da

    iput v11, v8, Landroid/os/Message;->what:I

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v2, bundle:Landroid/os/Bundle;
    const-string v11, "accountId"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v2, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    invoke-virtual {v8, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v11, v8}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 174
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->hadSyncError(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 181
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    iget-boolean v11, v11, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mIsFotaStartSync:Z

    if-eqz v11, :cond_1

    .line 182
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->taskSyncSource:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->mIsFotaStartSync:Z

    .line 183
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.android.mail.intent.startSync"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v10, service:Landroid/content/Intent;
    const-string v11, "com.htc.android.mail"

    const-string v12, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v11, "accountId"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 190
    .end local v10           #service:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v11, v12, v13}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->cancelErrorNotification(Landroid/content/Context;J)V

    .line 224
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMappingSchedule()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 225
    invoke-interface/range {p2 .. p2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getLastSyncResult()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isCancelled()Z

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->restartDirectpush(ZZ)V

    .line 237
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/Long;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v11, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-direct {v1, v11, v12}, Ljava/lang/Long;-><init>(J)V

    .line 238
    .local v1, accountId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ConditionVariable;

    .line 240
    .local v3, condition:Landroid/os/ConditionVariable;
    if-eqz v3, :cond_4

    .line 241
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v11, v12, v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->sendBroadcastAllSyncStart(Landroid/content/Context;ZLcom/htc/android/mail/eassvc/core/MailSyncSource;J)V

    .line 248
    .end local v1           #accountId:Ljava/lang/Long;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #condition:Landroid/os/ConditionVariable;
    .end local v8           #msg:Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->checkQueue(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 249
    if-eqz v9, :cond_6

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$700(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$800(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    :cond_6
    monitor-exit p0

    return-void

    .line 199
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v8       #msg:Landroid/os/Message;
    :cond_7
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->getLastSyncInfo(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Ljava/util/ArrayList;

    move-result-object v7

    .line 201
    .local v7, lastSyncInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    new-instance v11, Lcom/htc/android/mail/eassvc/core/EASRequestController$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$1$1;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$1;)V

    invoke-static {v7, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    .line 210
    .local v6, info:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    iget v11, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 211
    iget v11, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    const/16 v12, 0x400

    if-ne v11, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 213
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x400

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->showSyncFailNotification(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 219
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    .end local v7           #lastSyncInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    :catch_0
    move-exception v4

    .line 220
    .local v4, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 164
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #requestEmpty:Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 215
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #info:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    .restart local v7       #lastSyncInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    .restart local v8       #msg:Landroid/os/Message;
    .restart local v9       #requestEmpty:Z
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    iget v12, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->showSyncFailNotification(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 225
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    .end local v7           #lastSyncInfo:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;>;"
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 232
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isScreenOff()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 233
    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/util/PowerSavingUtil;->changeRadioDormantTimer(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 244
    .restart local v1       #accountId:Ljava/lang/Long;
    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public syncStartAfter(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 2
    .parameter "exSyncSources"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-static {v0, p1, v1}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    .line 293
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->checkQueue(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 294
    return-void
.end method

.method public declared-synchronized syncStartBefore(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 9
    .parameter "request"
    .parameter "exSyncSources"

    .prologue
    const/4 v8, 0x1

    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v3, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EASRequestController"

    const-string v4, "syncStartBefore: first request of this account"

    invoke-static {v3, p2, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SYNCHRONIZED"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mPowerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$702(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 259
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SYNCHRONIZED"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$802(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    .line 261
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->sendBroadcastAllSyncStart(Landroid/content/Context;ZLcom/htc/android/mail/eassvc/core/MailSyncSource;J)V

    .line 263
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 264
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x59d9

    iput v3, v2, Landroid/os/Message;->what:I

    .line 265
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "accountId"

    iget-object v4, p2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v4, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 267
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v3, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 270
    new-instance v0, Ljava/lang/Long;

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 271
    .local v0, accountId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 272
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mWaitForSyncComplete:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$600(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Ljava/util/Hashtable;

    move-result-object v3

    new-instance v5, Landroid/os/ConditionVariable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/os/ConditionVariable;-><init>(Z)V

    invoke-virtual {v3, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isScreenOff()Z

    move-result v3

    if-ne v3, v8, :cond_2

    .line 285
    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/PowerSavingUtil;->changeRadioDormantTimer(II)V

    .line 288
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$1;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    iget-object v4, p2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v3, p1, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->requestSyncByService(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    .end local v0           #accountId:Ljava/lang/Long;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    monitor-exit p0

    return-void

    .line 275
    .restart local v0       #accountId:Ljava/lang/Long;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v2       #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    .end local v0           #accountId:Ljava/lang/Long;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
