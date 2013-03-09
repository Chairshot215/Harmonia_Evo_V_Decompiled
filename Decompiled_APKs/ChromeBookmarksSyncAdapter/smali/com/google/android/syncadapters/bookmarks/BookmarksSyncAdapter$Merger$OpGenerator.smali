.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpGenerator"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mClient:Landroid/content/ContentProviderClient;

.field private mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteIdToOpIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Landroid/content/SyncStats;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/SyncStats;)V
    .locals 1
    .parameter "client"
    .parameter "account"
    .parameter "stats"

    .prologue
    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mRemoteIdToOpIndexMap:Ljava/util/HashMap;

    .line 1598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    .line 1592
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mClient:Landroid/content/ContentProviderClient;

    .line 1593
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    .line 1594
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mStats:Landroid/content/SyncStats;

    .line 1595
    return-void
.end method

.method private addDelete(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    .locals 7
    .parameter "serverEntity"
    .parameter "clientEntity"

    .prologue
    .line 1718
    const/4 v0, 0x0

    .line 1719
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v4, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 1720
    .local v4, remoteId:Ljava/lang/String;
    iget-object v5, p2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1721
    .local v2, localId:J
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->fixMyOrphansOnModifyOrDelete(Ljava/lang/String;J)V

    .line 1724
    sget-object v5, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1726
    .local v1, deleteUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1728
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    return-void
.end method

.method private addInsert(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    .locals 5
    .parameter "serverEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1665
    new-instance v2, Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->asContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1666
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v3, "account_type"

    iget-object v4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    sget-object v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1674
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->deorphanizeMe(Landroid/content/ContentProviderOperation$Builder;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Landroid/content/ContentValues;)V

    .line 1675
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1676
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    iget-object v1, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 1681
    .local v1, remoteId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mRemoteIdToOpIndexMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->fixMyOrphansOnInsert(Ljava/lang/String;)V

    .line 1686
    return-void
.end method

.method private addModify(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    .locals 10
    .parameter "serverEntity"
    .parameter "clientEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1691
    new-instance v4, Landroid/content/ContentValues;

    invoke-virtual {p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->asContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1692
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "account_name"

    iget-object v6, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v5, "account_type"

    iget-object v6, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v5, "dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    const-string v5, "insert_after"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1697
    iget-object v5, p2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1698
    .local v1, localId:J
    iget-object v3, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 1699
    .local v3, remoteId:Ljava/lang/String;
    sget-object v5, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "_id=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1707
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, v0, p1, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->deorphanizeMe(Landroid/content/ContentProviderOperation$Builder;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Landroid/content/ContentValues;)V

    .line 1708
    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1709
    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->fixMyOrphansOnModifyOrDelete(Ljava/lang/String;J)V

    .line 1712
    return-void
.end method

.method private deorphanizeMe(Landroid/content/ContentProviderOperation$Builder;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "builder"
    .parameter "serverEntity"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1623
    iget-object v2, p2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteParentId:Ljava/lang/String;

    .line 1624
    .local v2, remoteParentId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mRemoteIdToOpIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1625
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mRemoteIdToOpIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1626
    .local v1, opIndexOfParent:I
    const-string v3, "parent"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1638
    .end local v1           #opIndexOfParent:I
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mClient:Landroid/content/ContentProviderClient;

    #calls: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->getLocalIdFromRemoteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;

    move-result-object v0

    .line 1632
    .local v0, localParentIdByRead:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 1633
    const-string v3, "parent"

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private fixMyOrphansOnInsert(Ljava/lang/String;)V
    .locals 7
    .parameter "myRemoteId"

    .prologue
    .line 1645
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1646
    .local v0, backRefIndex:I
    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "parent"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_name=? AND account_type=? AND sync1=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1651
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    return-void
.end method

.method private fixMyOrphansOnModifyOrDelete(Ljava/lang/String;J)V
    .locals 6
    .parameter "myRemoteId"
    .parameter "myLocalId"

    .prologue
    .line 1655
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "parent"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "account_name=? AND account_type=? AND sync1=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1660
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V
    .locals 6
    .parameter "serverEntity"
    .parameter "clientEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x2

    .line 1742
    iget-boolean v0, p2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    if-eqz v0, :cond_3

    .line 1743
    iget-boolean v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    if-eqz v0, :cond_1

    .line 1744
    const-string v0, "BookmarksSync"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server is trying to delete remote id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but it\'s already gone.  Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mStats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    .line 1780
    :goto_0
    return-void

    .line 1752
    :cond_1
    const-string v0, "BookmarksSync"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    const-string v0, "BookmarksSync"

    const-string v1, "This is an INSERT."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mStats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    .line 1756
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->addInsert(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    goto :goto_0

    .line 1759
    :cond_3
    iget-boolean v0, p2, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDirty:Z

    if-eqz v0, :cond_4

    .line 1762
    const-string v0, "BookmarksSync"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1763
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflict detected with remote id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Server copy will win."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_4
    iget-boolean v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsDeleted:Z

    if-eqz v0, :cond_6

    .line 1768
    const-string v0, "BookmarksSync"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1769
    const-string v0, "BookmarksSync"

    const-string v1, "This is a DELETE."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_5
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mStats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    .line 1772
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->addDelete(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    goto :goto_0

    .line 1775
    :cond_6
    const-string v0, "BookmarksSync"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1776
    const-string v0, "BookmarksSync"

    const-string v1, "This is a MODIFY."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_7
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mStats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    .line 1779
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->addModify(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    goto :goto_0
.end method

.method public generate()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger$OpGenerator;->mOps:Ljava/util/ArrayList;

    return-object v0
.end method
