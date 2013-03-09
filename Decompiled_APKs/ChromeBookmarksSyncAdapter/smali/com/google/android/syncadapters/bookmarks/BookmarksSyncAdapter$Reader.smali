.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;
.super Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    }
.end annotation


# static fields
.field private static final SELECTION_BY_CLIENT_UNIQUE_TAG:Ljava/lang/String;

.field private static final SELECTION_BY_LOCAL_ID:Ljava/lang/String;

.field private static final SELECTION_BY_REMOTE_ID:Ljava/lang/String;

.field private static final SELECTION_BY_SERVER_UNIQUE_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mClientGuid:Ljava/lang/String;

.field private final mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_SERVER_UNIQUE_TAG:Ljava/lang/String;

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_CLIENT_UNIQUE_TAG:Ljava/lang/String;

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_REMOTE_ID:Ljava/lang/String;

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_LOCAL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;Ljava/lang/String;Landroid/accounts/Account;Landroid/content/ContentProviderClient;I)V
    .locals 1
    .parameter "updateQueue"
    .parameter "clientGuid"
    .parameter "account"
    .parameter "provider"
    .parameter "maxQueueSize"

    .prologue
    .line 1946
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    .line 1947
    iput-object p4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mProvider:Landroid/content/ContentProviderClient;

    .line 1948
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-direct {v0, p5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    .line 1949
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    .line 1950
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mClientGuid:Ljava/lang/String;

    .line 1951
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mAccount:Landroid/accounts/Account;

    .line 1952
    return-void
.end method

.method private figureOutEntryType(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    .locals 1
    .parameter "serverEntity"

    .prologue
    .line 2110
    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2111
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_SERVER_UNIQUE_TAG:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    .line 2118
    :goto_0
    return-object v0

    .line 2112
    :cond_0
    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2113
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_CLIENT_UNIQUE_TAG:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    goto :goto_0

    .line 2114
    :cond_1
    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2116
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_IDS:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    goto :goto_0

    .line 2118
    :cond_2
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->INVALID:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    goto :goto_0
.end method

.method private findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .locals 8
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "remoteId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/bookmarks/ProviderException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2130
    const/4 v7, 0x0

    .line 2132
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "show_deleted"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_BOOKMARKS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2144
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v6

    .line 2146
    .local v6, builder:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2147
    invoke-virtual {v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->clear()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2157
    if-eqz v7, :cond_0

    .line 2158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 2149
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2150
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader has detected more than one client record that matches a server record with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". All but one record will be ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_2
    invoke-virtual {v6, v7}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->parse(Landroid/database/Cursor;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2157
    if-eqz v7, :cond_0

    .line 2158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2157
    .end local v6           #builder:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final getMergeQueue()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    return-object v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 1959
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1960
    .local v16, status:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    const/4 v9, 0x0

    .line 1962
    .local v9, exitMsg:Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1963
    .local v12, remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1965
    .local v7, count:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->take()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    .line 1966
    .local v13, serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    if-nez v13, :cond_4

    .line 1967
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1968
    const-string v17, "BookmarksSync"

    const-string v18, "Update queue empty.  Exiting."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_1
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2100
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    .line 2104
    .end local v7           #count:I
    .end local v12           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :goto_2
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2105
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Reader thread exiting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_3
    return-void

    .line 1973
    .restart local v7       #count:I
    .restart local v12       #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :cond_4
    :try_start_1
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1974
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read item "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " from the update queue."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_5
    const/4 v5, 0x0

    .line 1977
    .local v5, clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    iget-object v11, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 1978
    .local v11, remoteId:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1979
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1980
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Truncating server changelist after "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " items, as the changelist contains more than one entry with a"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " given remote id: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1983
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1984
    const-string v17, "BookmarksSync"

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_1

    .line 2070
    .end local v5           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v7           #count:I
    .end local v11           #remoteId:Ljava/lang/String;
    .end local v12           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :catch_0
    move-exception v8

    .line 2071
    .local v8, e:Landroid/os/RemoteException;
    :try_start_2
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2072
    const-string v9, "Reader thread encountered a remote db error.  Bailing."

    .line 2073
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2074
    const-string v17, "BookmarksSync"

    move-object/from16 v0, v17

    invoke-static {v0, v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2100
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1988
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v5       #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .restart local v7       #count:I
    .restart local v11       #remoteId:Ljava/lang/String;
    .restart local v12       #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :cond_7
    :try_start_3
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1993
    .local v3, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1994
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->figureOutEntryType(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    move-result-object v14

    .line 1996
    .local v14, serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

    invoke-virtual {v14}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 2059
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Server entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is invalid.  Skipping."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2061
    const-string v17, "BookmarksSync"

    invoke-virtual {v13}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 2076
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v7           #count:I
    .end local v11           #remoteId:Ljava/lang/String;
    .end local v12           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v14           #serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    :catch_1
    move-exception v8

    .line 2077
    .local v8, e:Lcom/google/android/syncadapters/bookmarks/ProviderException;
    :try_start_4
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2078
    const-string v9, "Reader thread encountered a db error.  Bailing."

    .line 2079
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2080
    const-string v17, "BookmarksSync"

    move-object/from16 v0, v17

    invoke-static {v0, v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2100
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1998
    .end local v8           #e:Lcom/google/android/syncadapters/bookmarks/ProviderException;
    .restart local v3       #accountName:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    .restart local v5       #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .restart local v7       #count:I
    .restart local v11       #remoteId:Ljava/lang/String;
    .restart local v12       #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .restart local v14       #serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    :pswitch_0
    :try_start_5
    iget-object v15, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    .line 1999
    .local v15, serverUniqueTag:Ljava/lang/String;
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2000
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Seeking a client match for server-unique tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_9
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_SERVER_UNIQUE_TAG:Ljava/lang/String;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v15, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v5

    .line 2067
    .end local v15           #serverUniqueTag:Ljava/lang/String;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    new-instance v18, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;

    move-object/from16 v0, v18

    invoke-direct {v0, v13, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->put(Ljava/lang/Object;)V

    .line 2068
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2069
    goto/16 :goto_0

    .line 2012
    :pswitch_1
    iget-object v6, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    .line 2013
    .local v6, clientUniqueTag:Ljava/lang/String;
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2014
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Seeking a client match for client-unique tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_b
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_CLIENT_UNIQUE_TAG:Ljava/lang/String;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v6, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v5

    .line 2023
    goto :goto_3

    .line 2026
    .end local v6           #clientUniqueTag:Ljava/lang/String;
    :pswitch_2
    iget-object v0, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2027
    .local v10, localId:Ljava/lang/String;
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2028
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Seeking a client match for remote id tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_c
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_REMOTE_ID:Ljava/lang/String;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v11, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v5

    .line 2037
    iget-boolean v0, v5, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mClientGuid:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2043
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2044
    const-string v17, "BookmarksSync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Seeking a client match for local id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " with client GUID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v13, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_d
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_LOCAL_ID:Ljava/lang/String;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v10, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v5

    goto/16 :goto_3

    .line 2082
    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v7           #count:I
    .end local v10           #localId:Ljava/lang/String;
    .end local v11           #remoteId:Ljava/lang/String;
    .end local v12           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v14           #serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    :catch_2
    move-exception v8

    .line 2083
    .local v8, e:Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
    :try_start_6
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2084
    const-string v9, "Reader thread encountered a closed queue.  Bailing."

    .line 2085
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2086
    const-string v17, "BookmarksSync"

    move-object/from16 v0, v17

    invoke-static {v0, v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2100
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2088
    .end local v8           #e:Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
    :catch_3
    move-exception v8

    .line 2089
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_7
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2090
    const-string v9, "Reader thread interrupted.  Bailing."

    .line 2091
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2092
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v8

    .line 2093
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_8
    sget-object v16, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2094
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Reader thread threw an unknown error.  Bailing. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2096
    const-string v17, "BookmarksSync"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2097
    const-string v17, "BookmarksSync"

    move-object/from16 v0, v17

    invoke-static {v0, v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2100
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2100
    .end local v8           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    throw v17

    .line 1996
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
