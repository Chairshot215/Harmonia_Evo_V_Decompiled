.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.source "SubscribedFeedsSyncAdapter.java"


# instance fields
.field private mAccountHasEntries:Z

.field private final mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 4
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    .line 77
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient;

    invoke-direct {v1, p1}, Lcom/google/android/common/gdata/AndroidGDataClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;

    new-instance v3, Lcom/google/android/common/gdata/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/common/gdata/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    .line 82
    return-void
.end method

.method private hasEntries(Landroid/accounts/Account;)Z
    .locals 10
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 85
    const/4 v6, 0x0

    .line 87
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget-object v9, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 99
    :cond_0
    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 96
    :goto_0
    return v0

    .line 99
    :cond_2
    if-eqz v6, :cond_3

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 96
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_4
    throw v0
.end method


# virtual methods
.method protected cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .parameter "c"
    .parameter "baseEntry"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v10, "_sync_account"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, accountName:Ljava/lang/String;
    const-string v10, "_sync_account_type"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, accountType:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v0, account:Landroid/accounts/Account;
    const-string v10, "service"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, service:Ljava/lang/String;
    const-string v10, "_sync_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, id:Ljava/lang/String;
    const-string v10, "feed"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, feed:Ljava/lang/String;
    const-string v10, "_sync_local_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 234
    .local v9, syncLocalId:Ljava/lang/Long;
    new-instance v8, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    const-string v10, "fake_auth_token"

    invoke-direct {v8, v5, v7, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v8, subscribedFeedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    move-object v4, p2

    .line 235
    check-cast v4, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    .line 236
    .local v4, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    if-eqz v6, :cond_0

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setId(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v4}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setEditUri(Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getRoutingInfoForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setRoutingInfo(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4, v8}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 242
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setClientToken(Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, createUrl:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 248
    :cond_1
    return-object v3
.end method

.method protected deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 3
    .parameter "c"
    .parameter "entry"

    .prologue
    .line 253
    const-string v1, "_sync_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 215
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p2, v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 207
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p2, v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getFeedEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    return-object v0
.end method

.method protected getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 167
    const-string v0, "https://android.clients.google.com/gsync/sub"

    return-object v0
.end method

.method protected getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    return-object v0
.end method

.method public getRoutingInfoForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .parameter "account"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 269
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 270
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v7, "android_id"

    const-wide/16 v8, 0x0

    invoke-static {v5, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 271
    .local v2, androidId:J
    const-string v7, "true"

    const-string v8, "gsync_rmq2_routing_info"

    const-string v9, "true"

    invoke-static {v5, v8, v9}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 274
    .local v6, useRmq2RoutingInfo:Z
    if-eqz v6, :cond_0

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    :goto_0
    return-object v7

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 278
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v7, "com.google"

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 280
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v7, v1

    if-nez v7, :cond_1

    .line 281
    const-string v7, "Sync"

    const-string v8, "No matching accounts."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v7, 0x0

    goto :goto_0

    .line 284
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gtalk://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 1
    .parameter "syncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->setContainsDiffs(Z)V

    .line 198
    invoke-super/range {p0 .. p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    goto :goto_0
.end method

.method protected handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
    .locals 2
    .parameter "syncData"
    .parameter "feed"

    .prologue
    .line 124
    const-string v0, "Sync"

    const-string v1, "subscribed feeds don\'t use tombstones"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .locals 1
    .parameter "stats"

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected newEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;-><init>()V

    return-object v0
.end method

.method public onAccountsChanged([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 203
    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .locals 1
    .parameter "account"
    .parameter "manualSync"
    .parameter "result"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->hasEntries(Landroid/accounts/Account;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    .line 108
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccount:Landroid/accounts/Account;

    goto :goto_0
.end method

.method protected updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 9
    .parameter "feed"
    .parameter "syncLocalId"
    .parameter "baseEntry"
    .parameter "provider"
    .parameter "syncInfo"
    .parameter "feedSyncData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 140
    .local v0, account:Landroid/accounts/Account;
    const-string v7, "_sync_account"

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v7, "_sync_account_type"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v7, "_sync_local_id"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v2, p3

    .line 143
    check-cast v2, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    .line 144
    .local v2, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    invoke-virtual {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getId()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, editUri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 147
    .local v6, version:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, serverId:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    const-string v7, "_sync_id"

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v7, "_sync_version"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v4           #serverId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    sget-object v7, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v7, v5}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v7, "feed"

    invoke-virtual {v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 158
    const-string v7, "_sync_time"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_2
    const-string v7, "_sync_dirty"

    const-string v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v7, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v7, v5}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 2
    .parameter "params"
    .parameter "feedSyncData"

    .prologue
    .line 176
    const-string v0, "routinginfo"

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getRoutingInfoForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
