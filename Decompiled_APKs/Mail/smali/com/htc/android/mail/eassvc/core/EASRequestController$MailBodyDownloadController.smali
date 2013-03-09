.class Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailBodyDownloadController"
.end annotation


# instance fields
.field mFetchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;",
            ">;"
        }
    .end annotation
.end field

.field mMailSearcher:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

.field mOofMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;",
            ">;"
        }
    .end annotation
.end field

.field mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 3
    .parameter
    .parameter "syncManager"

    .prologue
    .line 2580
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2577
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    .line 2578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    .line 2581
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 2582
    new-instance v0, Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncManager;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mMailSearcher:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    .line 2583
    return-void
.end method

.method private isDuplicateMailItem(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 2586
    const/4 v0, 0x0

    .line 2587
    .local v0, bRet:Z
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2588
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;

    .line 2589
    .local v1, fetchItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;
    iget-wide v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->accountId:J

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->accountId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->collId:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->collId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->allOrNone:I

    iget v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->allOrNone:I

    if-ne v3, v5, :cond_0

    iget v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->type:I

    iget v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->type:I

    if-ne v3, v5, :cond_0

    iget-wide v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->truncationSize:J

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->truncationSize:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->isGlobalMail:Z

    iget-boolean v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->isGlobalMail:Z

    if-ne v3, v5, :cond_0

    .line 2597
    const/4 v0, 0x1

    .line 2601
    .end local v1           #fetchItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;
    :cond_1
    monitor-exit v4

    .line 2602
    return v0

    .line 2601
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public cancelFetchMailItem(JLjava/lang/String;)V
    .locals 8
    .parameter "accountId"
    .parameter "uid"

    .prologue
    .line 2606
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2607
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;

    .line 2608
    .local v2, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;
    iget-wide v6, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->accountId:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_0

    .line 2611
    iget-object v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2612
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->isCanceled:Z

    .line 2613
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "EASRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel fetch mail item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p1, p2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2614
    :cond_1
    iget-object v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v4, :cond_0

    .line 2615
    iget-object v0, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2616
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    iget-object v3, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    .line 2619
    .local v3, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$1;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;Ljava/lang/String;Lorg/apache/http/client/methods/HttpPost;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2631
    .end local v0           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;
    .end local v3           #key:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2632
    return-void
.end method

.method public cancelOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    .line 2820
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EASRequestController"

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v5, "cancelOOF"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2821
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v3

    .line 2822
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    .line 2823
    .local v1, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    if-eqz v1, :cond_2

    .line 2824
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EASRequestController"

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v6, "cancelOOF: abort operation"

    invoke-static {v2, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2825
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->isCancelled:Z

    .line 2826
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    iget-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2828
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz v0, :cond_2

    .line 2829
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$4;

    invoke-direct {v4, p0, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$4;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;Lorg/apache/http/client/methods/HttpPost;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2840
    .end local v0           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    monitor-exit v3

    .line 2841
    return-void

    .line 2840
    .end local v1           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public cancelSearchGlobalMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 2869
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mMailSearcher:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    invoke-virtual {v1}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->cancelSearchGlobalMail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2873
    :goto_0
    return-void

    .line 2870
    :catch_0
    move-exception v0

    .line 2871
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EASRequestController"

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v1, v2, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public emptyFolderContents(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 11
    .parameter "request"

    .prologue
    .line 2876
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "EASRequestController"

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "> emptyFolderContents("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2878
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "MAIL_BLK"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v3

    .line 2879
    .local v3, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "MAIL_BLK"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v5

    .line 2881
    .local v5, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.collection_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    .local v0, collectionId:Ljava/lang/String;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.mail.empty_subfolders"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2884
    .local v1, deleteSubFolders:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v6, v7, v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->EmptyFolderContents(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;Z)I

    move-result v4

    .line 2885
    .local v4, ret:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 2886
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v6, v0}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->deleteEmptyFolderCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2891
    :cond_1
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2892
    .end local v4           #ret:I
    :goto_0
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2895
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "EASRequestController"

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "< emptyFolderContents("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2896
    :cond_2
    return-void

    .line 2888
    :catch_0
    move-exception v2

    .line 2889
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EASRequestController"

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v6, v7, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2891
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2892
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2891
    throw v6
.end method

.method public fetchMailItem(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 17
    .parameter "request"

    .prologue
    .line 2635
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "> fetchMailItem("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2636
    :cond_0
    const/4 v9, 0x0

    .line 2637
    .local v9, nRet:I
    const/4 v2, 0x0

    .line 2638
    .local v2, bRet:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "MAIL_BLK"

    invoke-static {v12, v13}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v10

    .line 2639
    .local v10, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "MAIL_BLK"

    invoke-static {v12, v13}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v11

    .line 2641
    .local v11, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2642
    .local v5, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v1, v5, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 2643
    .local v1, account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    new-instance v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;-><init>()V

    .line 2644
    .local v8, mailbodyItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iput-wide v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->accountId:J

    .line 2645
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.collection_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->collId:Ljava/lang/String;

    .line 2646
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mailbody.uid"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    .line 2647
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mailbody.all_or_none"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->allOrNone:I

    .line 2648
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mailbody.type"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->type:I

    .line 2649
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mailbody.truncation_size"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->truncationSize:J

    .line 2650
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v13, "parameter.mailbody.global"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->isGlobalMail:Z

    .line 2651
    iget-object v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->collId:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2652
    :cond_1
    const-string v12, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v15, "collId or uid is empty"

    invoke-static {v12, v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2687
    :cond_2
    :goto_0
    return-void

    .line 2657
    :cond_3
    const/4 v7, 0x0

    .line 2659
    .local v7, httpClient:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->isDuplicateMailItem(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v12

    iget-wide v13, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v12, v13, v14}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    .line 2666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-virtual {v12, v5, v8, v7}, Lcom/htc/android/mail/eassvc/core/SyncManager;->fetchMailItem(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;Landroid/net/http/AndroidHttpClient;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2667
    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    .line 2668
    const/4 v9, 0x1

    .line 2677
    :cond_4
    if-eqz v7, :cond_5

    .line 2678
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2679
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 2680
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2681
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2682
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2683
    :goto_2
    invoke-static {v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2685
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2686
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "EASRequestController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "< fetchMailItem("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2662
    :cond_6
    :try_start_2
    const-string v12, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pass! duplicate mail item: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchMailBodyItem;->uid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2669
    :catch_0
    move-exception v3

    .line 2670
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "EASRequestController"

    invoke-static {v12, v5, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 2671
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v12, v3, v7, v13, v14}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->handleException(Ljava/lang/Exception;Landroid/net/http/AndroidHttpClient;J)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-result-object v6

    .line 2672
    .local v6, exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    iget v9, v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2677
    if-eqz v7, :cond_7

    .line 2678
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2679
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 2680
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2681
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2682
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto :goto_2

    .line 2673
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :catch_1
    move-exception v4

    .line 2674
    .local v4, err:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v12, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v15, "fetchMailItem get a OutOfMemoryError!"

    invoke-static {v12, v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2675
    const/16 v9, 0x12e

    .line 2677
    if-eqz v7, :cond_8

    .line 2678
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2679
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 2680
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2681
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2682
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto/16 :goto_2

    .line 2677
    .end local v4           #err:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    if-eqz v7, :cond_9

    .line 2678
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2679
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 2680
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2681
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2682
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2683
    invoke-static {v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2677
    throw v12

    .line 2681
    :catchall_1
    move-exception v12

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v12

    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v6       #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :catchall_2
    move-exception v12

    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v12

    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .restart local v4       #err:Ljava/lang/OutOfMemoryError;
    :catchall_3
    move-exception v12

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v12

    .end local v4           #err:Ljava/lang/OutOfMemoryError;
    :catchall_4
    move-exception v12

    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v12
.end method

.method public getOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 14
    .parameter "request"

    .prologue
    .line 2711
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "EASRequestController"

    iget-wide v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "> getOOF("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2713
    :cond_0
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "MAIL_BLK"

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v6

    .line 2714
    .local v6, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "MAIL_BLK"

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v8

    .line 2716
    .local v8, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    const/4 v7, 0x0

    .line 2718
    .local v7, result:Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    const/4 v4, 0x0

    .line 2719
    .local v4, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :try_start_0
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2721
    :try_start_1
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    .line 2722
    .local v2, existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    if-eqz v2, :cond_1

    iget-object v9, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v9, :cond_1

    .line 2723
    new-instance v9, Ljava/lang/Thread;

    new-instance v11, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$2;

    invoke-direct {v11, p0, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$2;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;)V

    invoke-direct {v9, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 2734
    :cond_1
    new-instance v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    invoke-direct {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2735
    .end local v4           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .local v5, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->isCancelled:Z

    .line 2736
    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iput-wide v11, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->accountId:J

    .line 2737
    const/16 v9, 0x35

    iput v9, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->command:I

    .line 2738
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2741
    :try_start_3
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v10, "parameter.mail.oof.body_type"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2742
    .local v0, bodyType:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v9, v10, v0, v5}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getOOF(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;)Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    move-result-object v7

    .line 2743
    iget v9, v7, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->httpStatus:I

    const/16 v10, 0x1c1

    if-ne v9, v10, :cond_2

    .line 2744
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.htc.android.mail.intent.folderUpdate"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2745
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "accountName"

    iget-object v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2746
    const-string v9, "accountId"

    iget-wide v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2747
    const-string v9, "com.htc.android.mail"

    const-string v10, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2748
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2753
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v10

    .line 2754
    :try_start_4
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2756
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2757
    .end local v0           #bodyType:Ljava/lang/String;
    .end local v2           #existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :goto_0
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2760
    iput-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2761
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "EASRequestController"

    iget-wide v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "< getOOF("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2762
    :cond_3
    return-void

    .line 2739
    .restart local v4       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_0
    move-exception v9

    :goto_1
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2750
    :catch_0
    move-exception v1

    .line 2751
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v9, "EASRequestController"

    iget-object v10, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v9, v10, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2753
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v10

    .line 2754
    :try_start_8
    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v11, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2756
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto :goto_0

    .line 2753
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v10

    .line 2754
    :try_start_9
    iget-object v11, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    iget-wide v12, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2756
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2757
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2753
    throw v9

    .line 2755
    :catchall_2
    move-exception v9

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v9

    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v4       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_3
    move-exception v9

    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v9

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v0       #bodyType:Ljava/lang/String;
    .restart local v2       #existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v5       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_4
    move-exception v9

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v9

    .line 2750
    .end local v0           #bodyType:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v4       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    goto :goto_2

    .line 2739
    .end local v4           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v5       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_5
    move-exception v9

    move-object v4, v5

    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v4       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    goto :goto_1
.end method

.method public moveMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 9
    .parameter "request"

    .prologue
    .line 2690
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "EASRequestController"

    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "> moveMail("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2692
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "MAIL_BLK"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v2

    .line 2693
    .local v2, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "MAIL_BLK"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v3

    .line 2695
    .local v3, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.mail.movemail.item"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    .line 2697
    .local v1, moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    if-eqz v1, :cond_1

    :try_start_0
    iget-object v4, v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2698
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v4, v5, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->syncMoveMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2703
    :cond_1
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2704
    :goto_0
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2707
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "EASRequestController"

    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "< moveMail("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2708
    :cond_2
    return-void

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EASRequestController"

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v4, v5, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2703
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2704
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2703
    throw v4
.end method

.method public searchGlobalMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 11
    .parameter "request"

    .prologue
    .line 2844
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "EASRequestController"

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "> searchGlobalMail("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2846
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "MAIL_BLK"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v1

    .line 2847
    .local v1, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "MAIL_BLK"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v5

    .line 2849
    .local v5, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.search.mail.more"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2850
    .local v4, searchMore:Z
    const/4 v2, 0x0

    .line 2851
    .local v2, result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.search.mail.element"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;

    .line 2853
    .local v3, searchElement:Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mMailSearcher:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->setExchangeSyncSources(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 2854
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mMailSearcher:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v8, v8, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getLoginCredential(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->setLoginCredential(Ljava/lang/String;)V

    .line 2855
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mMailSearcher:Lcom/htc/android/mail/eassvc/mail/MailSearcher;

    invoke-virtual {v6, v3, v4}, Lcom/htc/android/mail/eassvc/mail/MailSearcher;->searchGlobalMail(Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2859
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2860
    :goto_0
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2863
    iput-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2864
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "EASRequestController"

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "< searchGlobalMail("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2865
    :cond_1
    return-void

    .line 2856
    :catch_0
    move-exception v0

    .line 2857
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EASRequestController"

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v6, v7, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2859
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2860
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2859
    throw v6
.end method

.method public setOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 16
    .parameter "request"

    .prologue
    .line 2765
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "> setOOF("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2767
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "MAIL_BLK"

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v9

    .line 2768
    .local v9, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "MAIL_BLK"

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v10

    .line 2770
    .local v10, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    const/4 v7, -0x1

    .line 2772
    .local v7, nRet:I
    const/4 v5, 0x0

    .line 2773
    .local v5, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2775
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    .line 2776
    .local v3, existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    if-eqz v3, :cond_1

    iget-object v11, v3, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v11, :cond_1

    .line 2777
    new-instance v11, Ljava/lang/Thread;

    new-instance v13, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController$3;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;)V

    invoke-direct {v11, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 2788
    :cond_1
    new-instance v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2789
    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .local v6, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->isCancelled:Z

    .line 2790
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iput-wide v13, v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->accountId:J

    .line 2791
    const/16 v11, 0x36

    iput v11, v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;->command:I

    .line 2792
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2795
    :try_start_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v12, "parameter.mail.oof.request"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    .line 2796
    .local v8, oofRequest:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-virtual {v11, v12, v8, v6}, Lcom/htc/android/mail/eassvc/core/SyncManager;->setOOF(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/pim/EASOofRequest;Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    .line 2808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v12

    .line 2809
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2811
    invoke-static {v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2812
    .end local v3           #existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .end local v6           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .end local v8           #oofRequest:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :goto_0
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2815
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2816
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "< setOOF(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2817
    :cond_2
    return-void

    .line 2793
    .restart local v5       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_0
    move-exception v11

    :goto_1
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2797
    :catch_0
    move-exception v1

    .line 2798
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v11, "EASRequestController"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-static {v11, v12, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 2799
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v2

    .line 2800
    .local v2, errorCode:I
    const/16 v11, 0x1c1

    if-ne v2, v11, :cond_3

    .line 2801
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.htc.android.mail.intent.folderUpdate"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2802
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "accountName"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v12, v12, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2803
    const-string v11, "accountId"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2804
    const-string v11, "com.htc.android.mail"

    const-string v12, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2805
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2808
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v12

    .line 2809
    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2811
    invoke-static {v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    goto/16 :goto_0

    .line 2808
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #errorCode:I
    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_1
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    monitor-enter v12

    .line 2809
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->mOofMap:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2811
    invoke-static {v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2812
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2808
    throw v11

    .line 2810
    :catchall_2
    move-exception v11

    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v11

    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v2       #errorCode:I
    .restart local v5       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_3
    move-exception v11

    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v11

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #errorCode:I
    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v3       #existReq:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v6       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v8       #oofRequest:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :catchall_4
    move-exception v11

    :try_start_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v11

    .line 2797
    .end local v8           #oofRequest:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v5       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    goto/16 :goto_2

    .line 2793
    .end local v5           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v6       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    :catchall_5
    move-exception v11

    move-object v5, v6

    .end local v6           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    .restart local v5       #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$OofItem;
    goto/16 :goto_1
.end method
