.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;
.super Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mInitialSyncState:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

.field private final mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mStats:Landroid/content/SyncStats;


# direct methods
.method public constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;Landroid/accounts/Account;Landroid/content/SyncStats;Landroid/content/ContentProviderClient;)V
    .locals 1
    .parameter "mergeQueue"
    .parameter "initialSyncState"
    .parameter "account"
    .parameter "stats"
    .parameter "provider"

    .prologue
    .line 1818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    .line 1819
    iput-object p5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mProvider:Landroid/content/ContentProviderClient;

    .line 1820
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    .line 1821
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mInitialSyncState:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    .line 1822
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mAccount:Landroid/accounts/Account;

    .line 1823
    iput-object p4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStats:Landroid/content/SyncStats;

    .line 1824
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1827
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1829
    .local v8, status:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    const/4 v4, 0x0

    .line 1834
    .local v4, exitMsg:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;

    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v10, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mAccount:Landroid/accounts/Account;

    iget-object v11, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStats:Landroid/content/SyncStats;

    invoke-direct {v6, v9, v10, v11}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;-><init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/SyncStats;)V

    .line 1835
    .local v6, opGenerator:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->take(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1837
    .local v0, block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1838
    :cond_0
    const-string v9, "BookmarksSync"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1839
    const-string v9, "BookmarksSync"

    const-string v10, "Merge queue empty.  Exiting. "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_1
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1889
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v9, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    .line 1892
    .end local v0           #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;>;"
    .end local v6           #opGenerator:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    :goto_1
    return-void

    .line 1843
    .restart local v0       #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;>;"
    .restart local v6       #opGenerator:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;

    .line 1844
    .local v3, entry:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;
    iget-object v7, v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    .line 1845
    .local v7, serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    iget-object v1, v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    .line 1846
    .local v1, clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    const-string v9, "BookmarksSync"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1847
    const-string v9, "BookmarksSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Server entity:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v9, "BookmarksSync"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Client entity:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_3
    invoke-virtual {v6, v7, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->add(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    .line 1856
    .end local v0           #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;>;"
    .end local v1           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v3           #entry:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #opGenerator:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    .end local v7           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :catch_0
    move-exception v2

    .line 1857
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1858
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Merger thread hit a remote exception in talking to the CP.  Bailing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1860
    const-string v9, "BookmarksSync"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1861
    const-string v9, "BookmarksSync"

    invoke-static {v9, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1889
    :cond_4
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v9, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1852
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #opGenerator:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->generate()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 1863
    .end local v0           #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #opGenerator:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
    :catch_1
    move-exception v2

    .line 1864
    .local v2, e:Landroid/content/OperationApplicationException;
    :try_start_4
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1865
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Merger thread hit a OperationApplicationException in talking to the CP. Bailing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1867
    const-string v9, "BookmarksSync"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1868
    const-string v9, "BookmarksSync"

    invoke-static {v9, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1889
    :cond_6
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v9, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1870
    .end local v2           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v2

    .line 1871
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1872
    const-string v4, "Merger thread interrupted.  Bailing."

    .line 1873
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1889
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v9, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1874
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v2

    .line 1875
    .local v2, e:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;
    :try_start_6
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1876
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Merger thread encounted bad server or client data.  Bailing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1878
    const-string v9, "BookmarksSync"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1879
    const-string v9, "BookmarksSync"

    invoke-static {v9, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1889
    :cond_7
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v9, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1881
    .end local v2           #e:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;
    :catch_4
    move-exception v2

    .line 1882
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_7
    sget-object v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1883
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Merger thread threw an unknown error.  Bailing. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1885
    const-string v9, "BookmarksSync"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1886
    const-string v9, "BookmarksSync"

    invoke-static {v9, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1889
    :cond_8
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v9, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v9, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1889
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->kill()V

    .line 1890
    iget-object v10, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    invoke-virtual {v10, v8, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    throw v9
.end method
