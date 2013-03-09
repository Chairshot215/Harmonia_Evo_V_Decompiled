.class public final Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;
.super Ljava/lang/Object;
.source "SuggsetionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIND_CONTACT_NEED_SUGGESTION:I = 0x2

.field private static final FIND_SUGGESTION_ALL:I = 0x1

.field public static LIMIT_IN_ONE_THREAD:I = 0x0

.field private static LIMIT_IN_ONE_TRANSACTION:I = 0x0

.field private static final SEND_FOUND_SUGGEST_INTENT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SuggsetionUtils"

.field private static mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

.field private static mThread:Landroid/os/HandlerThread;


# instance fields
.field private isEnabled:Z

.field private mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    .line 61
    sput-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mHandler:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x5

    sput v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_TRANSACTION:I

    .line 68
    const/16 v0, 0xa

    sput v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 3
    .parameter "context"
    .parameter "db"
    .parameter "aggregator"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    .line 80
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SuggsetionUtils"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    .line 85
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;

    sget-object v1, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils$WorkingHandler;-><init>(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p3, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->updateSuggestForContactsList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->queryContactNeedToDoSuggestion()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static callUpdateSuggestionAtHandlerThread(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, RawContactsMarkedForArrange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 212
    .local v0, handler:Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 1
    .parameter "context"
    .parameter "db"
    .parameter "aggregator"

    .prologue
    .line 100
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator;)V

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    .line 103
    :cond_0
    return-void
.end method

.method private queryContactNeedToDoSuggestion()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v8, RawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "raw_contact_id2 = 0 AND removed = 1 "

    .line 193
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "suggestion"

    const-string v5, "raw_contact_id1"

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 194
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 195
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "raw_contact_id1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 197
    .local v10, id:I
    if-lez v10, :cond_1

    .line 198
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    .end local v10           #id:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_3
    invoke-static {v8}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->callUpdateSuggestionAtHandlerThread(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private querySuggest(J)I
    .locals 13
    .parameter "raw_contact_id"

    .prologue
    .line 309
    const/4 v10, 0x0

    .line 310
    .local v10, count:I
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 313
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v12, mSugRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 316
    .local v9, builder:Landroid/net/Uri$Builder;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 317
    const-string v0, "suggest_filter"

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 319
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->HtcQueryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 323
    .local v11, cs:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 324
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 325
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    invoke-direct {p0, p1, p2, v12}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->updateSuggest(JLjava/util/ArrayList;)V

    .line 336
    .end local v9           #builder:Landroid/net/Uri$Builder;
    .end local v11           #cs:Landroid/database/Cursor;
    .end local v12           #mSugRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    return v10
.end method

.method private runInTransaction(Ljava/util/List;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, mBatchArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    .line 291
    .local v0, count:I
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 293
    .local v4, raw_id:J
    invoke-direct {p0, v4, v5}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->querySuggest(J)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 295
    .end local v4           #raw_id:J
    :cond_1
    iget-object v6, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    iget-object v6, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 296
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 297
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    const-string v6, "SuggsetionUtils"

    const-string v7, " "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    iget-object v6, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 298
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v2

    .line 299
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v6, "SuggsetionUtils"

    const-string v7, "Catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    iget-object v6, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method private updateSuggest(JLjava/util/ArrayList;)V
    .locals 10
    .parameter "mOriRawId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, mSugRawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v7, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v7, v7, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionBeforeUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 343
    iget-object v7, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v7, v7, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionBeforeUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 344
    iget-object v7, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v7, v7, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionBeforeUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 345
    iget-object v7, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v7, v7, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionBeforeUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 349
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 350
    .local v3, id2:J
    sget-object v5, Lcom/htc/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    .line 351
    .local v5, insertUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 354
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    cmp-long v7, p1, v3

    if-gez v7, :cond_0

    .line 355
    const-string v7, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 356
    const-string v7, "raw_contact_id2"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 364
    :goto_1
    const-string v7, "removed"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 366
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_0
    const-string v7, "raw_contact_id1"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 360
    const-string v7, "raw_contact_id2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 370
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #id2:J
    .end local v5           #insertUri:Landroid/net/Uri;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_2

    .line 380
    :goto_2
    return-void

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, e:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Problem inserting suggestions"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 374
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 375
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v7, "SuggsetionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem inserting suggestions:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 376
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v1

    .line 377
    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v7, "SuggsetionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLiteConstraintException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static updateSuggestAtBegin()V
    .locals 2

    .prologue
    .line 177
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    if-nez v1, :cond_0

    .line 182
    .local v0, handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 180
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    sget-object v1, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 181
    .restart local v0       #handler:Landroid/os/Handler;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSuggestForContactsList(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, RawContactsMarkedForArrange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 219
    .local v5, size:I
    if-gtz v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-boolean v8, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    if-nez v8, :cond_3

    sget v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    if-le v5, v8, :cond_3

    .line 229
    iget-boolean v8, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    if-nez v8, :cond_2

    .line 232
    :cond_2
    sget v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    if-le v5, v8, :cond_0

    goto :goto_0

    .line 239
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    .local v0, beginTime:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 244
    .local v2, curSize:I
    const/4 v7, 0x0

    .line 246
    .local v7, totalCount:I
    :goto_1
    :try_start_0
    iget-boolean v8, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    if-nez v8, :cond_4

    sget v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    if-ge v2, v8, :cond_5

    :cond_4
    sget v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_TRANSACTION:I

    if-le v2, v8, :cond_5

    .line 247
    const/4 v8, 0x0

    sget v9, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_TRANSACTION:I

    invoke-virtual {p1, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 249
    .local v6, tempArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->runInTransaction(Ljava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 251
    const/4 v8, 0x0

    sget v9, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_TRANSACTION:I

    invoke-virtual {p1, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 253
    goto :goto_1

    .line 256
    .end local v6           #tempArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    iget-boolean v8, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    if-nez v8, :cond_6

    sget v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    if-ge v2, v8, :cond_7

    .line 257
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->runInTransaction(Ljava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 258
    const/4 v2, 0x0

    .line 261
    :cond_7
    iget-boolean v8, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    if-nez v8, :cond_8

    sget v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->LIMIT_IN_ONE_THREAD:I

    if-le v5, v8, :cond_8

    .line 265
    :cond_8
    if-lez v7, :cond_9

    const-wide/high16 v8, 0x4000

    invoke-static {v8, v9}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 267
    sget-object v8, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    invoke-virtual {v8}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 268
    .local v4, handler:Landroid/os/Handler;
    if-eqz v4, :cond_9

    .line 269
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x2710

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v4           #handler:Landroid/os/Handler;
    :cond_9
    :goto_2
    sub-int v8, v5, v2

    if-lez v8, :cond_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "SuggsetionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSuggestForContactsList fail! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 143
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->isEnabled:Z

    .line 108
    return-void
.end method
