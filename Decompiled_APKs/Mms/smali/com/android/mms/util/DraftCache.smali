.class public Lcom/android/mms/util/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DraftCache$OnDraftChangedListener;,
        Lcom/android/mms/util/DraftCache$ThreadData;,
        Lcom/android/mms/util/DraftCache$DraftSnippet;
    }
.end annotation


# static fields
.field static final COLUMN_DRAFT_THREAD_ID:I = 0x0

.field private static final DEBUG:Z = false

.field static final DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DraftCache"

.field private static listerSyncObj:Ljava/lang/Object;

.field private static mContactsObserver:Landroid/database/ContentObserver;

.field private static mMessageObserver:Landroid/database/ContentObserver;

.field private static sInstance:Lcom/android/mms/util/DraftCache;

.field static final sRefreshRunnable:Ljava/lang/Runnable;

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDraftSnippet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/DraftCache$DraftSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/DraftCache$ThreadData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/android/mms/util/DraftCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 79
    sput-object v0, Lcom/android/mms/util/DraftCache;->mMessageObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/util/DraftCache;->listerSyncObj:Ljava/lang/Object;

    .line 116
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/android/mms/util/DraftCache$3;

    invoke-direct {v0}, Lcom/android/mms/util/DraftCache$3;-><init>()V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/DraftCache;->mThreadsData:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    .line 93
    iput-object p1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 96
    new-instance v1, Lcom/android/mms/util/DraftCache$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/DraftCache$1;-><init>(Lcom/android/mms/util/DraftCache;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/util/DraftCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 103
    const-string v1, "content://mms-sms-v2/updateThreadsName"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/DraftCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    new-instance v1, Lcom/android/mms/util/DraftCache$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/DraftCache$2;-><init>(Lcom/android/mms/util/DraftCache;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/util/DraftCache;->mMessageObserver:Landroid/database/ContentObserver;

    .line 113
    iget-object v1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/DraftCache;->mMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DraftCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/mms/util/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static close(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 388
    sget-object v0, Lcom/android/mms/util/DraftCache;->mContactsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DraftCache;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 390
    sput-object v2, Lcom/android/mms/util/DraftCache;->mContactsObserver:Landroid/database/ContentObserver;

    .line 393
    :cond_0
    sget-object v0, Lcom/android/mms/util/DraftCache;->mMessageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DraftCache;->mMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    sput-object v2, Lcom/android/mms/util/DraftCache;->mMessageObserver:Landroid/database/ContentObserver;

    .line 397
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DraftCache;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 406
    :cond_0
    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 383
    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/android/mms/util/DraftCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    .line 385
    :cond_0
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 417
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, s:Ljava/lang/String;
    const-string v1, "DraftCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DraftCache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private rebuildCache()V
    .locals 29

    .prologue
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v25

    .line 174
    .local v25, t:J
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v22, newDraftSnippet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/DraftCache$DraftSnippet;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v23, newThreadsData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/DraftCache$ThreadData;>;"
    const/4 v14, 0x0

    .line 179
    .local v14, cursor:Landroid/database/Cursor;
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 180
    .local v13, builder:Landroid/net/Uri$Builder;
    const-string v3, "category"

    sget v5, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 190
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 191
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_c

    .line 192
    new-instance v24, Lcom/android/mms/util/DraftCache$DraftSnippet;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$DraftSnippet;-><init>(Lcom/android/mms/util/DraftCache;)V

    .line 193
    .local v24, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 194
    .local v27, type:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 195
    .local v20, msgid:J
    move-wide/from16 v0, v20

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/mms/util/DraftCache$DraftSnippet;->msg_id:J

    .line 196
    const-string v3, "mms"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 197
    const/16 v3, 0x9

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    .line 198
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    .line 200
    :try_start_1
    new-instance v28, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/16 v3, 0xa

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 201
    .local v28, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 206
    .end local v28           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_1
    const/16 v3, 0xb

    :try_start_2
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v24

    iput-wide v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    .line 207
    const-string v3, ""

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    .line 208
    const-string v3, "mms"

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/addr"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 212
    .local v4, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 214
    .local v12, addrCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "type in (151, 130, 129)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 219
    :goto_2
    if-eqz v12, :cond_3

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    :cond_1
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    .line 228
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 239
    .end local v4           #uri:Landroid/net/Uri;
    .end local v12           #addrCursor:Landroid/database/Cursor;
    :cond_3
    :goto_4
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 240
    const-string v3, ""

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    .line 242
    :cond_4
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 243
    const-string v3, ""

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    .line 246
    :cond_5
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 249
    .end local v20           #msgid:J
    .end local v24           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .end local v27           #type:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 250
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 251
    const/4 v14, 0x0

    .line 252
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 263
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    :cond_6
    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 264
    const-string v3, "content://mms-sms-v2/rawQuery"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 265
    .restart local v4       #uri:Landroid/net/Uri;
    const-string v9, "SELECT contacts.thread_id,contacts.contact_id,threads.recipient_address FROM contacts JOIN threads ON contacts.thread_id = threads._id"

    .line 266
    .local v9, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v4

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 268
    if-eqz v14, :cond_d

    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 269
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_d

    .line 270
    new-instance v15, Lcom/android/mms/util/DraftCache$ThreadData;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/util/DraftCache$ThreadData;-><init>(Lcom/android/mms/util/DraftCache;)V

    .line 271
    .local v15, data:Lcom/android/mms/util/DraftCache$ThreadData;
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v15, Lcom/android/mms/util/DraftCache$ThreadData;->thread_id:J

    .line 272
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v15, Lcom/android/mms/util/DraftCache$ThreadData;->contact_id:J

    .line 273
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/mms/util/DraftCache$ThreadData;->address:Ljava/lang/String;

    .line 274
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 278
    .end local v15           #data:Lcom/android/mms/util/DraftCache$ThreadData;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 202
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #selection:Ljava/lang/String;
    .restart local v20       #msgid:J
    .restart local v24       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .restart local v27       #type:Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 203
    .local v16, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 254
    .end local v16           #e:Ljava/lang/Exception;
    .end local v20           #msgid:J
    .end local v24           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .end local v27           #type:Ljava/lang/String;
    :catch_2
    move-exception v16

    .line 255
    .local v16, e:Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 256
    const/4 v14, 0x0

    .line 257
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 259
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 217
    .end local v16           #e:Ljava/lang/IllegalStateException;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v12       #addrCursor:Landroid/database/Cursor;
    .restart local v20       #msgid:J
    .restart local v24       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .restart local v27       #type:Ljava/lang/String;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "type=151"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_2

    .line 225
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 259
    .end local v4           #uri:Landroid/net/Uri;
    .end local v12           #addrCursor:Landroid/database/Cursor;
    .end local v20           #msgid:J
    .end local v24           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .end local v27           #type:Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 233
    .restart local v20       #msgid:J
    .restart local v24       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .restart local v27       #type:Ljava/lang/String;
    :cond_b
    const/4 v3, 0x3

    :try_start_8
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    .line 234
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    .line 235
    const/4 v3, 0x5

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v24

    iput-wide v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    .line 236
    const-string v3, "sms"

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 259
    .end local v20           #msgid:J
    .end local v24           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .end local v27           #type:Ljava/lang/String;
    :cond_c
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 278
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v9       #selection:Ljava/lang/String;
    :cond_d
    if-eqz v14, :cond_e

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 284
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #selection:Ljava/lang/String;
    :cond_e
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_f
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 285
    .restart local v24       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/util/DraftCache$ThreadData;

    .line 286
    .restart local v15       #data:Lcom/android/mms/util/DraftCache$ThreadData;
    iget-object v3, v15, Lcom/android/mms/util/DraftCache$ThreadData;->address:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/mms/util/DraftCache;->compareAddresses([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 287
    iget-wide v5, v15, Lcom/android/mms/util/DraftCache$ThreadData;->thread_id:J

    move-object/from16 v0, v24

    iput-wide v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->thread_id:J
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    .line 292
    .end local v15           #data:Lcom/android/mms/util/DraftCache$ThreadData;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v24           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :catch_3
    move-exception v16

    .line 293
    .local v16, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Array OutOfBound!!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 295
    .restart local v24       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DraftSnippet:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 297
    .end local v24           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_11
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/util/DraftCache$ThreadData;

    .line 298
    .restart local v15       #data:Lcom/android/mms/util/DraftCache$ThreadData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThreadData:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v15, Lcom/android/mms/util/DraftCache$ThreadData;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 300
    .end local v15           #data:Lcom/android/mms/util/DraftCache$ThreadData;
    :cond_12
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 301
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 304
    .end local v16           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_13
    sget-object v5, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 305
    :try_start_a
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    .line 306
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/DraftCache;->mThreadsData:Ljava/util/ArrayList;

    .line 307
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_14

    .line 327
    :goto_a
    return-void

    .line 307
    :catchall_2
    move-exception v3

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v3

    .line 322
    :cond_14
    sget-object v5, Lcom/android/mms/util/DraftCache;->listerSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 323
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 324
    .local v19, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface/range {v19 .. v19}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged()V

    goto :goto_b

    .line 326
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    :catchall_3
    move-exception v3

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v3

    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_15
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_a
.end method


# virtual methods
.method public add(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .parameter "thread_id"
    .parameter "msg_id"
    .parameter "address"
    .parameter "text"
    .parameter "type"
    .parameter "date"

    .prologue
    .line 549
    invoke-virtual {p0, p7, p3, p4}, Lcom/android/mms/util/DraftCache;->getSnippetByMsgID(Ljava/lang/String;J)Lcom/android/mms/util/DraftCache$DraftSnippet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 550
    sget-object v2, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 551
    :try_start_0
    new-instance v0, Lcom/android/mms/util/DraftCache$DraftSnippet;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache$DraftSnippet;-><init>(Lcom/android/mms/util/DraftCache;)V

    .line 552
    .local v0, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    iput-wide p1, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->thread_id:J

    .line 553
    iput-wide p3, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->msg_id:J

    .line 554
    iput-object p5, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    .line 555
    if-nez p6, :cond_0

    .line 556
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    .line 560
    :goto_0
    iput-object p7, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    .line 561
    iput-wide p8, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    .line 562
    iget-object v1, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    const-string v1, "DraftCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DraftCache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Add DraftCache type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x1

    monitor-exit v2

    .line 567
    .end local v0           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :goto_1
    return v1

    .line 558
    .restart local v0       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_0
    iput-object p6, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    goto :goto_0

    .line 565
    .end local v0           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 567
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 361
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnDraftChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    sget-object v1, Lcom/android/mms/util/DraftCache;->listerSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected compareAddresses([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 422
    array-length v4, p1

    array-length v5, p2

    if-eq v4, v5, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v3

    .line 425
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_5

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, inRecipients:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v4, p2

    if-ge v2, v4, :cond_3

    .line 428
    aget-object v4, p1, v0

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, p1, v0

    aget-object v5, p2, v2

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 429
    :cond_2
    const/4 v1, 0x1

    .line 433
    :cond_3
    if-eqz v1, :cond_0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 437
    .end local v1           #inRecipients:Z
    .end local v2           #j:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 410
    const-string v2, "DraftCache"

    const-string v3, "dump:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 412
    .local v1, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    const-string v2, "DraftCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  tid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->thread_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v1           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_0
    return-void
.end method

.method public getSnippet(J)Lcom/android/mms/util/DraftCache$DraftSnippet;
    .locals 18
    .parameter "contact_id"

    .prologue
    .line 474
    const/4 v8, 0x0

    .line 475
    .local v8, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v11, threads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v13, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v13

    .line 478
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/DraftCache;->mThreadsData:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/util/DraftCache$ThreadData;

    .line 479
    .local v9, thread:Lcom/android/mms/util/DraftCache$ThreadData;
    iget-wide v14, v9, Lcom/android/mms/util/DraftCache$ThreadData;->contact_id:J

    cmp-long v12, v14, p1

    if-nez v12, :cond_0

    .line 480
    iget-wide v14, v9, Lcom/android/mms/util/DraftCache$ThreadData;->thread_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #thread:Lcom/android/mms/util/DraftCache$ThreadData;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 484
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 485
    .local v10, thread_id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 486
    .local v7, s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    iget-wide v14, v7, Lcom/android/mms/util/DraftCache$DraftSnippet;->thread_id:J

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v12, v14, v16

    if-nez v12, :cond_3

    .line 487
    if-nez v8, :cond_4

    .line 488
    move-object v8, v7

    goto :goto_1

    .line 490
    :cond_4
    const-string v12, "mms"

    iget-object v14, v7, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-wide v14, v7, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    const-wide/16 v16, 0x3e8

    mul-long v1, v14, v16

    .line 491
    .local v1, date1:J
    :goto_2
    const-string v12, "mms"

    iget-object v14, v8, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-wide v14, v8, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    const-wide/16 v16, 0x3e8

    mul-long v3, v14, v16

    .line 492
    .local v3, date2:J
    :goto_3
    cmp-long v12, v1, v3

    if-lez v12, :cond_3

    .line 493
    move-object v8, v7

    goto :goto_1

    .line 490
    .end local v1           #date1:J
    .end local v3           #date2:J
    :cond_5
    iget-wide v1, v7, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    goto :goto_2

    .line 491
    .restart local v1       #date1:J
    :cond_6
    iget-wide v3, v8, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    goto :goto_3

    .line 498
    .end local v1           #date1:J
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    .end local v10           #thread_id:Ljava/lang/Long;
    :cond_7
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-eqz v8, :cond_8

    iget-object v12, v8, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 502
    const/4 v8, 0x0

    .line 505
    :cond_8
    return-object v8
.end method

.method public getSnippet(Ljava/lang/String;)Lcom/android/mms/util/DraftCache$DraftSnippet;
    .locals 17
    .parameter "address"

    .prologue
    .line 441
    const/4 v10, 0x0

    .line 443
    .local v10, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    sget-object v12, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v12

    .line 444
    if-eqz p1, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 445
    const-string v11, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 447
    .local v1, addresses:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/util/DraftCache$DraftSnippet;

    iget-object v11, v11, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/util/DraftCache$DraftSnippet;

    iget-object v11, v11, Lcom/android/mms/util/DraftCache$DraftSnippet;->address:Ljava/lang/String;

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, recipients:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8}, Lcom/android/mms/util/DraftCache;->compareAddresses([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 452
    .local v9, s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    if-nez v10, :cond_1

    .line 453
    move-object v10, v9

    .line 447
    .end local v8           #recipients:[Ljava/lang/String;
    .end local v9           #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 455
    .restart local v8       #recipients:[Ljava/lang/String;
    .restart local v9       #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_1
    const-string v11, "mms"

    iget-object v13, v9, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v13, v9, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    const-wide/16 v15, 0x3e8

    mul-long v2, v13, v15

    .line 456
    .local v2, date1:J
    :goto_2
    const-string v11, "mms"

    iget-object v13, v10, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-wide v13, v10, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    const-wide/16 v15, 0x3e8

    mul-long v4, v13, v15

    .line 457
    .local v4, date2:J
    :goto_3
    cmp-long v11, v2, v4

    if-lez v11, :cond_0

    .line 458
    move-object v10, v9

    goto :goto_1

    .line 455
    .end local v2           #date1:J
    .end local v4           #date2:J
    :cond_2
    iget-wide v2, v9, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    goto :goto_2

    .line 456
    .restart local v2       #date1:J
    :cond_3
    iget-wide v4, v10, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 463
    .end local v2           #date1:J
    .end local v8           #recipients:[Ljava/lang/String;
    .end local v9           #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :catch_0
    move-exception v6

    .line 464
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 465
    const/4 v11, 0x0

    monitor-exit v12

    .line 470
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #i:I
    :goto_4
    return-object v11

    .line 468
    :cond_4
    monitor-exit v12

    move-object v11, v10

    .line 470
    goto :goto_4

    .line 468
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11
.end method

.method public getSnippetByMsgID(Ljava/lang/String;J)Lcom/android/mms/util/DraftCache$DraftSnippet;
    .locals 7
    .parameter "msgType"
    .parameter "msgID"

    .prologue
    .line 509
    const/4 v2, 0x0

    .line 511
    .local v2, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    sget-object v4, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    .line 512
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-lez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 513
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/util/DraftCache$DraftSnippet;

    iget-wide v5, v3, Lcom/android/mms/util/DraftCache$DraftSnippet;->msg_id:J

    cmp-long v3, v5, p2

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/util/DraftCache$DraftSnippet;

    iget-object v3, v3, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/mms/util/DraftCache$DraftSnippet;

    move-object v2, v0

    .line 520
    .end local v1           #i:I
    :cond_0
    monitor-exit v4

    .line 522
    return-object v2

    .line 513
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public hasDraft()Z
    .locals 2

    .prologue
    .line 344
    sget-object v1, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasDraft(J)Z
    .locals 6
    .parameter "threadId"

    .prologue
    .line 333
    sget-object v3, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 334
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 335
    .local v1, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    iget-wide v4, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->thread_id:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 336
    const/4 v2, 0x1

    monitor-exit v3

    .line 340
    .end local v1           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :goto_0
    return v2

    .line 338
    :cond_1
    monitor-exit v3

    .line 340
    const/4 v2, 0x0

    goto :goto_0

    .line 338
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDraftExist(J)Z
    .locals 6
    .parameter "msgID"

    .prologue
    .line 350
    sget-object v3, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 352
    .local v1, s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    iget-wide v4, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->msg_id:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 353
    const/4 v2, 0x1

    monitor-exit v3

    .line 357
    .end local v1           #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :goto_0
    return v2

    .line 355
    :cond_1
    monitor-exit v3

    .line 357
    const/4 v2, 0x0

    goto :goto_0

    .line 355
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 155
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->refresh(J)V

    .line 156
    return-void
.end method

.method public refresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 146
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v0

    .line 147
    .local v0, h:Landroid/os/Handler;
    sget-object v1, Lcom/android/mms/util/DraftCache;->sRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Lcom/android/mms/util/DraftCache;->sRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v1, Lcom/android/mms/util/DraftCache;->sRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;J)Z
    .locals 7
    .parameter "type"
    .parameter "msg_id"

    .prologue
    .line 526
    sget-object v3, Lcom/android/mms/util/DraftCache;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 527
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/DraftCache$DraftSnippet;

    .line 529
    .local v1, s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    iget-object v2, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v4, v1, Lcom/android/mms/util/DraftCache$DraftSnippet;->msg_id:J

    cmp-long v2, v4, p2

    if-nez v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSnippet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 531
    const-string v2, "DraftCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DraftCache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Remove DraftCache type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v2, 0x1

    monitor-exit v3

    .line 536
    .end local v1           #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :goto_1
    return v2

    .line 527
    .restart local v1       #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v1           #s:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_1
    monitor-exit v3

    .line 536
    const/4 v2, 0x0

    goto :goto_1

    .line 535
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 370
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnDraftChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_0
    sget-object v1, Lcom/android/mms/util/DraftCache;->listerSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 376
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
