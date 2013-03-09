.class Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;
.super Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailSendRequestController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 1
    .parameter
    .parameter "syncManager"

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 1954
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;I)V

    .line 1955
    return-void
.end method

.method private needClearErrNotification(IJ)Z
    .locals 3
    .parameter "cmd"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 2040
    const/16 v2, 0x32

    if-eq p1, v2, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return v1

    .line 2043
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getOutboxMailCount(JLandroid/content/ContentResolver;)I

    move-result v0

    .line 2044
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 2047
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private syncCalendar(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 4
    .parameter "exSyncSources"

    .prologue
    .line 2083
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EASRequestController"

    const-string v2, "MailSend: syncCalendar"

    invoke-static {v1, p1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2084
    :cond_0
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 2085
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 2086
    iput-object p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2087
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 2088
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 2089
    const/4 v1, -0x3

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2090
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 2091
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.mail.meeting.add_request"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2092
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2093
    return-void
.end method

.method private syncMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    .locals 4
    .parameter "exSyncSources"
    .parameter "collId"

    .prologue
    .line 2096
    const-string v1, "EASRequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailSend: syncMail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2097
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 2098
    .local v0, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 2099
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 2100
    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 2101
    iput-object p1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 2103
    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v2, "parameter.collection_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2105
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    .line 1959
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_1

    .line 1961
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.mail.send.retry_count"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1962
    .local v1, retryCount:I
    if-nez v1, :cond_1

    .line 1963
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->requestEqualRunning(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v0

    .line 1964
    .local v0, isEqual:Z
    if-eqz v0, :cond_1

    .line 1965
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EASRequestController"

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".addRequest: request equal runningRequest, skip."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1971
    .end local v0           #isEqual:Z
    .end local v1           #retryCount:I
    :cond_0
    :goto_0
    return-void

    .line 1970
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0
.end method

.method public isSendingMail(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v2, 0x1

    .line 2018
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2019
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-wide v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 2020
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isSendingMail()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2021
    monitor-exit v3

    .line 2036
    :goto_0
    return v2

    .line 2024
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2025
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v3

    .line 2026
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2027
    .local v1, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-wide v4, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 2030
    iget-object v4, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isSendingMail()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2031
    monitor-exit v3

    goto :goto_0

    .line 2034
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2024
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2034
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2036
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needSendErrNotification(IJJZ)Z
    .locals 8
    .parameter "cmd"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "success"

    .prologue
    .line 2051
    const/16 v4, 0x32

    if-eq p1, v4, :cond_0

    .line 2052
    const/4 v4, 0x0

    .line 2079
    :goto_0
    return v4

    .line 2053
    :cond_0
    if-nez p6, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p2, p3, p4, p5, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->checkMailisInOutbox(JJLandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2058
    const/4 v4, 0x1

    goto :goto_0

    .line 2060
    :cond_1
    const/4 v1, 0x1

    .line 2061
    .local v1, isEmpty:Z
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v5

    .line 2062
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2063
    .local v3, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-wide v6, v3, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v4, v6, p2

    if-nez v4, :cond_2

    .line 2066
    iget v4, v3, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v6, 0x32

    if-ne v4, v6, :cond_2

    .line 2067
    const/4 v1, 0x0

    .line 2071
    .end local v3           #request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    if-eqz v1, :cond_4

    .line 2073
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p2, p3, v4, v5}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getSentFailedMail(JILandroid/content/ContentResolver;)[Ljava/lang/Long;

    move-result-object v2

    .line 2074
    .local v2, list:[Ljava/lang/Long;
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 2075
    const/4 v4, 0x1

    goto :goto_0

    .line 2071
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #list:[Ljava/lang/Long;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2079
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public requestEqualRunning(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z
    .locals 10
    .parameter "req1"

    .prologue
    const/4 v4, 0x0

    .line 1974
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 1975
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    if-nez v6, :cond_0

    .line 1976
    monitor-exit v5

    .line 2013
    :goto_0
    return v4

    .line 1978
    :cond_0
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    iget v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v7, v7, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    if-ne v6, v7, :cond_1

    iget v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v7, v7, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    if-eq v6, v7, :cond_2

    .line 1981
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 2014
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1983
    :cond_2
    :try_start_1
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v6, :cond_8

    .line 1984
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1985
    .local v1, key:Ljava/lang/String;
    const-string v6, "parameter.mail.send.retry_count"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "parameter.mail.send.success.sync_mail"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1989
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1990
    .local v2, obj1:Ljava/lang/Object;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1991
    .local v3, obj2:Ljava/lang/Object;
    if-eqz v2, :cond_6

    instance-of v6, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    if-eqz v6, :cond_6

    .line 1992
    if-eqz v3, :cond_4

    instance-of v6, v3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    if-nez v6, :cond_5

    .line 1993
    :cond_4
    monitor-exit v5

    goto :goto_0

    .line 1994
    :cond_5
    check-cast v2, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .end local v2           #obj1:Ljava/lang/Object;
    check-cast v3, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .end local v3           #obj2:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->isEqual(Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1995
    monitor-exit v5

    goto/16 :goto_0

    .line 1997
    .restart local v2       #obj1:Ljava/lang/Object;
    .restart local v3       #obj2:Ljava/lang/Object;
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1998
    monitor-exit v5

    goto/16 :goto_0

    .line 1999
    :cond_7
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 2000
    monitor-exit v5

    goto/16 :goto_0

    .line 2003
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #obj1:Ljava/lang/Object;
    .end local v3           #obj2:Ljava/lang/Object;
    :cond_8
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-nez v6, :cond_a

    :cond_9
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eq v6, v7, :cond_a

    .line 2005
    monitor-exit v5

    goto/16 :goto_0

    .line 2009
    :cond_a
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v6, :cond_c

    .line 2010
    :cond_b
    monitor-exit v5

    goto/16 :goto_0

    .line 2013
    :cond_c
    const/4 v4, 0x1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public run()V
    .locals 44

    .prologue
    .line 2108
    const/4 v3, 0x0

    .line 2109
    .local v3, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/16 v41, 0x0

    .line 2110
    .local v41, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    const/16 v39, 0x0

    .line 2111
    .local v39, stopRunning:Z
    const/16 v23, 0x0

    .line 2112
    .local v23, bNeedRetry:Z
    const/16 v19, 0x0

    .line 2113
    .local v19, bSendSuccess:Z
    const-wide/16 v9, -0x1

    .line 2114
    .local v9, accountId:J
    const-wide/16 v11, -0x1

    .line 2115
    .local v11, sendMessageId:J
    const/16 v40, 0x1

    .line 2116
    .local v40, syncResult:I
    const/16 v29, 0x0

    .line 2117
    .local v29, errorCode:I
    const/16 v33, 0x0

    .line 2118
    .local v33, nRet:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    if-nez v4, :cond_2

    .line 2119
    const/16 v23, 0x0

    .line 2120
    const/16 v19, 0x0

    .line 2121
    const-wide/16 v9, -0x1

    .line 2122
    const-wide/16 v11, -0x1

    .line 2123
    const/16 v40, 0x1

    .line 2124
    const/16 v29, 0x0

    .line 2125
    const/16 v33, 0x0

    .line 2127
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v3, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2129
    iget-object v0, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v41, v0

    .line 2130
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v21, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    .line 2131
    .end local v9           #accountId:J
    .local v21, accountId:J
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "> "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2132
    :cond_1
    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isPasswordSufficient()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2133
    new-instance v4, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v5, 0x400

    const-string v13, "Device password expiration."

    invoke-direct {v4, v5, v13}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 2220
    :catch_0
    move-exception v27

    move-wide/from16 v9, v21

    .line 2221
    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    .local v27, e:Ljava/lang/InterruptedException;
    :goto_1
    :try_start_2
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ":stop running"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 2222
    const/16 v39, 0x1

    .line 2242
    if-eqz v39, :cond_2e

    .line 2298
    .end local v27           #e:Ljava/lang/InterruptedException;
    :cond_2
    :goto_2
    return-void

    .line 2135
    .end local v9           #accountId:J
    .restart local v21       #accountId:J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->checkPolicySufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    packed-switch v4, :pswitch_data_0

    .line 2217
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " Error! unknown command: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2242
    :cond_4
    :goto_3
    if-eqz v39, :cond_1a

    move-wide/from16 v9, v21

    .line 2243
    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    goto :goto_2

    .line 2138
    .end local v9           #accountId:J
    .restart local v21       #accountId:J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.calendar.event_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2139
    .local v7, calendarEventId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.meetingResp.cmd"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2140
    .local v6, meetingResp:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 2141
    .local v35, retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.success.sync_mail"

    const/4 v13, 0x1

    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 2146
    .local v34, needSyncMail:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.item"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    .line 2147
    .local v36, sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    if-nez v36, :cond_9

    .line 2148
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " Error! sendItem null return"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 2223
    .end local v6           #meetingResp:I
    .end local v7           #calendarEventId:J
    .end local v34           #needSyncMail:Z
    .end local v35           #retryCount:I
    .end local v36           #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :catch_1
    move-exception v27

    move-wide/from16 v9, v21

    .line 2224
    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    .local v27, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v4, "EASRequestController"

    move-object/from16 v0, v27

    invoke-static {v4, v3, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 2225
    if-nez v3, :cond_20

    .line 2226
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " Error! ExchangeSyncSources is null."

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 2242
    if-nez v39, :cond_2

    .line 2245
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_37

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v35, v4, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " request retry: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_7
    if-nez v23, :cond_8

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_8

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .local v32, msg:Landroid/os/Message;
    const/16 v4, 0x59da

    move-object/from16 v0, v32

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .local v24, bundle:Landroid/os/Bundle;
    const-string v4, "accountId"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .end local v27           #e:Ljava/lang/Exception;
    :goto_6
    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2150
    .end local v9           #accountId:J
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v32           #msg:Landroid/os/Message;
    .restart local v6       #meetingResp:I
    .restart local v7       #calendarEventId:J
    .restart local v21       #accountId:J
    .restart local v34       #needSyncMail:Z
    .restart local v35       #retryCount:I
    .restart local v36       #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :cond_9
    :try_start_6
    move-object/from16 v0, v36

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/htc/android/mail/eassvc/mail/MailSender;->checkMailCanBeSent(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;JIJLandroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2151
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " Error! mail cannot be sent"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 2239
    .end local v6           #meetingResp:I
    .end local v7           #calendarEventId:J
    .end local v34           #needSyncMail:Z
    .end local v35           #retryCount:I
    .end local v36           #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :catch_2
    move-exception v28

    move-wide/from16 v9, v21

    .line 2240
    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    .local v28, err:Ljava/lang/OutOfMemoryError;
    :goto_7
    :try_start_7
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " MailSendRequest Error! get a OutOfMemoryError!"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 2242
    if-nez v39, :cond_2

    .line 2245
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_43

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v35, v4, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " request retry: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_c
    if-nez v23, :cond_d

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_d

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .restart local v32       #msg:Landroid/os/Message;
    const/16 v4, 0x59da

    move-object/from16 v0, v32

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v4, "accountId"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    goto/16 :goto_6

    .line 2153
    .end local v9           #accountId:J
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v28           #err:Ljava/lang/OutOfMemoryError;
    .end local v32           #msg:Landroid/os/Message;
    .restart local v6       #meetingResp:I
    .restart local v7       #calendarEventId:J
    .restart local v21       #accountId:J
    .restart local v34       #needSyncMail:Z
    .restart local v35       #retryCount:I
    .restart local v36       #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :cond_e
    :try_start_9
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isSendingMail()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2154
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " Error! already sending mail"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3

    .line 2242
    .end local v6           #meetingResp:I
    .end local v7           #calendarEventId:J
    .end local v34           #needSyncMail:Z
    .end local v35           #retryCount:I
    .end local v36           #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :catchall_0
    move-exception v4

    move-wide/from16 v9, v21

    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    :goto_9
    if-nez v39, :cond_2

    .line 2245
    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_2a

    .line 2249
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v13, 0x5

    iput v13, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mail.send.retry_count"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v35, v5, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "EASRequestController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " request retry: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v3, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v5, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iput-object v13, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "EASRequestController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "< "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v14, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v3, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_11
    if-nez v23, :cond_12

    .line 2277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v5, :cond_12

    .line 2278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v13, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v5

    if-nez v5, :cond_13

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .restart local v32       #msg:Landroid/os/Message;
    const/16 v5, 0x59da

    move-object/from16 v0, v32

    iput v5, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v5, "accountId"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 2242
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v32           #msg:Landroid/os/Message;
    :cond_13
    throw v4

    .line 2158
    .end local v9           #accountId:J
    .restart local v6       #meetingResp:I
    .restart local v7       #calendarEventId:J
    .restart local v21       #accountId:J
    .restart local v34       #needSyncMail:Z
    .restart local v35       #retryCount:I
    .restart local v36       #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :cond_14
    :try_start_b
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2162
    const/4 v4, 0x6

    if-ne v6, v4, :cond_15

    if-nez v35, :cond_15

    .line 2163
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->syncCalendar(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2166
    :cond_15
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mMessageId:J

    move-wide/from16 v37, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2

    .line 2167
    .end local v11           #sendMessageId:J
    .local v37, sendMessageId:J
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v0, v36

    invoke-virtual {v4, v3, v0, v6}, Lcom/htc/android/mail/eassvc/core/SyncManager;->sendMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;I)I

    move-result v33

    .line 2168
    const/16 v4, 0xc8

    move/from16 v0, v33

    if-ne v0, v4, :cond_4b

    .line 2169
    const/16 v19, 0x1

    .line 2170
    const/16 v40, 0x0

    .line 2171
    const/4 v4, 0x6

    if-ne v6, v4, :cond_18

    .line 2172
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4, v7, v8}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->deleteMeetingMailRecord(J)V

    .line 2176
    :goto_b
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    if-nez v4, :cond_19

    move-object/from16 v0, v36

    iget v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    .line 2177
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v4, v5, v13, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->updateMailAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2181
    :cond_16
    :goto_c
    if-eqz v34, :cond_17

    .line 2182
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getDefaultInboxColID()Ljava/lang/String;

    move-result-object v25

    .line 2183
    .local v25, collId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->syncMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2185
    .end local v25           #collId:Ljava/lang/String;
    :cond_17
    new-instance v9, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v9}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v10

    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/htc/android/mail/ulog/MULogMgr;->updateMailCountRecord(Landroid/content/Context;JJJ)V

    move-wide/from16 v11, v37

    .end local v37           #sendMessageId:J
    .restart local v11       #sendMessageId:J
    goto/16 :goto_3

    .line 2174
    .end local v11           #sendMessageId:J
    .restart local v37       #sendMessageId:J
    :cond_18
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-wide/from16 v0, v37

    invoke-virtual {v4, v0, v1, v5, v13}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->deleteMail(JZZ)Z

    goto :goto_b

    .line 2220
    :catch_3
    move-exception v27

    move-wide/from16 v11, v37

    .end local v37           #sendMessageId:J
    .restart local v11       #sendMessageId:J
    move-wide/from16 v9, v21

    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    goto/16 :goto_1

    .line 2178
    .end local v9           #accountId:J
    .end local v11           #sendMessageId:J
    .restart local v21       #accountId:J
    .restart local v37       #sendMessageId:J
    :cond_19
    move-object/from16 v0, v36

    iget-boolean v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mGlobalMail:Z

    if-nez v4, :cond_16

    move-object/from16 v0, v36

    iget v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_16

    .line 2179
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCollId:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mUid:Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v4, v5, v13, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->updateMailAction(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_c

    .line 2223
    :catch_4
    move-exception v27

    move-wide/from16 v11, v37

    .end local v37           #sendMessageId:J
    .restart local v11       #sendMessageId:J
    move-wide/from16 v9, v21

    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    goto/16 :goto_4

    .line 2190
    .end local v6           #meetingResp:I
    .end local v7           #calendarEventId:J
    .end local v9           #accountId:J
    .end local v34           #needSyncMail:Z
    .end local v35           #retryCount:I
    .end local v36           #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    .restart local v21       #accountId:J
    :pswitch_1
    const/16 v19, 0x1

    .line 2191
    const/16 v40, 0x0

    .line 2192
    :try_start_d
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.collection_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2194
    .restart local v25       #collId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.message_uid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2195
    .local v42, uid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.meetingResp.cmd"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2196
    .restart local v6       #meetingResp:I
    const/16 v43, 0x0

    .line 2197
    .local v43, usrResp:I
    packed-switch v6, :pswitch_data_1

    .line 2209
    :goto_d
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move/from16 v0, v43

    move-object/from16 v1, v25

    move-object/from16 v2, v42

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/SyncManager;->meetingResp(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2210
    .local v20, CalendarId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2211
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getDefaultInboxColID()Ljava/lang/String;

    move-result-object v26

    .line 2212
    .local v26, defalutCollId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v3, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->syncMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    .line 2199
    .end local v20           #CalendarId:Ljava/lang/String;
    .end local v26           #defalutCollId:Ljava/lang/String;
    :pswitch_3
    const/16 v43, 0x1

    .line 2200
    goto :goto_d

    .line 2203
    :pswitch_4
    const/16 v43, 0x2

    .line 2204
    goto :goto_d

    .line 2206
    :pswitch_5
    const/16 v43, 0x3

    goto :goto_d

    .line 2245
    .end local v6           #meetingResp:I
    .end local v25           #collId:Ljava/lang/String;
    .end local v42           #uid:Ljava/lang/String;
    .end local v43           #usrResp:I
    :cond_1a
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_47

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v35, v4, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " request retry: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_1d
    if-nez v23, :cond_1e

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_1e

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v4, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .restart local v32       #msg:Landroid/os/Message;
    const/16 v4, 0x59da

    move-object/from16 v0, v32

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v4, "accountId"

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v32           #msg:Landroid/os/Message;
    :cond_1f
    move-wide/from16 v9, v21

    .line 2296
    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    goto/16 :goto_0

    .line 2229
    .restart local v27       #e:Ljava/lang/Exception;
    :cond_20
    if-nez v41, :cond_25

    .line 2230
    :try_start_f
    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " Error! syncSource is null."

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 2242
    if-nez v39, :cond_2

    .line 2245
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_3b

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v35, v4, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " request retry: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_23
    if-nez v23, :cond_24

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_24

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v4, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .restart local v32       #msg:Landroid/os/Message;
    const/16 v4, 0x59da

    move-object/from16 v0, v32

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v4, "accountId"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    goto/16 :goto_6

    .line 2233
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v32           #msg:Landroid/os/Message;
    :cond_25
    :try_start_11
    move-object/from16 v0, v41

    check-cast v0, Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v31, v0

    .line 2235
    .local v31, mailSyncsrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->handleMailOutException(Ljava/lang/Exception;Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;Lcom/htc/android/mail/eassvc/core/MailSyncSource;)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-result-object v30

    .line 2236
    .local v30, exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    move/from16 v29, v0

    .line 2237
    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    move/from16 v40, v0

    .line 2238
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z

    move/from16 v23, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 2242
    if-nez v39, :cond_2

    .line 2245
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_3f

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v35, v4, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " request retry: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_27
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_28
    if-nez v23, :cond_29

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_29

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v4, 0x0

    :try_start_12
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .restart local v32       #msg:Landroid/os/Message;
    const/16 v4, 0x59da

    move-object/from16 v0, v32

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v4, "accountId"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    goto/16 :goto_6

    .line 2254
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v27           #e:Ljava/lang/Exception;
    .end local v30           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .end local v31           #mailSyncsrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .end local v32           #msg:Landroid/os/Message;
    :cond_2a
    const/4 v5, 0x1

    move/from16 v0, v40

    if-ne v0, v5, :cond_2b

    const/16 v5, 0x2eb

    move/from16 v0, v29

    if-ne v0, v5, :cond_2b

    .line 2256
    const/16 v5, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v5, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    const/16 v13, 0x2eb

    invoke-static {v5, v9, v10, v13}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_a

    .line 2261
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v5, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    iget-object v13, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v13, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v15, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v5, v13, v14, v15, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_a

    .line 2263
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v29

    invoke-static {v5, v9, v10, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v9, v10, v11, v12, v5}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_a

    .line 2269
    :cond_2d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_a

    .line 2283
    :catchall_1
    move-exception v4

    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    throw v4

    .line 2245
    .local v27, e:Ljava/lang/InterruptedException;
    :cond_2e
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setSendMail(Z)V

    .line 2246
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseOutHttpClient()V

    .line 2248
    if-eqz v23, :cond_33

    .line 2249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    const/4 v5, 0x5

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v35, v4, 0x1

    .line 2251
    .restart local v35       #retryCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.send.retry_count"

    move/from16 v0, v35

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2252
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " request retry: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2253
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2274
    .end local v35           #retryCount:I
    :cond_30
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2275
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v13, v13, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2276
    :cond_31
    if-nez v23, :cond_32

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    if-eqz v4, :cond_32

    .line 2278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 2281
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 2282
    const/4 v4, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2283
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2284
    const/4 v3, 0x0

    .line 2285
    const/16 v41, 0x0

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->hasRequestInQueue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2289
    new-instance v32, Landroid/os/Message;

    invoke-direct/range {v32 .. v32}, Landroid/os/Message;-><init>()V

    .line 2290
    .restart local v32       #msg:Landroid/os/Message;
    const/16 v4, 0x59da

    move-object/from16 v0, v32

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2291
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v4, "accountId"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2293
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    goto/16 :goto_6

    .line 2254
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v32           #msg:Landroid/os/Message;
    :cond_33
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_34

    const/16 v4, 0x2eb

    move/from16 v0, v29

    if-ne v0, v4, :cond_34

    .line 2256
    const/16 v4, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2eb

    invoke-static {v4, v9, v10, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_11

    .line 2261
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v5, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v5, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_11

    .line 2263
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v29

    invoke-static {v4, v9, v10, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v9, v10, v11, v12, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_11

    .line 2269
    :cond_36
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_11

    .line 2283
    :catchall_2
    move-exception v4

    :try_start_15
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v4

    .line 2254
    .local v27, e:Ljava/lang/Exception;
    :cond_37
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_38

    const/16 v4, 0x2eb

    move/from16 v0, v29

    if-ne v0, v4, :cond_38

    .line 2256
    const/16 v4, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2eb

    invoke-static {v4, v9, v10, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_5

    .line 2261
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v5, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v5, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_5

    .line 2263
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v29

    invoke-static {v4, v9, v10, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v9, v10, v11, v12, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_5

    .line 2269
    :cond_3a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_5

    .line 2283
    :catchall_3
    move-exception v4

    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    throw v4

    .line 2254
    :cond_3b
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_3c

    const/16 v4, 0x2eb

    move/from16 v0, v29

    if-ne v0, v4, :cond_3c

    .line 2256
    const/16 v4, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2eb

    invoke-static {v4, v9, v10, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_f

    .line 2261
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v5, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v5, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_f

    .line 2263
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v29

    invoke-static {v4, v9, v10, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v9, v10, v11, v12, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_f

    .line 2269
    :cond_3e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_f

    .line 2283
    :catchall_4
    move-exception v4

    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v4

    .line 2254
    .restart local v30       #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .restart local v31       #mailSyncsrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    :cond_3f
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_40

    const/16 v4, 0x2eb

    move/from16 v0, v29

    if-ne v0, v4, :cond_40

    .line 2256
    const/16 v4, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2eb

    invoke-static {v4, v9, v10, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_10

    .line 2261
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v5, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v5, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_10

    .line 2263
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v29

    invoke-static {v4, v9, v10, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v9, v10, v11, v12, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_10

    .line 2269
    :cond_42
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_10

    .line 2283
    :catchall_5
    move-exception v4

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    throw v4

    .line 2254
    .end local v27           #e:Ljava/lang/Exception;
    .end local v30           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .end local v31           #mailSyncsrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    .restart local v28       #err:Ljava/lang/OutOfMemoryError;
    :cond_43
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_44

    const/16 v4, 0x2eb

    move/from16 v0, v29

    if-ne v0, v4, :cond_44

    .line 2256
    const/16 v4, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2eb

    invoke-static {v4, v9, v10, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_8

    .line 2261
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v5, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v5, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_8

    .line 2263
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide v15, v9

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v29

    invoke-static {v4, v9, v10, v0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v9, v10, v11, v12, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_8

    .line 2269
    :cond_46
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_8

    .line 2283
    :catchall_6
    move-exception v4

    :try_start_19
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw v4

    .line 2254
    .end local v9           #accountId:J
    .end local v28           #err:Ljava/lang/OutOfMemoryError;
    .restart local v21       #accountId:J
    :cond_47
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_48

    const/16 v4, 0x2eb

    move/from16 v0, v29

    if-ne v0, v4, :cond_48

    .line 2256
    const/16 v4, 0x32

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->removeRequestByAccountId(JILjava/lang/Object;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x2eb

    move-wide/from16 v0, v21

    invoke-static {v4, v0, v1, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2259
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v18

    move-wide/from16 v13, v21

    move-wide v15, v11

    invoke-static/range {v13 .. v18}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_e

    .line 2261
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needClearErrNotification(IJ)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v13, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    sget-object v5, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    const/4 v15, 0x0

    invoke-static {v4, v13, v14, v5, v15}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V

    goto/16 :goto_e

    .line 2263
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget v14, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move-object/from16 v13, p0

    move-wide/from16 v15, v21

    move-wide/from16 v17, v11

    invoke-virtual/range {v13 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->needSendErrNotification(IJJZ)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v21

    move/from16 v2, v29

    invoke-static {v4, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 2266
    invoke-static/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-static {v0, v1, v11, v12, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJLandroid/content/Context;)V

    goto/16 :goto_e

    .line 2269
    :cond_4a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v18

    move-wide/from16 v13, v21

    move-wide v15, v11

    invoke-static/range {v13 .. v18}, Lcom/htc/android/mail/eassvc/mail/MailSender;->resetRetryCount(JJILandroid/content/Context;)V

    goto/16 :goto_e

    .line 2283
    :catchall_7
    move-exception v4

    :try_start_1a
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    throw v4

    .line 2242
    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    :catchall_8
    move-exception v4

    goto/16 :goto_9

    .end local v9           #accountId:J
    .end local v11           #sendMessageId:J
    .restart local v6       #meetingResp:I
    .restart local v7       #calendarEventId:J
    .restart local v21       #accountId:J
    .restart local v34       #needSyncMail:Z
    .restart local v35       #retryCount:I
    .restart local v36       #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    .restart local v37       #sendMessageId:J
    :catchall_9
    move-exception v4

    move-wide/from16 v11, v37

    .end local v37           #sendMessageId:J
    .restart local v11       #sendMessageId:J
    move-wide/from16 v9, v21

    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    goto/16 :goto_9

    .line 2239
    .end local v6           #meetingResp:I
    .end local v7           #calendarEventId:J
    .end local v34           #needSyncMail:Z
    .end local v35           #retryCount:I
    .end local v36           #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :catch_5
    move-exception v28

    goto/16 :goto_7

    .end local v9           #accountId:J
    .end local v11           #sendMessageId:J
    .restart local v6       #meetingResp:I
    .restart local v7       #calendarEventId:J
    .restart local v21       #accountId:J
    .restart local v34       #needSyncMail:Z
    .restart local v35       #retryCount:I
    .restart local v36       #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    .restart local v37       #sendMessageId:J
    :catch_6
    move-exception v28

    move-wide/from16 v11, v37

    .end local v37           #sendMessageId:J
    .restart local v11       #sendMessageId:J
    move-wide/from16 v9, v21

    .end local v21           #accountId:J
    .restart local v9       #accountId:J
    goto/16 :goto_7

    .line 2223
    .end local v6           #meetingResp:I
    .end local v7           #calendarEventId:J
    .end local v34           #needSyncMail:Z
    .end local v35           #retryCount:I
    .end local v36           #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    :catch_7
    move-exception v27

    goto/16 :goto_4

    .line 2220
    :catch_8
    move-exception v27

    goto/16 :goto_1

    .end local v9           #accountId:J
    .end local v11           #sendMessageId:J
    .restart local v6       #meetingResp:I
    .restart local v7       #calendarEventId:J
    .restart local v21       #accountId:J
    .restart local v34       #needSyncMail:Z
    .restart local v35       #retryCount:I
    .restart local v36       #sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;
    .restart local v37       #sendMessageId:J
    :cond_4b
    move-wide/from16 v11, v37

    .end local v37           #sendMessageId:J
    .restart local v11       #sendMessageId:J
    goto/16 :goto_3

    .line 2136
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2197
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
