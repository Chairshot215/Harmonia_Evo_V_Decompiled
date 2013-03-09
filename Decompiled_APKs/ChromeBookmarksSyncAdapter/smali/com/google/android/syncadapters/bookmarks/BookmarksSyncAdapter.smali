.class public Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    }
.end annotation


# static fields
.field static BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

.field static BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

.field private static INITIAL_VERSION:J

.field static final PROJ_BOOKMARKS:[Ljava/lang/String;

.field public static PROJ_CLIENT_UNIQUE_TAG:I

.field public static PROJ_DATE_CREATED:I

.field public static PROJ_DATE_MODIFIED:I

.field public static PROJ_DIRTY:I

.field public static PROJ_FAVICON:I

.field public static PROJ_INSERT_AFTER:I

.field public static PROJ_IS_DELETED:I

.field public static PROJ_IS_FOLDER:I

.field public static PROJ_LOCAL_ID:I

.field public static PROJ_LOCAL_PARENT_ID:I

.field public static PROJ_LOCAL_VERSION:I

.field public static PROJ_POSITION:I

.field public static PROJ_REMOTE_ID:I

.field public static PROJ_REMOTE_INSERT_AFTER:I

.field public static PROJ_REMOTE_PARENT_ID:I

.field public static PROJ_REMOTE_VERSION:I

.field public static PROJ_SERVER_UNIQUE_TAG:I

.field public static PROJ_TITLE:I

.field public static PROJ_URL:I

.field private static ROOT_ID:J

.field static final SYNC_STATE_URI_FOR_READ:Landroid/net/Uri;

.field static final SYNC_STATE_URI_FOR_WRITE:Landroid/net/Uri;


# instance fields
.field private mAuthInfoBuilder:Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

.field private mMaxCommitBatchSize:I

.field private final mSyncClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    sget-object v0, Landroid/provider/BrowserContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "show_deleted"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_READ:Landroid/net/Uri;

    .line 84
    sget-object v0, Landroid/provider/BrowserContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_WRITE:Landroid/net/Uri;

    .line 88
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "show_deleted"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    .line 94
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->INITIAL_VERSION:J

    .line 99
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->ROOT_ID:J

    .line 113
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "favicon"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "parent"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "insert_after"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "parent_source"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "insert_after_source"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sync4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_BOOKMARKS:[Ljava/lang/String;

    .line 135
    sput v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_TITLE:I

    .line 136
    sput v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_URL:I

    .line 137
    sput v5, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_FAVICON:I

    .line 138
    sput v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    .line 139
    sput v7, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_PARENT_ID:I

    .line 140
    const/4 v0, 0x5

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_FOLDER:I

    .line 141
    const/4 v0, 0x6

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_POSITION:I

    .line 142
    const/4 v0, 0x7

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_INSERT_AFTER:I

    .line 143
    const/16 v0, 0x8

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    .line 144
    const/16 v0, 0x9

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_DELETED:I

    .line 145
    const/16 v0, 0xa

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DIRTY:I

    .line 146
    const/16 v0, 0xb

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_ID:I

    .line 147
    const/16 v0, 0xc

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_CREATED:I

    .line 148
    const/16 v0, 0xd

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_MODIFIED:I

    .line 149
    const/16 v0, 0xe

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_PARENT_ID:I

    .line 150
    const/16 v0, 0xf

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_INSERT_AFTER:I

    .line 151
    const/16 v0, 0x10

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_VERSION:I

    .line 152
    const/16 v0, 0x11

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_SERVER_UNIQUE_TAG:I

    .line 153
    const/16 v0, 0x12

    sput v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_CLIENT_UNIQUE_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;)V
    .locals 1
    .parameter "context"
    .parameter "syncClient"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 217
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mMaxCommitBatchSize:I

    .line 218
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 219
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mSyncClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    .line 220
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;

    invoke-direct {v0}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$DefaultBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mAuthInfoBuilder:Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

    .line 221
    return-void
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 69
    sget-wide v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->ROOT_ID:J

    return-wide v0
.end method

.method private generateNewGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCommandFromServer(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)V
    .locals 5
    .parameter "command"

    .prologue
    const/4 v4, 0x5

    .line 1363
    const/16 v1, 0x64

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getMaxCommitBatchSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1364
    .local v0, newCommitBatchSize:I
    if-ge v0, v4, :cond_1

    .line 1365
    const-string v1, "BookmarksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring the server command to change the commit batch size to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getMaxCommitBatchSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", as this is less than the minimum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowed by the client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iput v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mMaxCommitBatchSize:I

    .line 1371
    const-string v1, "BookmarksSync"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1372
    const-string v1, "BookmarksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing the max commit batch size to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mMaxCommitBatchSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at the server\'s request."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private innerPerformSync(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/chrome/bookmarks/sync/api/AuthInfo;)V
    .locals 42
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .parameter "authInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/android/syncadapters/bookmarks/ProviderException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Commencing sync of bookmarks for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 375
    :cond_1
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v5, v11

    iput-wide v5, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 376
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    const-string v4, "BookmarksSync"

    const-string v5, "The account is either missing a name or type."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_2
    :goto_0
    return-void

    .line 383
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_chrome_bookmarks_sync_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    const/16 v33, 0x1

    .line 391
    .local v33, isEnabled:Z
    :goto_1
    const-string v4, "initialize"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 392
    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    .line 393
    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    if-eqz v33, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p2

    invoke-static {v5, v0, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0

    .line 388
    .end local v33           #isEnabled:Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/BrowserContract$Settings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v33

    .restart local v33       #isEnabled:Z
    goto :goto_1

    .line 393
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 400
    :cond_6
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_READ:Landroid/net/Uri;

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v39

    .line 403
    .local v39, syncStateBytes:[B
    if-nez v39, :cond_12

    .line 404
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->generateNewGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->setClientGuid(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->setServerBday(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    move-result-object v10

    .line 408
    .local v10, syncState:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->toBytes()[B

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 414
    :goto_3
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 415
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial sync state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_chrome_bookmarks_sync_max_queue_size"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 422
    .local v7, maxQueueSize:I
    new-instance v3, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    invoke-direct {v3, v7}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;-><init>(I)V

    .line 425
    .local v3, updateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;
    new-instance v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;

    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mClientGuid:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->access$000(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;Ljava/lang/String;Landroid/accounts/Account;Landroid/content/ContentProviderClient;I)V

    .line 427
    .local v2, reader:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 429
    new-instance v8, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;

    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->getMergeQueue()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;Landroid/accounts/Account;Landroid/content/SyncStats;Landroid/content/ContentProviderClient;)V

    .line 431
    .local v8, merger:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 435
    const/16 v31, 0x0

    .line 436
    .local v31, fatalErrorEncountered:Z
    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getRemoteVersion()Ljava/lang/Long;

    move-result-object v13

    .line 437
    .local v13, fromRemoteVersion:Ljava/lang/Long;
    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getProgressMarkerToken()[B

    move-result-object v16

    .line 438
    .local v16, fromProgressMarkerToken:[B
    const/16 v40, 0x0

    .line 440
    .local v40, toProgressMarker:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    const/16 v34, 0x0

    .line 441
    .local v34, loopCount:I
    const/16 v26, 0x0

    .line 442
    .local v26, changesRemaining:Ljava/lang/Long;
    :cond_8
    add-int/lit8 v34, v34, 0x1

    const/16 v4, 0x32

    move/from16 v0, v34

    if-gt v0, v4, :cond_b

    .line 443
    :try_start_0
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 444
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update loop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->hasFailed()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 449
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 450
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bailing due to reader error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_a
    const/16 v31, 0x1

    .line 574
    :cond_b
    :goto_4
    const/16 v4, 0x32

    move/from16 v0, v34

    if-le v0, v4, :cond_c

    .line 575
    const/16 v31, 0x1

    .line 576
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Landroid/content/SyncResult;->tooManyRetries:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_c
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 585
    const-string v4, "BookmarksSync"

    const-string v5, "Cleaning up update queue."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->close()V

    .line 591
    :goto_5
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 592
    const-string v4, "BookmarksSync"

    const-string v5, "Waiting on reader thread to finish update..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_e
    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->waitUntilDone()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-result-object v37

    .line 597
    .local v37, readerReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    invoke-virtual {v8}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->waitUntilDone()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-result-object v35

    .line 598
    .local v35, mergerReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 599
    const-string v4, "BookmarksSync"

    const-string v5, "Waiting on merger thread to finish merging..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_f
    const-string v4, "Reader"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->throwIfError(Ljava/lang/String;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;)V

    .line 603
    const-string v4, "Merger"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v4, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->throwIfError(Ljava/lang/String;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;)V

    .line 605
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 606
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating progress marker to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_10
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->setProgressMarkerToken([B)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getClientGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->setClientGuid(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getServerBday()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->setServerBday(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    move-result-object v10

    .line 613
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->toBytes()[B

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 617
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 618
    const-string v4, "BookmarksSync"

    const-string v5, "Updates complete."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_11
    if-eqz v31, :cond_26

    .line 622
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Skipping any commits."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 411
    .end local v2           #reader:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;
    .end local v3           #updateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;
    .end local v7           #maxQueueSize:I
    .end local v8           #merger:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;
    .end local v10           #syncState:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
    .end local v13           #fromRemoteVersion:Ljava/lang/Long;
    .end local v16           #fromProgressMarkerToken:[B
    .end local v26           #changesRemaining:Ljava/lang/Long;
    .end local v31           #fatalErrorEncountered:Z
    .end local v34           #loopCount:I
    .end local v35           #mergerReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    .end local v37           #readerReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    .end local v40           #toProgressMarker:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_12
    invoke-static/range {v39 .. v39}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->parseFrom([B)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    move-result-object v10

    .restart local v10       #syncState:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;
    goto/16 :goto_3

    .line 456
    .restart local v2       #reader:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;
    .restart local v3       #updateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;
    .restart local v7       #maxQueueSize:I
    .restart local v8       #merger:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;
    .restart local v13       #fromRemoteVersion:Ljava/lang/Long;
    .restart local v16       #fromProgressMarkerToken:[B
    .restart local v26       #changesRemaining:Ljava/lang/Long;
    .restart local v31       #fatalErrorEncountered:Z
    .restart local v34       #loopCount:I
    .restart local v40       #toProgressMarker:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;
    :cond_13
    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->hasFailed()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 457
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 458
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bailing due to merger error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Merger;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_14
    const/16 v31, 0x1

    .line 462
    goto/16 :goto_4

    .line 465
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_chrome_bookmarks_sync_num_items_per_batch"

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 469
    .local v15, batchSize:I
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 470
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting server updates from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with batch size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mSyncClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getClientGuid()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v12, p5

    invoke-interface/range {v11 .. v16}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;->getServerUpdates(Lcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/Long;Ljava/lang/String;I[B)Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;

    move-result-object v41

    .line 481
    .local v41, updateResult:Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "BookmarksSync"

    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_17
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v4

    sget-object v5, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->MIGRATION_DONE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    if-ne v4, v5, :cond_1b

    .line 485
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v36, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v24, v4

    const/4 v4, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v24, v4

    .line 489
    .local v24, accountSelectionArgs:[Ljava/lang/String;
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_name=? AND account_type=?"

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_name=? AND account_type=?"

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    :try_start_2
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 503
    :goto_6
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We have purged the db for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to a backend migration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 578
    .end local v15           #batchSize:I
    .end local v24           #accountSelectionArgs:[Ljava/lang/String;
    .end local v36           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v41           #updateResult:Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    :catch_0
    move-exception v28

    .line 579
    .local v28, e:Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
    :try_start_4
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 580
    const-string v4, "BookmarksSync"

    const-string v5, "Queue already closed."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 584
    :cond_18
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 585
    const-string v4, "BookmarksSync"

    const-string v5, "Cleaning up update queue."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_19
    invoke-virtual {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->close()V

    goto/16 :goto_5

    .line 499
    .end local v28           #e:Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
    .restart local v15       #batchSize:I
    .restart local v24       #accountSelectionArgs:[Ljava/lang/String;
    .restart local v36       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v41       #updateResult:Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    :catch_1
    move-exception v28

    .line 500
    .local v28, e:Landroid/content/OperationApplicationException;
    :try_start_5
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error cleaning up after getting a MIGRATION_DONE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 584
    .end local v15           #batchSize:I
    .end local v24           #accountSelectionArgs:[Ljava/lang/String;
    .end local v28           #e:Landroid/content/OperationApplicationException;
    .end local v36           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v41           #updateResult:Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    :catchall_0
    move-exception v4

    const-string v5, "BookmarksSync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 585
    const-string v5, "BookmarksSync"

    const-string v6, "Cleaning up update queue."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_1a
    invoke-virtual {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->close()V

    throw v4

    .line 507
    .restart local v15       #batchSize:I
    .restart local v41       #updateResult:Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    :cond_1b
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->throwIfError(Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;)V

    .line 511
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v27

    .line 512
    .local v27, command:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    if-eqz v27, :cond_1c

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->handleCommandFromServer(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)V

    .line 516
    :cond_1c
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getChangesRemaining()Ljava/lang/Long;

    move-result-object v26

    .line 517
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getEntries()Ljava/util/List;

    move-result-object v30

    .line 520
    .local v30, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;>;"
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getProgressMarkers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 521
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getProgressMarkers()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-object/from16 v40, v0

    .line 522
    if-eqz v40, :cond_1e

    .line 523
    invoke-virtual/range {v40 .. v40}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDataTypeId()I

    move-result v4

    const v5, 0x8088

    if-eq v4, v5, :cond_1d

    .line 524
    new-instance v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected progress marker type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getDataTypeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 527
    :cond_1d
    invoke-virtual/range {v40 .. v40}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v16

    .line 529
    :cond_1e
    #getter for: Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->mServerBday:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->access$100(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    .line 530
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getStoreBirthday()Ljava/lang/String;

    move-result-object v38

    .line 531
    .local v38, storeBday:Ljava/lang/String;
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 532
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating the server bday to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1f
    invoke-static {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->newBuilder(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->setServerBday(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;

    move-result-object v10

    .line 537
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->SYNC_STATE_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-virtual/range {p5 .. p5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v10}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->toBytes()[B

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 541
    .end local v38           #storeBday:Ljava/lang/String;
    :cond_20
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 542
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries in the update queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_21
    if-eqz v30, :cond_23

    .line 546
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    .line 547
    .local v29, entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v25

    .line 549
    .local v25, builder:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->parse(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    .line 550
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 551
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read entity with remote id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->getIdString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_22
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->put(Ljava/lang/Object;)V

    goto :goto_7

    .line 556
    .end local v25           #builder:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    .end local v29           #entity:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;
    .end local v32           #i$:Ljava/util/Iterator;
    :cond_23
    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getChangesRemaining()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-nez v4, :cond_8

    .line 557
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 558
    const-string v4, "BookmarksSync"

    const-string v5, "No changes left on server."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 562
    :cond_24
    if-eqz v26, :cond_25

    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getProgressMarkers()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_25

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-nez v4, :cond_25

    .line 564
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 565
    const-string v4, "BookmarksSync"

    const-string v5, "No changes left on server."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 568
    :cond_25
    if-eqz v26, :cond_8

    invoke-virtual/range {v41 .. v41}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getProgressMarkers()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-eqz v4, :cond_8

    .line 570
    new-instance v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v5, "Server did not provide a version withits update, even though there appear to be changes remaining."

    invoke-direct {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 625
    .end local v15           #batchSize:I
    .end local v27           #command:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .end local v30           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;>;"
    .end local v41           #updateResult:Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;
    .restart local v35       #mergerReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    .restart local v37       #readerReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
    :cond_26
    new-instance v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mSyncClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mMaxCommitBatchSize:I

    move/from16 v22, v0

    move-object/from16 v18, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v23, v10

    invoke-direct/range {v17 .. v23}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;-><init>(Landroid/content/ContentProviderClient;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;Landroid/content/SyncResult;Lcom/google/chrome/bookmarks/sync/api/AuthInfo;ILcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)V

    .line 632
    .local v17, commitHandler:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->handle()V

    .line 633
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 634
    const-string v4, "BookmarksSync"

    const-string v5, "Commits complete."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .locals 17
    .parameter "account"

    .prologue
    .line 312
    const-string v15, "bookmarks"

    .line 315
    .local v15, subscriptionUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 316
    .local v10, existingFeeds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 317
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "feed"

    aput-object v4, v3, v2

    .line 318
    .local v3, projection:[Ljava/lang/String;
    const-string v16, "_sync_account=? AND _sync_account_type=? AND authority=?"

    .line 321
    .local v16, where:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v5, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "com.android.browser"

    aput-object v4, v5, v2

    .line 323
    .local v5, values:[Ljava/lang/String;
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_sync_account=? AND _sync_account_type=? AND authority=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 325
    .local v7, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 327
    .local v13, id:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 328
    .local v11, feed:Ljava/lang/String;
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v11           #feed:Ljava/lang/String;
    .end local v13           #id:J
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 335
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 337
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v2, "_sync_account"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "_sync_account_type"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "feed"

    invoke-virtual {v8, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "service"

    const-string v4, "chromiumsync"

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "authority"

    const-string v4, "com.android.browser"

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 351
    .end local v8           #contentValues:Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 352
    .local v9, existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 353
    .restart local v13       #id:J
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 347
    .end local v9           #existing:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #id:J
    :cond_1
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 356
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private throwIfError(Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;)V
    .locals 3
    .parameter "updateResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1297
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1320
    :pswitch_0
    return-void

    .line 1304
    :pswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update request returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :pswitch_2
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server reports a different identifier (birthday) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/UpdateResult;->getStoreBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which does not match the client value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The service has rejected our request due to throttling."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :pswitch_4
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v1, "Update request returned USER_NOT_ACTIVATED."

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private throwIfError(Ljava/lang/String;Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;)V
    .locals 3
    .parameter "messagePrefix"
    .parameter "reporter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1330
    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->hasSucceededOrPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1334
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getStatus()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1336
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Parse (hard) error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, message:Ljava/lang/String;
    new-instance v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    invoke-direct {v1, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1340
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Db (hard) error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1341
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    invoke-direct {v1, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1344
    .end local v0           #message:Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Protocol (hard) error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    invoke-direct {v1, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    .end local v0           #message:Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Network (soft) error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1352
    .end local v0           #message:Ljava/lang/String;
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Protocol (soft) error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1356
    .end local v0           #message:Ljava/lang/String;
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Auth (soft) error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Lcom/google/wireless/gdata2/client/AuthenticationException;

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 2253
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 2254
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2256
    :cond_0
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 2257
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2259
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 2260
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2262
    :cond_2
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 2263
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2265
    :cond_3
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    .line 2266
    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2268
    :cond_4
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2269
    return-void
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 2243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2244
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 2245
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.browser"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2247
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x2

    .line 240
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mAuthInfoBuilder:Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;->setContext(Landroid/content/Context;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;->setAccount(Landroid/accounts/Account;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

    move-result-object v0

    const-string v1, "chromiumsync"

    invoke-interface {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;->setAuthTokenType(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;->build()Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    move-result-object v5

    .local v5, authInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 246
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->innerPerformSync(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;Lcom/google/chrome/bookmarks/sync/api/AuthInfo;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v6

    .line 252
    .local v6, e:Landroid/os/RemoteException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 253
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync failed due to provider issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "BookmarksSync"

    const-string v1, "Error details: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 258
    .local v6, e:Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;
    invoke-virtual {v6}, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 259
    invoke-virtual {v5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->invalidateAuthToken()V

    .line 260
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 264
    :goto_1
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync failed due to http error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 262
    :cond_1
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1

    .line 268
    .end local v6           #e:Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;
    :catch_2
    move-exception v6

    .line 269
    .local v6, e:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 270
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync failed due to hard error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "BookmarksSync"

    const-string v1, "Error details: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 274
    .end local v6           #e:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;
    :catch_3
    move-exception v6

    .line 275
    .local v6, e:Ljava/io/IOException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 276
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync failed due to soft error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "BookmarksSync"

    const-string v1, "Error details: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 280
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 281
    .local v6, e:Lcom/google/android/syncadapters/bookmarks/ProviderException;
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 282
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync failed due to provider issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/syncadapters/bookmarks/ProviderException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "BookmarksSync"

    const-string v1, "Error details: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 286
    .end local v6           #e:Lcom/google/android/syncadapters/bookmarks/ProviderException;
    :catch_5
    move-exception v6

    .line 287
    .local v6, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    invoke-virtual {v5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->invalidateAuthToken()V

    .line 288
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 289
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync failed due to authentication issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/client/AuthenticationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "BookmarksSync"

    const-string v1, "Error details: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 293
    .end local v6           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_6
    move-exception v6

    .line 294
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "BookmarksSync"

    const-string v1, "Sync failed due to thread interruption."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v0, "BookmarksSync"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const-string v0, "BookmarksSync"

    const-string v1, "Error details: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0
.end method

.method public setAuthInfoBuilder(Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;)V
    .locals 0
    .parameter "authInfoBuilder"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->mAuthInfoBuilder:Lcom/google/chrome/bookmarks/sync/api/AuthInfo$Builder;

    .line 230
    return-void
.end method
