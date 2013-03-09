.class public final Lcom/google/android/gm/provider/MailEngine;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailEngine$MailStoreOpenHelper;,
        Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;,
        Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;,
        Lcom/google/android/gm/provider/MailEngine$NormalHttpRequestRunner;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;,
        Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
        Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;,
        Lcom/google/android/gm/provider/MailEngine$MessageIdPair;,
        Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;,
        Lcom/google/android/gm/provider/MailEngine$ConversationCursor;,
        Lcom/google/android/gm/provider/MailEngine$MatrixCursorWithExtra;,
        Lcom/google/android/gm/provider/MailEngine$CloneableMessageCursor;,
        Lcom/google/android/gm/provider/MailEngine$NetworkCursor;,
        Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;,
        Lcom/google/android/gm/provider/MailEngine$SyncThread;,
        Lcom/google/android/gm/provider/MailEngine$PublicMailStore;,
        Lcom/google/android/gm/provider/MailEngine$SyncInfo;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;,
        Lcom/google/android/gm/provider/MailEngine$Preferences;,
        Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;,
        Lcom/google/android/gm/provider/MailEngine$ClientCreated;
    }
.end annotation


# static fields
.field private static final CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

.field static final FULL_TEXT_SEARCH_TABLES:[Ljava/lang/String;

.field static final LABEL_PROJECTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_MESSAGE_FROM_SEARCH_COLUMNS:[Ljava/lang/String;

.field static final LOCAL_MESSAGE_TO_SEARCH_COLUMNS:[Ljava/lang/String;

.field private static final MESSAGE_COLUMN_EXTRAS:[[Ljava/lang/String;

.field private static final MESSAGE_PROJECTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROJECTION_MESSAGE_SYNCED:[Ljava/lang/String;

.field private static final PROJECTION_VALUE:[Ljava/lang/String;

.field private static final PROJECTON_MESSAGE_ID_AND_CONVERSATION_ID:[Ljava/lang/String;

.field private static USER_AGENT_STRING:Ljava/lang/String;

.field static sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

.field private static sMailEngineCreationHandler:Landroid/os/Handler;

.field private static sMailEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;",
            ">;"
        }
    .end annotation
.end field

.field static sNextQueryId:J

.field private static sNotifyDatasetChangedThread:Landroid/os/HandlerThread;

.field private static sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

.field private static sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

.field private mBackgroundSyncThread:Ljava/lang/Thread;

.field private final mBackgroundSyncThreadLock:Ljava/lang/Object;

.field private final mBackgroundTaskHandler:Landroid/os/Handler;

.field private volatile mBackgroundTasksDisabledForTesting:Z

.field private mContext:Landroid/content/Context;

.field private final mConversationCursorForQueryLock:Ljava/lang/Object;

.field private final mCookieStore:Lorg/apache/http/client/CookieStore;

.field private final mDatasetChangedNotifier:Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field final mDbLock:Ljava/lang/Object;

.field private volatile mFakeIoException:Z

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

.field private mInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Handler;",
            "Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitializationComplete:Z

.field private mInitializationLock:Ljava/lang/Object;

.field mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mIsSyncCancelled:Z

.field private volatile mIsSyncInProgress:Z

.field private mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

.field private final mLabelMapObserver:Ljava/util/Observer;

.field private mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

.field private mLastQuery:Ljava/lang/String;

.field private mLastSyncLoopCheckTime:J

.field private mLastSyncThreadTime:J

.field mMailCore:Lcom/google/android/gm/provider/MailCore;

.field private volatile mMailEngineClosing:Z

.field private mMailIndexRequested:Z

.field mMailStore:Lcom/google/android/gm/provider/MailStore;

.field mMailSync:Lcom/google/android/gm/provider/MailSync;

.field private final mMessageCursorLogicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageCursorLogicMapLock:Ljava/lang/Object;

.field private final mNotificationLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationsRequestsRegistered:Z

.field mOperations:Lcom/google/android/gm/provider/Operations;

.field private final mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

.field mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mStartAccountIndexingIntent:Landroid/app/PendingIntent;

.field private mStatus:Ljava/util/BitSet;

.field private mSyncCountPerPeriod:I

.field private final mSyncLock:Ljava/lang/Object;

.field private mSyncThread:Ljava/lang/Thread;

.field private final mSyncThreadLock:Ljava/lang/Object;

.field private mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private final mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mUrls:Lcom/google/android/gm/provider/Urls;

.field private mValidateSyncSets:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 221
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "conversation_fts_table"

    aput-object v1, v0, v4

    const-string v1, "message_fts_table"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->FULL_TEXT_SEARCH_TABLES:[Ljava/lang/String;

    .line 226
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "toAddresses"

    aput-object v1, v0, v4

    const-string v1, "ccAddresses"

    aput-object v1, v0, v5

    const-string v1, "bccAddresses"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->LOCAL_MESSAGE_TO_SEARCH_COLUMNS:[Ljava/lang/String;

    .line 231
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "fromAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->LOCAL_MESSAGE_FROM_SEARCH_COLUMNS:[Ljava/lang/String;

    .line 277
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "messageId"

    aput-object v1, v0, v4

    const-string v1, "conversation"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->PROJECTON_MESSAGE_ID_AND_CONVERSATION_ID:[Ljava/lang/String;

    .line 281
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_VALUE:[Ljava/lang/String;

    .line 282
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "synced"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_MESSAGE_SYNCED:[Ljava/lang/String;

    .line 299
    sput-object v7, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;

    .line 317
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^^cached"

    aput-object v1, v0, v4

    const-string v1, "^^out"

    aput-object v1, v0, v5

    const-string v1, "^imi"

    aput-object v1, v0, v6

    const-string v1, "^imn"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "^im"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^io_ns"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^^important"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^^unimportant"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

    .line 471
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    .line 487
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    .line 491
    sput-object v7, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;

    .line 500
    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "clientCreated"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "synced"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "queryId"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "messages._id"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "conversation"

    aput-object v3, v2, v4

    const-string v3, "messages.conversation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "subject"

    aput-object v3, v2, v4

    const-string v3, "messages.subject"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "snippet"

    aput-object v3, v2, v4

    const-string v3, "messages.snippet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "fromAddress"

    aput-object v3, v2, v4

    const-string v3, "messages.fromAddress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "toAddresses"

    aput-object v3, v2, v4

    const-string v3, "messages.toAddresses"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ccAddresses"

    aput-object v3, v2, v4

    const-string v3, "messages.ccAddresses"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "bccAddresses"

    aput-object v3, v2, v4

    const-string v3, "messages.bccAddresses"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "body"

    aput-object v3, v2, v4

    const-string v3, "CASE WHEN bodyCompressed IS NULL THEN \'0\' || messages.body ELSE \'1\' || bodyCompressed END"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "labelIds"

    aput-object v3, v2, v4

    const-string v3, "group_concat(labels_id, \' \')"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "labelCount"

    aput-object v3, v2, v4

    const-string v3, "COUNT(*)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "messageLabels"

    aput-object v3, v2, v4

    const-string v3, "group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || (CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden), \'^**^\')"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isStarred"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^t\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isDraft"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^r\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isInOutbox"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^^out\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "isUnread"

    aput-object v3, v2, v4

    const-string v3, "SUM(CASE labels.canonicalName WHEN \'^u\' THEN 1 ELSE 0 END)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_COLUMN_EXTRAS:[[Ljava/lang/String;

    .line 547
    new-instance v0, Lcom/google/android/gm/provider/ProjectionMapBuilder;

    invoke-direct {v0}, Lcom/google/android/gm/provider/ProjectionMapBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->addIdentities([Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_COLUMN_EXTRAS:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->addTransformations([[Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->getMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    .line 552
    new-instance v0, Lcom/google/android/gm/provider/ProjectionMapBuilder;

    invoke-direct {v0}, Lcom/google/android/gm/provider/ProjectionMapBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->addIdentities([Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    ELSE labels.name END) "

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    move-result-object v0

    const-string v1, "sortOrder"

    const-string v2, "CASE labels.systemLabel WHEN 0 THEN labels.canonicalName ELSE labels.systemLabelOrder END"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/ProjectionMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ProjectionMapBuilder;->getMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->LABEL_PROJECTION_MAP:Ljava/util/Map;

    .line 5174
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/google/android/gm/provider/MailEngine;->sNextQueryId:J

    .line 5175
    sput-object v7, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThreadLock:Ljava/lang/Object;

    .line 339
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTasksDisabledForTesting:Z

    .line 340
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThread:Ljava/lang/Thread;

    .line 346
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mValidateSyncSets:Z

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDbLock:Ljava/lang/Object;

    .line 359
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    .line 370
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    .line 380
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 390
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationComplete:Z

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationLock:Ljava/lang/Object;

    .line 411
    iput v11, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;

    .line 426
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncThreadTime:J

    .line 431
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mMailIndexRequested:Z

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;

    .line 438
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;

    .line 440
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$1;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMapObserver:Ljava/util/Observer;

    .line 465
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mMailEngineClosing:Z

    .line 489
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1040
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationsRequestsRegistered:Z

    .line 1158
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 1949
    iput-boolean v11, p0, Lcom/google/android/gm/provider/MailEngine;->mFakeIoException:Z

    .line 2016
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationCursorForQueryLock:Ljava/lang/Object;

    .line 2017
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    .line 2018
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5758
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;

    .line 5759
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMapLock:Ljava/lang/Object;

    .line 848
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "Background tasks"

    const/16 v1, 0xa

    invoke-direct {v8, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 850
    .local v8, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 852
    const-string v0, "ME.constructor"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 854
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/provider/MailEngine$GmailTransactionListener;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$1;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 856
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTaskHandler:Landroid/os/Handler;

    .line 859
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    .line 860
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    .line 861
    new-instance v0, Lcom/google/android/gm/provider/Urls;

    invoke-direct {v0, p2}, Lcom/google/android/gm/provider/Urls;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    .line 862
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gm/provider/MailEngine;->getInternalDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->openInternalDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gm/provider/MailEngine;->getDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->openDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->initialize()V

    .line 867
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 872
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 874
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    if-nez v0, :cond_3

    .line 875
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$NormalHttpRequestRunner;

    invoke-direct {v0}, Lcom/google/android/gm/provider/MailEngine$NormalHttpRequestRunner;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    .line 880
    :goto_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    if-nez v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/persistence/Persistence;->getMailEnginePreferences(Landroid/content/Context;)Lcom/google/android/gm/persistence/Persistence$MailEnginePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 893
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->enqueueFinalInitializationTask(Landroid/content/Context;)V

    .line 894
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->enqueueCleanupTempFilesTask(Landroid/content/Context;)V

    .line 898
    new-instance v0, Lcom/google/android/gm/provider/AttachmentManager;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Urls;Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

    .line 900
    const/4 v10, 0x0

    .line 902
    .local v10, pendingIntent:Landroid/app/PendingIntent;
    :try_start_3
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/gm/provider/MailIndexerService;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    .local v9, indexIntent:Landroid/content/Intent;
    const-string v0, "com.google.android.gm.intent.provider.INDEX_MESSAGE_CONTENT"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "indexer"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 906
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 907
    const-string v0, "account"

    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 919
    .end local v6           #builder:Landroid/net/Uri$Builder;
    .end local v9           #indexIntent:Landroid/content/Intent;
    :goto_2
    iput-object v10, p0, Lcom/google/android/gm/provider/MailEngine;->mStartAccountIndexingIntent:Landroid/app/PendingIntent;

    .line 920
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDatasetChangedNotifier:Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;

    .line 922
    return-void

    .line 869
    .end local v10           #pendingIntent:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 886
    :catch_0
    move-exception v7

    .line 887
    .local v7, e:Landroid/database/SQLException;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 890
    :cond_2
    throw v7

    .line 877
    .end local v7           #e:Landroid/database/SQLException;
    :cond_3
    :try_start_5
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    goto/16 :goto_0

    .line 884
    :cond_4
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 912
    .restart local v10       #pendingIntent:Landroid/app/PendingIntent;
    :catch_1
    move-exception v7

    .line 917
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Gmail"

    const-string v1, "UOE while creating pending intent.  Probably running tests"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->notifyInitializationComplete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/AttachmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->wipeAndResync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->updateMailCoreConfig()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/gm/provider/MailEngine;Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailCore$Label;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->addNotificationLabel(Lcom/google/android/gm/provider/MailCore$Label;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/MailEngine$Preferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->joinedAttachmentsString(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->cleanupAttachments(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->requestIndex()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/provider/MailEngine;->runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/gm/provider/MailEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailEngineClosing:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/google/android/gm/provider/MailEngine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncThreadTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/google/android/gm/provider/MailEngine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncThreadTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/google/android/gm/provider/MailEngine;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->cancelSyncForLiveRequest()V

    return-void
.end method

.method static synthetic access$4102(Lcom/google/android/gm/provider/MailEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->clearNewUnreadMailForNotificationLabelIfNeeded(Lcom/google/android/gm/provider/MailCore$Label;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->purgeSomeStaleMessagesInTransaction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->startIndexingIfNeeded()V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/android/gm/provider/MailEngine;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getNotifyDatasetChangedLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->onLabelsPossiblyLoaded()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->calculateUnknownSyncRationalesAndPurgeInBackground()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomLabelColors()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomFrom()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForReplyFromDefaultAddress()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private addNotificationLabel(Lcom/google/android/gm/provider/MailCore$Label;)Z
    .locals 5
    .parameter "label"

    .prologue
    const/4 v1, 0x0

    .line 1225
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    iget-wide v3, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabelCanonicalName(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, notificationTagLabelCanonicalName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1231
    :goto_0
    return v1

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailCore;->getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    .line 1231
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3113
    .local p0, addressStrings:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3114
    .local v0, addressString:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3115
    const/4 v2, 0x1

    .line 3118
    .end local v0           #addressString:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private broadcastLabelNotifications(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1235
    const-string v0, "Gmail"

    const-string v1, "Broadcasting notifications for labels: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1237
    if-nez p1, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1242
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1243
    if-eqz v0, :cond_1

    .line 1244
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/gm/provider/Label;->getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gm/provider/PublicContentProvider;->broadcastLabelNotifications(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private cacheAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)Z
    .locals 14
    .parameter

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 3038
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v5

    .line 3039
    iget v1, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-lez v1, :cond_1

    .line 3040
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    iget v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 3041
    invoke-direct {p0, v5, v6, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->isLowSpace(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3042
    const-string v0, "Gmail"

    const-string v3, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3044
    const/4 v0, 0x0

    .line 3100
    :cond_0
    :goto_0
    return v0

    .line 3047
    :cond_1
    const/4 v2, 0x0

    .line 3048
    const/4 v3, 0x0

    .line 3049
    const/4 v1, 0x0

    .line 3051
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-kk:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3052
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ".attachment"

    invoke-static {v4, v7, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 3053
    iget-object v4, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3054
    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v4

    .line 3055
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 3056
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3057
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 3059
    :cond_2
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 3060
    if-gtz v9, :cond_4

    .line 3068
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3069
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    .line 3070
    const-string v3, "Gmail"

    const-string v7, "Cached %s to %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v3, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3072
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 3073
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/android/gm/provider/MailEngine;->isLowSpace(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3074
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3075
    const-string v0, "Gmail"

    const-string v3, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v10

    const/4 v7, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v7

    const/4 v5, 0x2

    aput-object p1, v9, v5

    invoke-static {v0, v3, v9}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3077
    const/4 v0, 0x0

    .line 3092
    if-eqz v4, :cond_3

    .line 3093
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3095
    :cond_3
    if-eqz v2, :cond_0

    .line 3096
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3098
    :catch_0
    move-exception v1

    .line 3099
    const-string v2, "Gmail"

    const-string v3, "Failed to close stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 3063
    :cond_4
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v2, v3, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3064
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/32 v11, 0x36ee80

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 3065
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Timed out reading attachment data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3081
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 3085
    :goto_1
    :try_start_5
    const-string v4, "Gmail"

    const-string v5, "Failed to cache attachment %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3086
    if-eqz v1, :cond_5

    .line 3087
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3089
    :cond_5
    const/4 v0, 0x0

    .line 3092
    if-eqz v3, :cond_6

    .line 3093
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3095
    :cond_6
    if-eqz v2, :cond_0

    .line 3096
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 3098
    :catch_2
    move-exception v1

    .line 3099
    const-string v2, "Gmail"

    const-string v3, "Failed to close stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 3080
    :cond_7
    const/4 v0, 0x1

    .line 3092
    if-eqz v4, :cond_8

    .line 3093
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3095
    :cond_8
    if-eqz v2, :cond_0

    .line 3096
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 3098
    :catch_3
    move-exception v1

    .line 3099
    const-string v2, "Gmail"

    const-string v3, "Failed to close stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 3091
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    .line 3092
    :goto_2
    if-eqz v4, :cond_9

    .line 3093
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3095
    :cond_9
    if-eqz v2, :cond_a

    .line 3096
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 3100
    :cond_a
    :goto_3
    throw v0

    .line 3098
    :catch_4
    move-exception v1

    .line 3099
    const-string v2, "Gmail"

    const-string v3, "Failed to close stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 3091
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_2

    .line 3081
    :catch_5
    move-exception v0

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_1
.end method

.method private calculateUnknownSyncRationalesAndPurgeInBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5936
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5940
    const-string v0, "Gmail"

    const-string v1, "calculateUnknownSyncRationalesAndPurgeInBackground: exiting (labelMap not synced"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5985
    :goto_0
    return-void

    .line 5948
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "calculateUnknownSyncRationalesAndPurgeInBackground: queueing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5949
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$11;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$11;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V
    .locals 1
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 1004
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$5;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gm/provider/MailEngine$5;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    return-void
.end method

.method private cancelSyncForLiveRequest()V
    .locals 3

    .prologue
    .line 1917
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    if-eqz v0, :cond_0

    .line 1918
    const-string v0, "Gmail"

    const-string v1, "Cancelling background sync for live request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 1920
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1922
    :cond_0
    return-void
.end method

.method private declared-synchronized changeTaskState(IZ)V
    .locals 4
    .parameter "task"
    .parameter "running"

    .prologue
    .line 1660
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    .line 1662
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    :cond_0
    monitor-exit p0

    return-void

    .line 1660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cleanupAttachments(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 2715
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2717
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 2718
    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2719
    const-string v2, "Gmail"

    const-string v3, "Cleaning up cached attachment: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2720
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 2723
    :cond_1
    return-void
.end method

.method static clearMailEngines()V
    .locals 5

    .prologue
    .line 764
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    monitor-enter v3

    .line 765
    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .line 766
    .local v0, engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngineLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 767
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v2, :cond_0

    .line 768
    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->close()V

    .line 770
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 773
    .end local v0           #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 772
    :cond_1
    :try_start_3
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 773
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 774
    return-void
.end method

.method private clearNewUnreadMailForNotificationLabelIfNeeded(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 7
    .parameter

    .prologue
    .line 3411
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(Lcom/google/android/gm/provider/MailCore$Label;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 3412
    if-nez v0, :cond_1

    .line 3421
    :cond_0
    :goto_0
    return-void

    .line 3415
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    iget-wide v2, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumUnreadConversations(J)I

    move-result v1

    .line 3416
    const-string v2, "Gmail"

    const-string v3, "clearNewUnreadMailForNotificationLabelIfNeeded. Count: %d, label: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3418
    if-lez v1, :cond_0

    .line 3419
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->clearNewUnreadMailForNotificationLabel(Lcom/google/android/gm/provider/MailCore$Label;)I

    goto :goto_0
.end method

.method private detectTooManySyncLoops(Landroid/content/SyncResult;I)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1778
    iput v5, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    .line 1779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    .line 1782
    :cond_0
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    if-le v0, p2, :cond_2

    .line 1783
    const-string v0, "Gmail"

    const-string v1, "Sync check time: %d Sync count: %d Max syncs allowed in period: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1786
    const-string v0, "Gmail"

    const-string v1, "Too many sync loops, cancelling sync."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1787
    iput-boolean v6, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 1792
    if-eqz p1, :cond_1

    .line 1793
    const-wide/16 v0, 0x1e

    iput-wide v0, p1, Landroid/content/SyncResult;->delayUntil:J

    .line 1798
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many sync loops detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1800
    :cond_2
    return-void
.end method

.method private enqueueCleanupTempFilesTask(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1102
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/MailEngine$6;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method private enqueueFinalInitializationTask(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 925
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/MailEngine$3;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 966
    return-void
.end method

.method private expungeLocalMessageImpl(J)I
    .locals 12
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2672
    .line 2673
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2674
    :cond_0
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 2675
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "messageId"

    aput-object v3, v2, v11

    const-string v3, "conversation"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v6, "joinedAttachmentInfos"

    aput-object v6, v2, v3

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2685
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2686
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2687
    const-string v0, "messageId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2689
    const-string v0, "conversation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2691
    const-string v0, "joinedAttachmentInfos"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v6, v5

    .line 2695
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2697
    cmp-long v0, v3, v8

    if-eqz v0, :cond_1

    .line 2698
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    new-array v5, v10, [Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v11

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gm/provider/MailCore;->expungeMessagesWithoutWritingOperations(JLjava/util/List;)V

    .line 2700
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2702
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    const-string v5, "messageExpunged"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;)J

    .line 2704
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailEngine;->cleanupAttachments(Ljava/lang/String;)V

    move v0, v10

    .line 2708
    :goto_1
    return v0

    .line 2695
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v11

    .line 2708
    goto :goto_1

    :cond_2
    move-wide v1, v8

    move-wide v3, v8

    move-object v6, v5

    goto :goto_0
.end method

.method private static declared-synchronized getCreationHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 686
    const-class v2, Lcom/google/android/gm/provider/MailEngine;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 688
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MailEngine creation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 690
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 692
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;

    .line 694
    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getCursorForCustomFrom()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1123
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1124
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_TO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ASC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getCursorForCustomLabelColors()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1117
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1118
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getCursorForReplyFromDefaultAddress()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 1135
    const-string v0, "name = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_FROM_DEFAULT_SETTING:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->getServerPrefsCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCursorForServerPrefs()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1141
    invoke-direct {p0, v0, v0}, Lcom/google/android/gm/provider/MailEngine;->getServerPrefsCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getDbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailstore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineSettingsCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1536
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "engine_settings"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_VALUE:[Ljava/lang/String;

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getHttpClient()Lcom/google/android/common/http/GoogleHttpClient;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1165
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1169
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1171
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1173
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1182
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android-GmailProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v0, :cond_2

    .line 1186
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 1189
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_timeout_ms"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1192
    if-eq v0, v6, :cond_1

    .line 1193
    const-string v1, "Gmail"

    const-string v2, "Changing network timeout (because of gservices) to %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1194
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v1}, Lcom/google/android/common/http/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 1195
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1196
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1197
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "Gmail"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    :try_start_3
    const-string v0, "Gmail"

    const-string v2, "Error finding package %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1181
    goto :goto_0

    .line 1177
    :catch_1
    move-exception v0

    .line 1180
    const-string v2, "Gmail"

    const-string v3, "Error getting the PackageManager "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto/16 :goto_0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getInternalDbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"

    .prologue
    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIsSyncable()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.google"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mail"

    invoke-static {v6}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 1674
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1675
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v6, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 1680
    :goto_1
    return v0

    .line 1674
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1679
    :cond_1
    const-string v0, "Gmail"

    const-string v1, "Account doesn\'t support mail %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1680
    goto :goto_1

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLabelIdsForCanonicalNames([Ljava/lang/String;)[Lcom/google/android/gm/provider/MailCore$Label;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1328
    array-length v0, p1

    new-array v3, v0, [Lcom/google/android/gm/provider/MailCore$Label;

    move v0, v1

    .line 1329
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1331
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v2

    .line 1338
    const-string v4, "Gmail"

    const-string v5, "Couldn\'t find label: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1341
    :cond_0
    return-object v3
.end method

.method public static getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 3
    .parameter "account"

    .prologue
    .line 701
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    monitor-enter v2

    .line 702
    :try_start_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .line 703
    .local v0, engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    goto :goto_0

    .line 704
    .end local v0           #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2231
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    const/4 v0, 0x0

    .line 2292
    :goto_0
    return-object v0

    .line 2235
    :cond_0
    new-instance v3, Lcom/google/android/gm/provider/MailSync$Message;

    invoke-direct {v3}, Lcom/google/android/gm/provider/MailSync$Message;-><init>()V

    .line 2236
    const-string v0, "messageId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2238
    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    .line 2239
    const-string v0, "conversation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    .line 2241
    const-string v0, "refMessageId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->refMessageId:J

    .line 2243
    const-string v0, "fromAddress"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->fromAddress:Ljava/lang/String;

    .line 2245
    const-string v0, "customFromAddress"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    .line 2247
    const-string v0, "toAddresses"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    .line 2250
    const-string v0, "ccAddresses"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    .line 2253
    const-string v0, "bccAddresses"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    .line 2256
    const-string v0, "replyToAddresses"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    .line 2259
    const-string v0, "dateSentMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->dateSentMs:J

    .line 2261
    const-string v0, "dateReceivedMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->dateReceivedMs:J

    .line 2263
    const-string v0, "subject"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    .line 2265
    const-string v0, "snippet"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->snippet:Ljava/lang/String;

    .line 2267
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v0

    .line 2268
    const-string v4, "labelIds"

    invoke-direct {p0, p1, v4}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2269
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getLabelIdsFromLabelIdsString(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    .line 2270
    const-string v0, "listInfo"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->listInfo:Ljava/lang/String;

    .line 2272
    const-string v0, "personalLevel"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2275
    const-string v0, "forward"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->forward:Z

    .line 2277
    const-string v0, "includeQuotedText"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->includeQuotedText:Z

    .line 2279
    const-string v0, "quoteStartPos"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->quoteStartPos:J

    .line 2281
    const-string v0, "clientCreated"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    :goto_3
    iput-boolean v1, v3, Lcom/google/android/gm/provider/MailSync$Message;->clientCreated:Z

    .line 2283
    const-string v0, "joinedAttachmentInfos"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2285
    iget-object v1, v3, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2288
    if-eqz p2, :cond_1

    .line 2289
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    :cond_1
    move-object v0, v3

    .line 2292
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 2275
    goto :goto_1

    :cond_3
    move v0, v2

    .line 2277
    goto :goto_2

    :cond_4
    move v1, v2

    .line 2281
    goto :goto_3
.end method

.method private getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2297
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2298
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getNotificationTagLabel(Lcom/google/android/gm/provider/MailCore$Label;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 2
    .parameter "label"

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabelCanonicalName(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, tagLabelName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    return-object v1
.end method

.method private getNotificationTagLabelCanonicalName(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 1
    .parameter "label"

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getCanonicalLabelForNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDatasetChangedLooper()Landroid/os/Looper;
    .locals 3

    .prologue
    .line 6066
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sNotifyDatasetChangedThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 6067
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Dataset changed notifier"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->sNotifyDatasetChangedThread:Landroid/os/HandlerThread;

    .line 6069
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sNotifyDatasetChangedThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6071
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sNotifyDatasetChangedThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 8
    .parameter "context"
    .parameter "account"

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_0
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    monitor-enter v3

    .line 601
    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .line 602
    .local v0, engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    if-nez v0, :cond_1

    .line 603
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .end local v0           #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    invoke-direct {v0}, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;-><init>()V

    .line 604
    .restart local v0       #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngineLock:Ljava/lang/Object;

    monitor-enter v3

    .line 615
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 616
    .local v1, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    if-nez v1, :cond_2

    .line 617
    new-instance v1, Lcom/google/android/gm/provider/MailEngine;

    .end local v1           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/provider/MailEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 618
    .restart local v1       #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    iput-object v1, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 620
    iget-object v2, v1, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->getClientId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 621
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 624
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 606
    .end local v0           #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    .end local v1           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 625
    .restart local v0       #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 656
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->getCreationHandler()Landroid/os/Handler;

    move-result-object v3

    .line 662
    .local v3, handler:Landroid/os/Handler;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 664
    .local v4, callerHandler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$2;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine$2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    return-void
.end method

.method public static getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 638
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOrMaikeMailEngineSync should not be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    return-object v0
.end method

.method private varargs getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "projection"
    .parameter "labelColumnName"
    .parameter "args"

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gm/provider/QueryUtils;->getQueryBindArgs(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServerPrefsCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "query"
    .parameter "prefName"

    .prologue
    const/4 v2, 0x0

    .line 1129
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1130
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getSyncedForLocalMessageId(J)Z
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2333
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2334
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_MESSAGE_SYNCED:[Ljava/lang/String;

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2338
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2345
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v9

    .line 2341
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2342
    const-string v0, "synced"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    .line 2345
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v9, v0

    goto :goto_0

    :cond_1
    move v0, v9

    .line 2342
    goto :goto_1

    .line 2345
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getUpdatedAttachments(Ljava/lang/String;J)Ljava/util/List;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2963
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 2969
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 2970
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 2971
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 2974
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "joinedAttachmentInfos"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2982
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2983
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2990
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2993
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2996
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 2997
    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v3, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2999
    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2985
    :cond_1
    :try_start_1
    const-string v0, "Gmail"

    const-string v2, "No row found for message _id %d though one was expected"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2987
    const/4 v0, 0x0

    goto :goto_0

    .line 2990
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3007
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 3008
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3009
    iget-object v1, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3010
    if-eqz v1, :cond_3

    .line 3011
    const-string v4, "Gmail"

    const-string v5, "Attachment Content %s is already cached as %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v11, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    aput-object v11, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3013
    iput-object v1, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    .line 3014
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3019
    :cond_4
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3020
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3021
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3022
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3023
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 3026
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3027
    const-string v2, "Gmail"

    const-string v3, "Cleaning up unused cached file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3028
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 3031
    :cond_7
    return-object v8
.end method

.method private initialize()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1253
    const-string v0, "ME.initialize"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1254
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$7;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$7;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1268
    new-instance v1, Lcom/google/android/gm/provider/Operations;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gm/provider/Operations;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    .line 1269
    new-instance v1, Lcom/google/android/gm/provider/MailCore;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/android/gm/provider/MailCore;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Operations;Lcom/google/android/gm/provider/MailCore$Listener;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    .line 1270
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 1271
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMapObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$LabelMap;->addObserver(Ljava/util/Observer;)V

    .line 1272
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    .line 1274
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1275
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_settings"

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v6

    const-string v4, "value"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1279
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1288
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1290
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "internal_sync_settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 1294
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1296
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1297
    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1301
    :catchall_1
    move-exception v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1302
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1299
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1301
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1302
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1305
    new-instance v0, Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine;->mValidateSyncSets:Z

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;-><init>(Lcom/google/android/gm/provider/MailStore;Lcom/google/android/gm/provider/Urls;Ljava/util/Map;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    .line 1306
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailCore;->setServerVersion(J)V

    .line 1310
    const-string v0, "ME.initialize"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1311
    return-void

    .line 1301
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method private interruptAndWaitForBackgroundThreads()V
    .locals 7

    .prologue
    .line 801
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThreadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 802
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThread:Ljava/lang/Thread;

    .line 803
    .local v3, syncThreadToKill:Ljava/lang/Thread;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 807
    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailEngine;->interruptAndWaitForThread(Ljava/lang/Thread;)V

    .line 811
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 812
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;

    .line 813
    .local v2, syncThread:Ljava/lang/Thread;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 814
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->interruptAndWaitForThread(Ljava/lang/Thread;)V

    .line 816
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->NETWORK_CURSOR_LOGIC_FETCHER_THREADS:Ljava/util/Set;

    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 818
    .local v0, fetcherThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 819
    .local v4, thread:Ljava/lang/Thread;
    invoke-direct {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->interruptAndWaitForThread(Ljava/lang/Thread;)V

    goto :goto_0

    .line 803
    .end local v0           #fetcherThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #syncThread:Ljava/lang/Thread;
    .end local v3           #syncThreadToKill:Ljava/lang/Thread;
    .end local v4           #thread:Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 813
    .restart local v3       #syncThreadToKill:Ljava/lang/Thread;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 821
    .restart local v0       #fetcherThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Thread;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #syncThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private interruptAndWaitForThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 830
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 832
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isLowSpace(JJ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3108
    long-to-float v0, p3

    long-to-float v1, p1

    const/high16 v2, 0x3e80

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinedAttachmentsString(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeRight()V
    .locals 5

    .prologue
    .line 3219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3220
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->getClientId()J

    move-result-wide v1

    .line 3221
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 3222
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getSubscribedFeedUrl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3224
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v3, "gmail-ls"

    const-string v4, "mail"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/gsf/SubscribedFeeds;->manageSubscriptions(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z

    .line 3226
    return-void
.end method

.method private notifyDatasetChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 5894
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5898
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "broadcasting content resolver change in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5900
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 5902
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDatasetChangedNotifier:Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$DatasetChangedNotifier;->scheduleTask()V

    .line 5903
    return-void
.end method

.method private notifyInitializationComplete()V
    .locals 6

    .prologue
    .line 1015
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1016
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationComplete:Z

    .line 1017
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1018
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1019
    .local v2, numCallbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1023
    .local v0, callbackInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .end local v0           #callbackInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    .line 1027
    .end local v1           #i:I
    .end local v2           #numCallbacks:I
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->calculateUnknownSyncRationalesAndPurgeInBackground()V

    .line 1032
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomLabelColors()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gm/utils/LabelColorUtils;->instantiateCustomLabelColors(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1034
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomFrom()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gm/utils/CustomFromUtils;->instantiateCustomFrom(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1035
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForReplyFromDefaultAddress()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gm/utils/CustomFromUtils;->instantiateReplyFromDefaultAddress(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1037
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForServerPrefs()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gm/utils/OutgoingMsgPrefs;->instantiateOutgoingPrefs(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1038
    return-void

    .line 1027
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onLabelsPossiblyLoaded()V
    .locals 4

    .prologue
    .line 1043
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationsRequestsRegistered:Z

    if-eqz v3, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationsRequestsRegistered:Z

    .line 1048
    const/4 v1, 0x0

    .line 1051
    .local v1, labelsChanged:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1052
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 1053
    .local v2, localLabel:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v3, v2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1054
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v3, v2}, Lcom/google/android/gm/provider/MailCore;->getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    .line 1055
    const/4 v1, 0x1

    .line 1051
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1062
    .end local v2           #localLabel:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->updateMailCoreConfig()V

    .line 1064
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->updateNotificationLabels()V

    goto :goto_0
.end method

.method private openDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1356
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1357
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$MailStoreOpenHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine$MailStoreOpenHelper;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$MailStoreOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1361
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method private openInternalDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 1370
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1371
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v2}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1373
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1375
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 1376
    new-instance v1, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/InternalSettingsDbInitializer;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1377
    if-nez v0, :cond_1

    .line 1378
    invoke-virtual {v1}, Lcom/google/android/gm/provider/DatabaseInitializer;->bootstrapDatabase()V

    .line 1382
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1383
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upgrade internal db from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1379
    :cond_1
    if-eq v0, v3, :cond_0

    .line 1380
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/DatabaseInitializer;->performUpgrade(I)V

    goto :goto_0

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1391
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1392
    return-void
.end method

.method private purgeSomeStaleMessagesInTransaction()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3264
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getLowestMessageIdInDurationOrZero()J

    move-result-wide v4

    .line 3265
    const-string v0, "Gmail"

    const-string v2, "Starting purging messages. Oldest message id in duration: %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v2, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3268
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 3269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM conversations\nWHERE\n  (syncRationale = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "OR (syncRationale = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND syncRationaleMessageId < ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")) AND queryId = 0 LIMIT 100"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3277
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move v0, v3

    .line 3279
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3280
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3282
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gm/provider/Operations;->hasUnackedSendOrSaveOperationsForConversation(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3283
    const-string v2, "Gmail"

    const-string v7, " Conversation ID %d has unacked send or save operations."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v2, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v3

    .line 3288
    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    .line 3289
    goto :goto_0

    .line 3286
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gm/provider/MailCore;->purgeConversation(J)Z

    move-result v2

    goto :goto_1

    .line 3293
    :cond_2
    const-string v1, "Gmail"

    const-string v2, "Finished purging messages "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3296
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private requestIndex()V
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailIndexRequested:Z

    .line 1435
    return-void
.end method

.method private runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1935
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 1937
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequestInternal(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1941
    :goto_0
    return-object v0

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    const-string v0, "Gmail"

    const-string v1, "Authentication error, token invalidated, retrying"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1941
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequestInternal(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private runHttpRequestInternal(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1953
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 1954
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/provider/Urls;->newHttpContext(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v1

    .line 1957
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getHttpClient()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;->runHttpRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1960
    iget-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine;->mFakeIoException:Z

    if-eqz v2, :cond_0

    .line 1961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mFakeIoException:Z

    .line 1962
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fake io exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1965
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/MailSync;->responseContainsAuthFailure(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1966
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 1969
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    const-string v1, "authtoken is invalid"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1972
    :cond_1
    return-object v1
.end method

.method private runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;Landroid/os/Bundle;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1694
    if-eqz p2, :cond_3

    const/high16 v0, 0x20

    .line 1697
    :goto_0
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/common/GoogleTrafficStats;->getDomainType(Ljava/lang/String;)I

    move-result v1

    .line 1701
    or-int/2addr v1, v0

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1706
    :cond_0
    :try_start_0
    const-string v1, "Gmail"

    const-string v4, "runSyncLoop normalSync - %b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1710
    if-nez p2, :cond_4

    if-eqz p5, :cond_1

    const-string v1, "upload"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    move v1, v2

    .line 1712
    :goto_1
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, p2, p3, v5}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1716
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gmail-max-sync-per-interval"

    const/16 v6, 0x32

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v4, v3

    move-object v5, v1

    .line 1719
    :goto_2
    if-eqz v5, :cond_9

    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    if-nez v1, :cond_9

    .line 1721
    invoke-direct {p0, p4, v6}, Lcom/google/android/gm/provider/MailEngine;->detectTooManySyncLoops(Landroid/content/SyncResult;I)V

    .line 1723
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1724
    const-string v7, "gmail_discard_error_uphill_op_old_froyo"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 1727
    :goto_3
    if-eqz v1, :cond_2

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->checkAndUpdateUnackedSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    :cond_2
    :try_start_1
    invoke-direct {p0, v5, p1, p3}, Lcom/google/android/gm/provider/MailEngine;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    or-int/2addr v1, v4

    .line 1745
    :goto_4
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p2, p3, v7}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    .line 1746
    iget v5, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    move-object v5, v4

    move v4, v1

    .line 1747
    goto :goto_2

    .line 1694
    :cond_3
    const/high16 v0, 0x10

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1710
    goto :goto_1

    :cond_5
    move v1, v3

    .line 1724
    goto :goto_3

    .line 1733
    :catch_0
    move-exception v1

    .line 1734
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v5, p3}, Lcom/google/android/gm/provider/MailStore;->getConversationInfosToFetch(Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1736
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1737
    const-string v7, "Gmail"

    const-string v8, "Exception during conversation sync. Will attempt to fetch one conversation at a time"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v1, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1739
    invoke-direct {p0, p3, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->syncConversations(Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Ljava/util/ArrayList;)Z

    move-result v1

    or-int/2addr v1, v4

    goto :goto_4

    .line 1741
    :cond_6
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1762
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1763
    if-eqz p1, :cond_7

    .line 1764
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->getOperationCount()I

    move-result v2

    invoke-static {v0, v2}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1766
    :cond_7
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 1768
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->onSyncLoopEnd()V

    throw v1

    .line 1749
    :cond_9
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->makeRight()V

    .line 1751
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->startIndexingIfNeeded()V

    .line 1754
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0x2710

    rem-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_a

    .line 1758
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "VACUUM"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1762
    :cond_a
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1763
    if-eqz p1, :cond_b

    .line 1764
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->getOperationCount()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 1766
    :cond_b
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 1768
    :cond_c
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->onSyncLoopEnd()V

    return v4
.end method

.method private sendNotificationIntent(Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailCore$Label;IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 3373
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v1

    .line 3376
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROVIDER_CHANGED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://gmail-ls/unread/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3378
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3379
    const-string v3, "count"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3380
    const-string v3, "unseenCount"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3381
    const-string v3, "getAttention"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3382
    const-string v3, "tagLabel"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3383
    const-string v1, "notificationLabel"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    const-string v0, "Gmail"

    const-string v1, "Sending notification intent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3386
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 3387
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3389
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3390
    return-void
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1805
    .line 1806
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1808
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2, v1, p2, p3}, Lcom/google/android/gm/provider/MailSync;->handleSyncResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 1823
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->purgeStaleMessagesOutsideTransaction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1824
    const/4 v0, 0x1

    .line 1829
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v3, "moreForwardSyncNeeded"

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1830
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1833
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1836
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1838
    :cond_2
    return v0

    .line 1835
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1836
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1837
    :cond_3
    throw v0
.end method

.method private setSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1498
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1499
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "engine_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1502
    return-void
.end method

.method static setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1515
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1516
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const-string v1, "sync_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1519
    return-void
.end method

.method private setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method static setTestingHttpRequestRunner(Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;)V
    .locals 0
    .parameter "runner"

    .prologue
    .line 777
    sput-object p0, Lcom/google/android/gm/provider/MailEngine;->sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    .line 778
    return-void
.end method

.method static setTestingMailEnginePreference(Lcom/google/android/gm/provider/MailEngine$Preferences;)V
    .locals 0
    .parameter "preferences"

    .prologue
    .line 781
    sput-object p0, Lcom/google/android/gm/provider/MailEngine;->sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    .line 782
    return-void
.end method

.method private startIndexingIfNeeded()V
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailIndexRequested:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->isFullTextSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->scheduleIndexing()V

    .line 1405
    :cond_0
    return-void
.end method

.method private syncConversations(Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Ljava/util/ArrayList;)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            "Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 1847
    .line 1849
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v11, p1, v2}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_3

    .line 1852
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gm/provider/MailEngine;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z

    move-result v0

    .line 1855
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1856
    const-string v2, "Gmail"

    const-string v3, "Fetching conversations one by one: %d"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v1

    move v2, v0

    .line 1857
    :goto_1
    if-ge v3, v4, :cond_0

    .line 1858
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    if-eqz v0, :cond_1

    .line 1859
    const-string v0, "Gmail"

    const-string v3, "Sync canceled. Aborting."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1878
    :cond_0
    return v2

    .line 1862
    :cond_1
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    .line 1863
    iget-wide v5, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->id:J

    .line 1865
    const-string v7, "Gmail"

    const-string v8, "Fetching conversation %d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1866
    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    new-array v8, v11, [Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    aput-object v0, v8, v1

    invoke-static {v8}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v1, v1, p1, v0}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_2

    .line 1871
    :try_start_0
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gm/provider/MailEngine;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    or-int/2addr v0, v2

    .line 1857
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    const-string v7, "Gmail"

    const-string v8, "Exception while fetching conversation %d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v7, v0, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1874
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v5, v6}, Lcom/google/android/gm/provider/MailStore;->delayConversationSync(J)V

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private updateMailCoreConfig()V
    .locals 3

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->getLabelsIncludedArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->getLabelIdsForCanonicalNames([Ljava/lang/String;)[Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->getLabelsPartialArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->getLabelIdsForCanonicalNames([Ljava/lang/String;)[Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailCore;->setConfig([Lcom/google/android/gm/provider/MailCore$Label;[Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 1325
    :cond_0
    return-void
.end method

.method private declared-synchronized wipeAndResync(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 736
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 737
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 741
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDbLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 742
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 743
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 744
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 745
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 746
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 750
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "gmail-ls"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 753
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "Wiping mail db: "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 754
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 755
    monitor-exit p0

    return-void

    .line 746
    .end local v0           #extras:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 736
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method backgroundTasksDisabledForTesting()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTasksDisabledForTesting:Z

    return v0
.end method

.method public blockUntilBackgroundTasksComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5920
    const-string v0, "Gmail"

    const-string v1, "blockUntilBackgroundTasksComplete: queueing"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5921
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5922
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTaskHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/provider/MailEngine$10;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gm/provider/MailEngine$10;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5929
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5933
    :goto_0
    return-void

    .line 5930
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method cancelScheduledIndexRun()V
    .locals 2

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1425
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mStartAccountIndexingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mStartAccountIndexingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public checkAndUpdateUnackedSettings()V
    .locals 6

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getUnackedSentOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Operations;->nextOperationId()I

    move-result v0

    .line 1884
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v2, "nextUnackedSentOp"

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v1

    .line 1886
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v3, "errorCountNextUnackedSentOp"

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v2

    .line 1889
    if-ne v0, v1, :cond_1

    .line 1890
    add-int/lit8 v0, v2, 0x1

    .line 1891
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v2, "errorCountNextUnackedSentOp"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gm/provider/MailSync;->setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v2, "nextUnackedSentOp"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gm/provider/MailSync;->setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 1896
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v1, "errorCountNextUnackedSentOp"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 1898
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v1, "nextUnackedOpWriteTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method public checkConsistency()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3442
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 3443
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getLabelsAllArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 3445
    const-string v2, "^^out"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3447
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3448
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    .line 3449
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 3450
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Label id is zero for label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3456
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getLabelsIncludedArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 3457
    const-string v2, "^^out"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3459
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 3460
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3461
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, v6}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    .line 3463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->getConversationCursorForQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 3467
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    .line 3469
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3472
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumConversations(J)I

    move-result v0

    .line 3475
    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const/16 v4, 0x9c4

    if-gt v0, v4, :cond_2

    .line 3476
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Label counts do not match for label "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conversations in db but labels table says "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3469
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3482
    :cond_3
    return-void
.end method

.method public clearNewUnreadMailForNotificationLabel(Lcom/google/android/gm/provider/MailCore$Label;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3401
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 3402
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "labels_id = ?"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3403
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversation_labels"

    const-string v4, "labels_id = ?"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 3404
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const v4, 0x7fffffff

    const-string v5, "SHOW"

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V

    .line 3406
    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 3407
    return v6
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1068
    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailEngineClosing:Z

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 1073
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->interruptAndWaitForBackgroundThreads()V

    .line 1075
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->blockUntilBackgroundTasksComplete()V

    .line 1080
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    if-eqz v0, :cond_0

    .line 1081
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;->cancel(Z)Z

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1085
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 1086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1092
    :cond_2
    monitor-exit v1

    .line 1093
    return-void

    .line 1092
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueueAttachmentDownloadTask()V
    .locals 1

    .prologue
    .line 970
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$4;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$4;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 976
    return-void
.end method

.method public expungeLocalMessage(J)I
    .locals 5
    .parameter "localMessageId"

    .prologue
    const/4 v4, 0x1

    .line 2628
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2629
    const/4 v1, 0x0

    .line 2631
    .local v1, sendNotifications:Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->expungeLocalMessageImpl(J)I

    move-result v0

    .line 2632
    .local v0, numExpunged:I
    if-lez v0, :cond_0

    .line 2633
    const/4 v1, 0x1

    .line 2635
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2638
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2639
    if-eqz v1, :cond_1

    .line 2640
    invoke-direct {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    :cond_1
    return v0

    .line 2638
    .end local v0           #numExpunged:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2639
    if-eqz v1, :cond_2

    .line 2640
    invoke-direct {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    :cond_2
    throw v2
.end method

.method public expungeLocalMessages(Ljava/util/List;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, localMessageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x1

    .line 2651
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2652
    const/4 v2, 0x0

    .line 2653
    .local v2, numExpunged:I
    const/4 v3, 0x0

    .line 2655
    .local v3, sendNotifications:Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2656
    .local v1, localMessageId:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->expungeLocalMessageImpl(J)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 2658
    .end local v1           #localMessageId:Ljava/lang/Long;
    :cond_0
    if-lez v2, :cond_1

    .line 2659
    const/4 v3, 0x1

    .line 2661
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2663
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2664
    if-eqz v3, :cond_2

    .line 2665
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2668
    :cond_2
    return v2

    .line 2663
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2664
    if-eqz v3, :cond_3

    .line 2665
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    :cond_3
    throw v4
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "mail"

    const/4 v3, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1984
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "mail"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1986
    if-nez v0, :cond_0

    .line 1987
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    const-string v1, "Unable to get auth token"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1991
    :catch_1
    move-exception v0

    .line 1992
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1994
    :cond_0
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConversationCursorForQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Z)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2043
    const-string v3, "ME.conversationQuery"

    invoke-static {v3}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2045
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationCursorForQueryLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2048
    if-eqz p3, :cond_1

    .line 2049
    :try_start_0
    array-length v5, p3

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, p3, v3

    .line 2050
    const-string v6, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2049
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_0

    .line 2053
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection Argument \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Please see Gmail.SelectionArguments for possible values."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2109
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v4, v1

    .line 2061
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v7, v1

    .line 2063
    :goto_1
    if-eqz v7, :cond_4

    .line 2066
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-object v2, p0

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;ZLjava/lang/Integer;Z)V

    move-object v3, v1

    .line 2081
    :goto_2
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$8;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gm/provider/MailEngine$8;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)V

    .line 2089
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getSql()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2092
    move-object v0, v2

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;

    move-object v1, v0

    .line 2093
    if-eqz v7, :cond_7

    .line 2095
    invoke-virtual {v3, v1}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->configure(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 2099
    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->purgeConversationsIfNeeded()V

    .line 2107
    :goto_3
    const-string v1, "ME.conversationQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2108
    monitor-exit v8

    return-object v2

    :cond_3
    move v7, v2

    .line 2061
    goto :goto_1

    .line 2069
    :cond_4
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    #calls: Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getLimit()I
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->access$1400(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)I

    move-result v3

    .line 2070
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    #calls: Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->setLimit(Ljava/lang/Integer;)V
    invoke-static {v5, p4}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->access$1500(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;Ljava/lang/Integer;)V

    .line 2071
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    #calls: Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getLimit()I
    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->access$1400(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 2072
    :goto_4
    if-eqz v1, :cond_6

    .line 2074
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-object v2, p0

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;ZLjava/lang/Integer;Z)V

    move-object v3, v1

    goto :goto_2

    :cond_5
    move v1, v2

    .line 2071
    goto :goto_4

    .line 2077
    :cond_6
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-object v3, v1

    goto :goto_2

    .line 2105
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->requery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    return-object v0
.end method

.method public getLabelQueryBuilder([Ljava/lang/String;)Lcom/google/android/gm/provider/LabelQueryBuilder;
    .locals 3
    .parameter "projection"

    .prologue
    .line 3131
    new-instance v0, Lcom/google/android/gm/provider/LabelQueryBuilder;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gm/provider/LabelQueryBuilder;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method getLocalMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 2
    .parameter "localMessageId"
    .parameter "loadBody"

    .prologue
    .line 2206
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForLocalMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2208
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2209
    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/MailEngine;->getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getMailSync()Lcom/google/android/gm/provider/MailSync;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    return-object v0
.end method

.method getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 2
    .parameter "messageId"
    .parameter "loadBody"

    .prologue
    .line 2220
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2222
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2223
    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/MailEngine;->getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2225
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2113
    const-string v0, "ME.messageConversationIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2115
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2116
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2117
    const-string v1, "messages.conversation = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2118
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2119
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2121
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    const-string v7, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2124
    const-string v1, "ME.messageConversationIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2125
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public getMessageCursorForConversationId([Ljava/lang/String;JZZ)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2135
    const-string v0, "ME.messageConversationIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorLogicForConversation(J)Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    move-result-object v8

    .line 2138
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2139
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2142
    const-string v1, "messages.conversation = ? AND (queryId = 0 OR queryId = ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2143
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2144
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$9;

    invoke-direct {v1, p0, v8}, Lcom/google/android/gm/provider/MailEngine$9;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;)V

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 2151
    const-string v1, "messageLabels"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-wide v5, v8, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mQueryId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2154
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    const-string v7, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$CloneableMessageCursor;

    .line 2158
    iget-boolean v1, v8, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->mConfigured:Z

    if-eqz v1, :cond_0

    if-nez p4, :cond_1

    .line 2159
    :cond_0
    invoke-virtual {v8, p2, p3, v0, p4}, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->configure(JLcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V

    .line 2162
    :cond_1
    if-eqz p5, :cond_2

    .line 2163
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$CloneableMessageCursor;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2164
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$CloneableMessageCursor;->close()V

    .line 2166
    :goto_0
    const-string v0, "ME.messageConversationIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2167
    new-instance v0, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getMessageCursorForLocalMessageId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2172
    const-string v0, "ME.messageLocalIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2174
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2175
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2176
    const-string v1, "messages._id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2177
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2178
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2180
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2182
    const-string v1, "ME.messageLocalIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2183
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2188
    const-string v0, "ME.messageMessageIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2190
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2191
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2192
    const-string v1, "messages.messageId = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2193
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2194
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2196
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2197
    const-string v1, "ME.messageMessageIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2198
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public declared-synchronized getMessageCursorLogicForConversation(J)Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
    .locals 4
    .parameter "conversationId"

    .prologue
    .line 5768
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5769
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    .line 5770
    .local v0, messageCursorLogic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
    if-nez v0, :cond_0

    .line 5771
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    .end local v0           #messageCursorLogic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;J)V

    .line 5772
    .restart local v0       #messageCursorLogic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMessageCursorLogicMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5774
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5775
    monitor-exit p0

    return-object v0

    .line 5774
    .end local v0           #messageCursorLogic:Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5768
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "labelId"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(Lcom/google/android/gm/provider/MailCore$Label;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public getPublicSettingsCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter

    .prologue
    .line 3135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3136
    const-string v0, "select "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 3138
    aget-object v2, p1, v0

    .line 3139
    if-eqz v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3140
    :cond_0
    const-string v3, "(select value from internal_sync_settings where name =\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    const-string v3, "\') as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3146
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getRequestVersion()I
    .locals 1

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v0

    return v0
.end method

.method public getServerArrowsEnabled()Z
    .locals 1

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->getInfoOverloadArrowsEnabled()Z

    move-result v0

    return v0
.end method

.method getSettingsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getEngineSettingsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1484
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1487
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local p2
    :goto_0
    return-object p2

    .line 1485
    .restart local p2
    :cond_0
    :try_start_1
    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 1487
    .end local p2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local p2
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method declared-synchronized getStatusCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "projection"

    .prologue
    .line 3180
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3181
    const/4 v1, 0x2

    .line 3189
    .local v1, currentTask:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3190
    or-int/lit8 v1, v1, 0x10

    .line 3192
    :cond_0
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynchronizationStateInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3193
    or-int/lit8 v1, v1, 0x20

    .line 3196
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3197
    .local v3, status:Ljava/lang/Integer;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 3199
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 3202
    .local v0, builder:Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3203
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3204
    monitor-exit p0

    return-object v2

    .line 3182
    .end local v0           #builder:Landroid/database/MatrixCursor$RowBuilder;
    .end local v1           #currentTask:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #status:Ljava/lang/Integer;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 3183
    const/4 v1, 0x1

    .restart local v1       #currentTask:I
    goto :goto_0

    .line 3185
    .end local v1           #currentTask:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #currentTask:I
    goto :goto_0

    .line 3180
    .end local v1           #currentTask:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getSubscribedFeedUrl(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Urls;->serverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;JLcom/google/android/gm/provider/MailCore$Label;)J
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3495
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 3500
    :try_start_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->conversationId:J

    .line 3501
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 3504
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-nez v2, :cond_3

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT COALESCE(MAX(messageId), 0) FROM messages where conversation = ? AND queryId = 0"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    .line 3518
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-nez v2, :cond_4

    .line 3519
    new-instance v2, Lcom/google/android/gm/provider/ConversationUtil;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-direct {v2, v5, v6}, Lcom/google/android/gm/provider/ConversationUtil;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V

    .line 3520
    move-wide/from16 v0, p2

    invoke-virtual {v2, v12, v13, v0, v1}, Lcom/google/android/gm/provider/ConversationUtil;->fetchOldConversationLabels(JJ)Ljava/util/Map;

    move-result-object v2

    move-object v11, v2

    .line 3526
    :goto_1
    const-string v2, "_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3527
    const-string v2, "queryId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3528
    const-string v2, "subject"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    const-string v2, "snippet"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->snippet:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    const-string v2, "fromAddress"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->fromAddress:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    const-string v2, "personalLevel"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->toInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3534
    const-string v2, "forceAllUnread"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3535
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdCached()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3538
    if-eqz p4, :cond_0

    .line 3539
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    move-object/from16 v0, p4

    iget-wide v5, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3542
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->getLabelIdsStringFromLabelIds(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 3543
    const-string v5, "labelIds"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    const-string v2, "numMessages"

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->numMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3545
    const-string v2, "maxMessageId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3546
    const-string v2, "hasAttachments"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->hasAttachments:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversations"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 3548
    const-wide/16 v14, 0x0

    cmp-long v2, p2, v14

    if-nez v2, :cond_1

    .line 3549
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailEngine;->requestIndex()V

    .line 3552
    :cond_1
    const-wide/16 v14, -0x1

    cmp-long v2, v5, v14

    if-nez v2, :cond_2

    .line 3556
    const-string v2, "Gmail"

    const-string v5, "Failed to insert conversation"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3559
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-nez v2, :cond_7

    .line 3563
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    .line 3564
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    .line 3565
    new-instance v2, Lcom/google/android/gm/provider/LabelRecord;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->date:J

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/provider/LabelRecord;-><init>(JJZ)V

    invoke-virtual {v14, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3632
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 3514
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->maxMessageId:J

    goto/16 :goto_0

    .line 3523
    :cond_4
    const/4 v2, 0x0

    move-object v11, v2

    goto/16 :goto_1

    .line 3570
    :cond_5
    new-instance v2, Lcom/google/android/gm/provider/SyncedConversationHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gm/provider/SyncedConversationHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V

    .line 3572
    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v10, 0x0

    move-wide v3, v12

    move-object v6, v11

    move-object v7, v14

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gm/provider/SyncedConversationHandler;->updateLabelInfo(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;)V

    .line 3579
    const-wide/16 v5, 0x0

    move-wide v3, v12

    move-object v7, v14

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gm/provider/SyncedConversationHandler;->insertConversationLabels(JJLjava/util/Map;)V

    .line 3628
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3630
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v2

    .line 3581
    :cond_7
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 3583
    if-eqz p4, :cond_9

    .line 3584
    const-string v2, "labels_id"

    move-object/from16 v0, p4

    iget-wide v5, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3593
    :goto_3
    const-string v2, "queryId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3594
    const-string v2, "isZombie"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3607
    const-string v2, "sortMessageId"

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3608
    const-string v2, "date"

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3609
    const-string v2, "conversation_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversation_labels"

    const-string v6, "queryId = ? AND conversation_id = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3616
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3617
    const-string v5, "labels_id"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversation_labels"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 3619
    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_8

    .line 3623
    const-string v2, "Gmail"

    const-string v5, "Failed to insert conversation label"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 3590
    :cond_9
    const-string v2, "labels_id"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method isFullTextSearchEnabled()Z
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/MailEngine$Preferences;->getFullTextSearchEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public labelsSynced()Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    return v0
.end method

.method localMessageIdForMessageId(J)J
    .locals 5
    .parameter

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT _id FROM messages WHERE messageId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2308
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2309
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->PROJECTON_MESSAGE_ID_AND_CONVERSATION_ID:[Ljava/lang/String;

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2313
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2325
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 2316
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2317
    new-instance v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    invoke-direct {v5, p0}, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 2318
    const-string v0, "messageId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    .line 2320
    const-string v0, "conversation"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 1906
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->onSyncCanceled()V

    .line 1907
    return-void
.end method

.method public performBackgroundSync(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1551
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTasksDisabledForTesting:Z

    if-eqz v0, :cond_0

    .line 1552
    const-string v0, "Gmail"

    const-string v2, "Sync disabled for testing, don\'t perform sync."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1553
    monitor-exit v1

    .line 1564
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThread:Ljava/lang/Thread;

    .line 1556
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1558
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->sync(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1560
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1561
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThread:Ljava/lang/Thread;

    .line 1562
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1556
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1560
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1561
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundSyncThread:Ljava/lang/Thread;

    .line 1562
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public postBackgroundTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 5911
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailEngineClosing:Z

    if-nez v0, :cond_0

    .line 5912
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5914
    :cond_0
    return-void
.end method

.method purgeStaleMessagesOutsideTransaction()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3233
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3235
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    if-nez v0, :cond_3

    .line 3236
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    move v0, v1

    .line 3239
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->purgeSomeStaleMessagesInTransaction()Z

    move-result v2

    .line 3240
    if-nez v2, :cond_2

    .line 3244
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3246
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3249
    :goto_1
    if-eqz v0, :cond_1

    .line 3250
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3251
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->requestIndex()V

    .line 3253
    :cond_1
    return v0

    .line 3241
    :cond_2
    const/4 v0, 0x1

    .line 3242
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3246
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public registerInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V
    .locals 3
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 985
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 986
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 996
    :goto_0
    monitor-exit v1

    .line 997
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 992
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestSync()V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v1, "gmail-ls"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 759
    return-void
.end method

.method scheduleIndexing()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 1408
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1409
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mStartAccountIndexingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail_full_text_search_indexer_delay_msec"

    const v4, 0x493e0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1416
    const-string v3, "Gmail"

    const-string v4, "Scheduling index for %s ms from now"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long v2, v3, v5

    const-wide/32 v4, 0xdbba0

    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->mStartAccountIndexingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public declared-synchronized sendNotificationIntents(Z)V
    .locals 14
    .parameter

    .prologue
    .line 3305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 3367
    :cond_0
    monitor-exit p0

    return-void

    .line 3316
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3318
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 3319
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3321
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3323
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 3324
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3325
    invoke-virtual {p0, v7, v8}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    .line 3326
    if-eqz v2, :cond_2

    .line 3327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationLabelCount-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3328
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/google/android/gm/provider/MailEngine;->getSettingsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3329
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    iget-wide v3, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumUnreadConversations(J)I

    move-result v4

    .line 3331
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumUnreadConversations(J)I

    move-result v3

    .line 3332
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3333
    const-string v1, "Gmail"

    const-string v5, "considering sending notification. label=%d, oldCount=%d, newCount=%d, unseenCount=%d, getAttention=%b"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v1, v5, v11}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3338
    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    .line 3339
    :cond_3
    const/4 v3, 0x0

    .line 3340
    const/4 v0, 0x0

    .line 3343
    :cond_4
    if-ne v10, v3, :cond_5

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 3348
    :cond_5
    if-lez v3, :cond_7

    const/4 v5, 0x1

    .line 3349
    :goto_1
    const-string v0, "Gmail"

    const-string v1, "sending notification. Adjusted values are label=%d, oldCount=%d, newCount=%d, unseenCount=%d, getAttention=%b"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v0, v1, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3353
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntent(Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailCore$Label;IIZ)V

    .line 3357
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    if-eq v10, v3, :cond_2

    .line 3363
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/google/android/gm/provider/MailEngine;->setSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 3305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3321
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3348
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public sendOrSaveDraft(JZJLandroid/content/ContentValues;)J
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2737
    new-instance v22, Landroid/util/TimingLogger;

    const-string v3, "Gmail"

    const-string v4, "sendOrSaveDraft"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const-string v3, "joinedAttachmentInfos"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2740
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getUpdatedAttachments(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    .line 2743
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 2744
    iget-object v6, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v7, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v6, v7, :cond_0

    iget-object v6, v3, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2746
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailEngine;->cacheAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    goto :goto_0

    .line 2749
    :cond_1
    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail$MessageModification;->joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 2750
    const-string v3, "caching"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2753
    const/4 v14, 0x0

    .line 2754
    const-string v3, "beginTransactionNonExclusive"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2756
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    move v10, v3

    .line 2758
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    move-result-object v5

    .line 2760
    if-nez v10, :cond_2

    if-nez v5, :cond_8

    :cond_2
    const-wide/16 v3, 0x0

    move-wide/from16 v20, v3

    .line 2763
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2765
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2766
    const-string v4, "value fiddling"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2772
    if-nez v10, :cond_3

    if-nez v5, :cond_b

    .line 2775
    :cond_3
    const/16 v4, 0x14

    shl-long v4, v12, v4

    .line 2776
    const-string v6, "messageId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2777
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-nez v6, :cond_9

    .line 2779
    const-wide/16 v6, 0x0

    move-wide/from16 v18, v4

    .line 2799
    :goto_3
    const-string v8, "fetch ref message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2800
    const-string v8, "conversation"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2802
    const-string v8, "queryId"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2805
    const-string v8, "synced"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2806
    const-string v8, "dateSentMs"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2807
    const-string v8, "dateReceivedMs"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2812
    const-string v8, "body"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2813
    const-string v8, "bodyCompressed"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2817
    :cond_4
    const-string v8, "error"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    const-string v8, "clientCreated"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2821
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    .line 2822
    const-string v8, "refMessageId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2824
    :cond_5
    const-string v8, "more values"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2826
    const-string v8, "Gmail"

    const-string v9, "MailEngine.sendOrSaveMessage messageId=%d refMessageId=%d, conversationId=%d"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v13

    const/4 v13, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v13

    const/4 v6, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v6

    invoke-static {v8, v9, v12}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2833
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "message_labels"

    const-string v8, "message_messageId = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2835
    const-string v6, "delete old labels"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2837
    const-string v6, "joinedAttachmentInfos"

    invoke-virtual {v3, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    if-eqz v10, :cond_c

    .line 2840
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "messages"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 2841
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_d

    .line 2842
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while inserting message with values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    :catchall_0
    move-exception v3

    move v4, v14

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2945
    const-string v5, "finish"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2947
    if-eqz v4, :cond_6

    .line 2948
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2949
    const-string v4, "onConversationChanged (new)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2951
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v3

    .line 2756
    :cond_7
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_1

    .line 2760
    :cond_8
    :try_start_1
    iget-wide v3, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    move-wide/from16 v20, v3

    goto/16 :goto_2

    .line 2781
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gm/provider/MailEngine;->getLocalMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v6

    .line 2782
    if-nez v6, :cond_a

    .line 2786
    const-wide/16 v6, 0x0

    move-wide/from16 v18, v4

    goto/16 :goto_3

    .line 2788
    :cond_a
    iget-wide v8, v6, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    .line 2789
    iget-wide v6, v6, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v18, v8

    goto/16 :goto_3

    .line 2793
    :cond_b
    iget-wide v8, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    .line 2794
    iget-wide v4, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    .line 2797
    const-wide/16 v6, 0x0

    move-wide/from16 v18, v8

    goto/16 :goto_3

    .line 2846
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "messages"

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2849
    :cond_d
    const-string v3, "insert or update"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2851
    if-eqz p3, :cond_11

    .line 2852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v7, "^r"

    invoke-virtual {v6, v7}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2876
    :goto_5
    const-string v3, "set new labels"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2879
    if-eqz p3, :cond_19

    .line 2880
    const-string v11, "messageSaved"

    .line 2894
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForMessageId(J)V

    .line 2896
    const-string v3, "update operations"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2899
    const-string v3, "gmail_send_immediately"

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 2901
    :goto_7
    const-string v3, "gmail_send_without_sync"

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 2903
    :goto_8
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v6, "gmail-ls"

    invoke-static {v3, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    move v15, v3

    .line 2905
    :goto_9
    if-nez p3, :cond_1d

    if-eqz v17, :cond_1d

    if-eqz v16, :cond_1d

    if-nez v15, :cond_1d

    const/4 v3, 0x1

    .line 2908
    :goto_a
    if-eqz v3, :cond_1e

    .line 2909
    new-instance v6, Lcom/google/android/gm/provider/Operations$OperationInfo;

    const-wide/16 v12, 0x0

    move-wide/from16 v7, v18

    move-wide v9, v4

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;J)V

    .line 2911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v3, v6}, Lcom/google/android/gm/provider/Operations;->incrementAndAddOperations(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    .line 2916
    :goto_b
    const-string v3, "update operations"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2918
    cmp-long v3, v18, v20

    if-eqz v3, :cond_e

    const-wide/16 v6, 0x0

    cmp-long v3, v20, v6

    if-eqz v3, :cond_e

    .line 2919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v6}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2922
    :cond_e
    const-string v3, "onConversationChanged (old)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2923
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v9, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-wide/from16 v7, v18

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2926
    const/4 v6, 0x1

    .line 2928
    if-nez p3, :cond_10

    if-eqz v17, :cond_10

    .line 2929
    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2930
    const-string v7, "expedited"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2931
    if-eqz v16, :cond_f

    if-nez v15, :cond_f

    .line 2932
    const-string v7, "force"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2933
    const-string v7, "sendwithoutsync"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2934
    const-string v7, "sendwithoutsyncMessageId"

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2935
    const-string v4, "sendwithoutsyncConversationId"

    move-wide/from16 v0, v18

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2937
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v4, v5, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2940
    :cond_10
    const-string v3, "notifyDatasetChanged"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2945
    const-string v3, "finish"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2948
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2949
    const-string v3, "onConversationChanged (new)"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2951
    invoke-virtual/range {v22 .. v22}, Landroid/util/TimingLogger;->dumpToLog()V

    return-wide p1

    .line 2856
    :cond_11
    const/4 v3, 0x0

    .line 2857
    const/4 v6, 0x0

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gm/provider/MailEngine;->getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v6

    .line 2858
    if-eqz v6, :cond_14

    .line 2859
    iget-object v3, v6, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gm/provider/MailEngine;->addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 2861
    :goto_c
    if-nez v3, :cond_12

    iget-object v3, v6, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/android/gm/provider/MailEngine;->addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_12
    const/4 v3, 0x1

    .line 2863
    :goto_d
    if-nez v3, :cond_13

    iget-object v3, v6, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/gm/provider/MailEngine;->addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_13
    const/4 v3, 0x1

    .line 2866
    :cond_14
    :goto_e
    if-eqz v3, :cond_15

    .line 2867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v7, "^i"

    invoke-virtual {v6, v7}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2872
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v7, "^^out"

    invoke-virtual {v6, v7}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto/16 :goto_5

    .line 2859
    :cond_16
    const/4 v3, 0x0

    goto :goto_c

    .line 2861
    :cond_17
    const/4 v3, 0x0

    goto :goto_d

    .line 2863
    :cond_18
    const/4 v3, 0x0

    goto :goto_e

    .line 2882
    :cond_19
    const-string v11, "messageSent"

    goto/16 :goto_6

    .line 2899
    :cond_1a
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_7

    .line 2901
    :cond_1b
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_8

    .line 2903
    :cond_1c
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_9

    .line 2905
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 2913
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-wide/from16 v7, v18

    move-wide v9, v4

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_b

    .line 2944
    :catchall_1
    move-exception v3

    move v4, v6

    goto/16 :goto_4
.end method

.method sendUpgradeSyncWindowIntent()V
    .locals 3

    .prologue
    .line 3641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gm.intent.ACTION_UPGRADE_SYNC_WINDOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3642
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3644
    return-void
.end method

.method setBackgroundTasksDisabledForTesting(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTasksDisabledForTesting:Z

    .line 787
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->interruptAndWaitForBackgroundThreads()V

    .line 788
    return-void
.end method

.method setInternalSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1522
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1523
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "internal_sync_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1526
    return-void
.end method

.method public setLabelOnConversation(JJLjava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2504
    const/4 v0, 0x0

    .line 2505
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 2507
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v1, p5}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v5

    .line 2508
    if-eqz v5, :cond_0

    .line 2509
    iget-wide v0, v5, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2510
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v7, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-wide v1, p1

    move-wide v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2512
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2514
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2515
    const/4 v0, 0x1

    .line 2518
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2519
    if-eqz v0, :cond_1

    .line 2520
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2521
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    .line 2527
    :cond_1
    if-nez p6, :cond_2

    const-string v0, "^u"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 2530
    :cond_2
    return-void

    .line 2518
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2521
    throw v0
.end method

.method public setLabelOnConversationsBulk([Landroid/content/ContentValues;)V
    .locals 17
    .parameter

    .prologue
    .line 2534
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 2535
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 2536
    const-string v1, "_id"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2537
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "values must have \'_id\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2540
    :cond_0
    const-string v1, "_id"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2542
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2543
    if-nez v1, :cond_1

    .line 2544
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2545
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v12, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2535
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2550
    :cond_2
    const/4 v11, 0x0

    .line 2551
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 2552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2554
    :try_start_0
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    .line 2555
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2556
    const/4 v2, 0x0

    .line 2558
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2559
    const-string v3, "canonicalName"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2560
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "values must have \'canonicalName\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2611
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2612
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    throw v1

    .line 2563
    :cond_4
    :try_start_1
    const-string v3, "canonicalName"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2565
    const-string v3, "maxMessageId"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2566
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "values must have \'maxMessageId\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2569
    :cond_5
    const-string v3, "maxMessageId"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2572
    const-string v3, "add_label_action"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2573
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "values must have \'add_label_action\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2576
    :cond_6
    const-string v3, "add_label_action"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2578
    const-string v1, "Gmail"

    const-string v3, "MailProvider.insert(): adding or removing label %s to conversation %d, maxMessageId %d operation (is add) = %b"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v6, v8

    const/4 v8, 0x1

    aput-object v9, v6, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v8, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v1, v3, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2581
    invoke-static/range {v16 .. v16}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2582
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label is not user-settable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2586
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    .line 2587
    if-eqz v6, :cond_8

    .line 2588
    iget-wide v1, v6, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2589
    const/4 v10, 0x1

    .line 2591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2593
    if-nez v7, :cond_c

    const-string v1, "^u"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2594
    const/4 v1, 0x1

    move v2, v1

    move v1, v10

    :goto_3
    move v11, v2

    move v2, v1

    .line 2600
    goto/16 :goto_2

    .line 2597
    :cond_8
    const-string v1, "Gmail"

    const-string v3, "Missing label in setLabelOnConversationsBulk: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    move v2, v11

    goto :goto_3

    .line 2601
    :cond_9
    if-eqz v2, :cond_3

    .line 2602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    goto/16 :goto_1

    .line 2606
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2611
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2612
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    .line 2617
    if-eqz v11, :cond_b

    .line 2618
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 2620
    :cond_b
    return-void

    :cond_c
    move v1, v10

    move v2, v11

    goto :goto_3
.end method

.method public setLabelOnLocalMessage(JLjava/lang/String;Z)V
    .locals 14
    .parameter "localMessageId"
    .parameter "canonicalLabel"
    .parameter "on"

    .prologue
    .line 2361
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    move-result-object v13

    .line 2362
    .local v13, pair:Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
    if-nez v13, :cond_0

    .line 2363
    const-string v1, "Gmail"

    const-string v5, "setLabelOnLocalMessage returning because message pair does not exist: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2390
    :goto_0
    return-void

    .line 2368
    :cond_0
    iget-wide v2, v13, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    .line 2369
    .local v2, messageId:J
    iget-wide v11, v13, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    .line 2371
    .local v11, conversationId:J
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v4

    .line 2372
    .local v4, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v4, :cond_1

    .line 2373
    const-string v1, "Gmail"

    const-string v5, "setLabelOnLocalMessage returning because label does not exist: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v1, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2377
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2379
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v6, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2381
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->getSyncedForLocalMessageId(J)Z

    move-result v9

    .line 2383
    .local v9, messageSynced:Z
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v8, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v10, 0x1

    move-wide v6, v11

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 2385
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2388
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    goto :goto_0

    .line 2387
    .end local v9           #messageSynced:Z
    :catchall_0
    move-exception v1

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2388
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    throw v1
.end method

.method public setLabelOnLocalMessageBulk([Landroid/content/ContentValues;)V
    .locals 25
    .parameter

    .prologue
    .line 2394
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v19

    .line 2395
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, p1, v4

    .line 2396
    const-string v3, "conversation"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2397
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'conversation\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2400
    :cond_0
    const-string v3, "conversation"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2402
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2403
    if-nez v3, :cond_1

    .line 2404
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2405
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 2410
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v20

    .line 2411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 2413
    :try_start_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 2414
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2415
    const/4 v8, 0x0

    .line 2416
    const/16 v17, 0x0

    .line 2418
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 2419
    const-string v4, "canonicalName"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2420
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'canonicalName\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2496
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2497
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    throw v3

    .line 2423
    :cond_4
    :try_start_1
    const-string v4, "canonicalName"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2425
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2426
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'_id\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2429
    :cond_5
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 2431
    const-string v4, "messageId"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2432
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'messageId\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2435
    :cond_6
    const-string v4, "messageId"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2437
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    move-result-object v7

    .line 2438
    const/4 v6, 0x1

    .line 2439
    if-eqz v7, :cond_7

    iget-wide v11, v7, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v11, v13

    if-nez v9, :cond_7

    iget-wide v11, v7, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    cmp-long v7, v11, v4

    if-eqz v7, :cond_f

    .line 2443
    :cond_7
    const/4 v6, 0x0

    move v9, v6

    .line 2446
    :goto_3
    const-string v6, "add_label_action"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2447
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'add_label_action\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2450
    :cond_8
    const-string v6, "add_label_action"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2452
    const-string v3, "Gmail"

    const-string v6, "MailProvider.insert(): adding or removing label %s to local message %d operation (is add) = %b"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v6, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2455
    invoke-static {v10}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2456
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label is not user-settable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2460
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v3, v10}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    .line 2461
    if-eqz v6, :cond_e

    .line 2462
    iget-wide v10, v6, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2463
    const/16 v18, 0x1

    .line 2464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2466
    if-nez v9, :cond_a

    .line 2471
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v15, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-wide v11, v4

    move-object v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2475
    :cond_a
    if-nez v17, :cond_d

    .line 2480
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getSyncedForLocalMessageId(J)Z

    move-result v3

    move/from16 v4, v18

    :goto_4
    move/from16 v17, v3

    move v8, v4

    .line 2483
    goto/16 :goto_2

    .line 2485
    :cond_b
    if-eqz v8, :cond_3

    .line 2486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v8, 0x1

    move/from16 v7, v17

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    goto/16 :goto_1

    .line 2491
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2496
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2497
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    .line 2499
    return-void

    :cond_d
    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_4

    :cond_e
    move/from16 v3, v17

    move v4, v8

    goto :goto_4

    :cond_f
    move v9, v6

    goto/16 :goto_3
.end method

.method public setPublicSettings(Landroid/content/ContentValues;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3150
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getMailSync()Lcom/google/android/gm/provider/MailSync;

    move-result-object v4

    .line 3152
    const-string v0, "labelsIncluded"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "labelsIncluded"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3155
    :goto_0
    const-string v2, "labelsPartial"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "labelsPartial"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3158
    :goto_1
    const-string v3, "conversationAgeDays"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "conversationAgeDays"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 3161
    :goto_2
    const-string v5, "maxAttachmentSize"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, "maxAttachmentSize"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 3164
    :cond_0
    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/google/android/gm/provider/MailSync;->setConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    return v0

    :cond_1
    move-object v0, v1

    .line 3152
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 3155
    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 3158
    goto :goto_2
.end method

.method setTestTransactionListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 0
    .parameter "transactionListener"

    .prologue
    .line 6062
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mTestTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 6063
    return-void
.end method

.method setValidateSyncSets(Z)V
    .locals 0
    .parameter "validate"

    .prologue
    .line 1314
    iput-boolean p1, p0, Lcom/google/android/gm/provider/MailEngine;->mValidateSyncSets:Z

    .line 1315
    return-void
.end method

.method sync(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 1576
    new-instance v7, Landroid/util/TimingLogger;

    const-string v0, "Gmail-profiling"

    const-string v1, "sync"

    invoke-direct {v7, v0, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v0, "start"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1578
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;

    invoke-direct {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;-><init>()V

    .line 1579
    const/4 v6, 0x0

    .line 1580
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->clearStats()V

    .line 1582
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1657
    :goto_0
    return-void

    .line 1588
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 1590
    const/4 v0, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    .line 1591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1593
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "gmail-ls"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    .line 1594
    if-gez v0, :cond_1

    .line 1595
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getIsSyncable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1596
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v3, "gmail-ls"

    invoke-static {v2, v3, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1600
    :cond_1
    const-string v2, "initialize"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    if-eqz v2, :cond_4

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1652
    :goto_2
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto :goto_0

    .line 1595
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1650
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    goto :goto_2

    .line 1604
    :cond_4
    :try_start_1
    new-instance v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v3}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    .line 1605
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->backgroundSync:Z

    .line 1607
    const-string v2, "sendwithoutsync"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1608
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    .line 1609
    const-string v2, "sendwithoutsyncMessageId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    .line 1610
    const-string v2, "sendwithoutsyncConversationId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    .line 1611
    const-string v2, "Gmail"

    const-string v4, "Reading send without sync message id, conversation id, %d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    iget-wide v9, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1616
    :cond_5
    if-gtz v0, :cond_7

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1652
    :goto_3
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 1650
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    goto :goto_3

    .line 1620
    :cond_7
    :try_start_2
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1621
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;Landroid/os/Bundle;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_14

    .line 1622
    const/4 v2, 0x1

    .line 1624
    :goto_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    .line 1650
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1652
    :cond_9
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 1624
    :catchall_0
    move-exception v0

    move v2, v6

    :goto_5
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1625
    :catch_0
    move-exception v0

    move v6, v2

    .line 1626
    :goto_6
    :try_start_7
    const-string v2, "Gmail"

    const-string v3, "Auth exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1627
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v6, :cond_b

    .line 1650
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1652
    :cond_b
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 1628
    :catch_1
    move-exception v0

    .line 1629
    :goto_7
    :try_start_8
    const-string v2, "Gmail"

    const-string v3, "Parse exception: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1630
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v6, :cond_d

    .line 1650
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1652
    :cond_d
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 1631
    :catch_2
    move-exception v0

    .line 1632
    :goto_8
    :try_start_9
    const-string v2, "Gmail"

    const-string v3, "Canceled: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v6, :cond_f

    .line 1650
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1652
    :cond_f
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 1633
    :catch_3
    move-exception v0

    .line 1634
    :goto_9
    :try_start_a
    const-string v2, "Gmail"

    const-string v3, "IOException: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1635
    const-string v2, "Gmail"

    const-string v3, "Detail: "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1636
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz v6, :cond_11

    .line 1650
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1652
    :cond_11
    const-string v0, "stop"

    invoke-virtual {v7, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 1641
    :catchall_1
    move-exception v0

    :goto_a
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->enqueueAttachmentDownloadTask()V

    .line 1645
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 1649
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v6, :cond_13

    .line 1650
    :cond_12
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 1652
    :cond_13
    const-string v1, "stop"

    invoke-virtual {v7, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1655
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    throw v0

    .line 1641
    :catchall_2
    move-exception v0

    move v6, v2

    goto :goto_a

    .line 1633
    :catch_4
    move-exception v0

    move v6, v2

    goto :goto_9

    .line 1631
    :catch_5
    move-exception v0

    move v6, v2

    goto/16 :goto_8

    .line 1628
    :catch_6
    move-exception v0

    move v6, v2

    goto/16 :goto_7

    .line 1625
    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 1624
    :catchall_3
    move-exception v0

    goto/16 :goto_5

    :cond_14
    move v2, v6

    goto/16 :goto_4
.end method

.method public updateLabelsLastTouched(Landroid/content/ContentValues;)I
    .locals 1
    .parameter "values"

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->updateLabelsLastTouched(Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
