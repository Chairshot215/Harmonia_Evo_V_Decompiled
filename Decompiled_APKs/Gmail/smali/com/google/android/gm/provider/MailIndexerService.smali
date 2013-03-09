.class public Lcom/google/android/gm/provider/MailIndexerService;
.super Landroid/app/IntentService;
.source "MailIndexerService.java"


# static fields
.field private static DEFAULT_MESSAGE_BATCH_SIZE:I

.field private static final FTS_DOCID_PROJECTION:[Ljava/lang/String;

.field private static GMAIL_FULL_TEXT_SEARCH_MESSAGE_INDEX__BATCH_SIZE:Ljava/lang/String;

.field private static final INDEXABLE_CONVERSATION_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final INDEXABLE_MESSAGE_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static volatile sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

.field private static sTransactionYieldTimeoutMs:I


# instance fields
.field private mAccount:Ljava/lang/String;

.field private volatile mIndexerExternallyYielded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/16 v0, 0x32

    sput v0, Lcom/google/android/gm/provider/MailIndexerService;->DEFAULT_MESSAGE_BATCH_SIZE:I

    .line 56
    const-string v0, "gmail_full_text_search_message_index_batch_size"

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->GMAIL_FULL_TEXT_SEARCH_MESSAGE_INDEX__BATCH_SIZE:Ljava/lang/String;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "messageId"

    aput-object v1, v0, v3

    const-string v1, "conversation"

    aput-object v1, v0, v4

    const-string v1, "subject"

    aput-object v1, v0, v5

    const-string v1, "snippet"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->INDEXABLE_MESSAGE_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    const-string v1, "snippet"

    aput-object v1, v0, v5

    const-string v1, "fromAddress"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->INDEXABLE_CONVERSATION_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "docid"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->FTS_DOCID_PROJECTION:[Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/provider/MailIndexerService;->sTransactionYieldTimeoutMs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "MailIndexerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    .line 94
    return-void
.end method

.method private addConversationToFtsIndex(Lcom/google/android/gm/provider/MailEngine;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "engine"
    .parameter "conversationValues"

    .prologue
    const/4 v8, 0x0

    .line 467
    iget-object v1, p1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 468
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->isFullTextSearchEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v2, indexValues:Landroid/content/ContentValues;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v3, indexValuesIds:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, conversationId:Ljava/lang/String;
    const-string v4, "conversation_fts_table"

    const-string v5, "docid = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    const-string v4, "docid"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v4, "docid"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v4, "subject"

    const-string v5, "subject"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v4, "snippet"

    const-string v5, "snippet"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v4, "fromAddress"

    const-string v5, "fromAddress"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v4, "conversation_fts_table"

    invoke-virtual {v1, v4, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 500
    const-string v4, "conversation_fts_table_index"

    invoke-virtual {v1, v4, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private addMessageToFtsIndex(Lcom/google/android/gm/provider/MailEngine;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "engine"
    .parameter "messageValues"

    .prologue
    const/4 v7, 0x0

    .line 418
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 420
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->isFullTextSearchEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 432
    .local v1, indexValues:Landroid/content/ContentValues;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v2, indexValuesIds:Landroid/content/ContentValues;
    const-string v5, "messageId"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, messageId:Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/google/android/gm/provider/MailIndexerService;->deleteMessageFromFtsIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 442
    if-eqz v4, :cond_2

    .line 443
    const-string v5, "docid"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v5, "docid"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_2
    const-string v5, "conversation"

    const-string v6, "conversation"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v5, "subject"

    const-string v6, "subject"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v5, "snippet"

    const-string v6, "snippet"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v5, "body"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, messageBody:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 455
    const-string v5, "body"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_3
    const-string v5, "fromAddress"

    const-string v6, "fromAddress"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v5, "toAddresses"

    const-string v6, "toAddresses"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v5, "ccAddresses"

    const-string v6, "ccAddresses"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v5, "bccAddresses"

    const-string v6, "bccAddresses"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v5, "message_fts_table"

    invoke-virtual {v0, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 463
    const-string v5, "message_fts_table_index"

    invoke-virtual {v0, v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method static createSearchIndexTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 677
    const-string v0, "DROP TABLE IF EXISTS conversation_fts_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    const-string v0, "CREATE VIRTUAL TABLE conversation_fts_table USING FTS4 (subject TEXT, snippet TEXT, fromAddress TEXT, )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    const-string v0, "DROP TABLE IF EXISTS message_fts_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 690
    const-string v0, "CREATE VIRTUAL TABLE message_fts_table USING FTS4 (conversation TEXT, subject TEXT, snippet TEXT, body TEXT, fromAddress TEXT, toAddresses TEXT, ccAddresses TEXT, bccAddresses TEXT, )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 702
    const-string v0, "DROP TABLE IF EXISTS message_fts_table_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    const-string v0, "CREATE TABLE message_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 706
    const-string v0, "DROP TABLE IF EXISTS conversation_fts_table_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    const-string v0, "CREATE TABLE conversation_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method private deleteConversationFtsEntries(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    .line 512
    const-string v2, "conversation_fts_table"

    const-string v3, "conversation_fts_table_index"

    const-string v4, "conversations"

    const-string v5, "conversation_fts_table_index.docid = conversations._id"

    const-string v6, "conversations._id is null"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailIndexerService;->deleteEntriesFromFtsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 518
    .local v7, yielded:Z
    return v7
.end method

.method private deleteEntriesFromFtsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "db"
    .parameter "tableName"
    .parameter "indexTableName"
    .parameter "inTable"
    .parameter "join"
    .parameter "where"

    .prologue
    .line 532
    const/16 v17, 0x0

    .line 543
    .local v17, yielded:Z
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v12

    .line 544
    .local v12, docIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gm/provider/MailIndexerService;->FTS_DOCID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 548
    .local v10, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 555
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    if-eqz v2, :cond_1

    .line 557
    const/4 v2, 0x1

    .line 623
    :goto_1
    return v2

    .line 561
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 563
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE docid = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 567
    .local v15, itemCountStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 570
    .local v11, docId:Ljava/lang/Long;
    const/16 v16, 0x0

    .line 571
    .local v16, itemToRemove:Z
    const/4 v2, 0x1

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v15, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 574
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    const/16 v16, 0x1

    .line 578
    :goto_2
    :try_start_3
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    :goto_3
    if-eqz v16, :cond_3

    .line 583
    :try_start_4
    const-string v2, "docid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 584
    const-string v2, "docid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 593
    :cond_3
    :goto_4
    :try_start_5
    sget v2, Lcom/google/android/gm/provider/MailIndexerService;->sTransactionYieldTimeoutMs:I

    int-to-long v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    if-eqz v2, :cond_2

    .line 595
    :cond_4
    const-string v2, "Gmail"

    const-string v3, "Yielded for contention, while deleting indexed content from table: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 598
    const/16 v17, 0x1

    .line 603
    .end local v11           #docId:Ljava/lang/Long;
    .end local v16           #itemToRemove:Z
    :cond_5
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 604
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of old index entries deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 607
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 610
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v2, v17

    .line 623
    goto/16 :goto_1

    .line 574
    .restart local v11       #docId:Ljava/lang/Long;
    .restart local v16       #itemToRemove:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 575
    :catch_0
    move-exception v2

    .line 578
    :try_start_7
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 609
    .end local v11           #docId:Ljava/lang/Long;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #itemCountStatement:Landroid/database/sqlite/SQLiteStatement;
    .end local v16           #itemToRemove:Z
    :catchall_1
    move-exception v2

    .line 610
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 620
    throw v2

    .line 578
    .restart local v11       #docId:Ljava/lang/Long;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #itemCountStatement:Landroid/database/sqlite/SQLiteStatement;
    .restart local v16       #itemToRemove:Z
    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    throw v2

    .line 585
    :catch_1
    move-exception v13

    .line 588
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Gmail"

    const-string v3, "Exception attempting to delete docid: %d from table: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v13, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 611
    .end local v11           #docId:Ljava/lang/Long;
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .end local v16           #itemToRemove:Z
    :catch_2
    move-exception v13

    .line 615
    .local v13, e:Ljava/lang/IllegalStateException;
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    .end local v13           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v13

    .line 620
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 611
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #itemCountStatement:Landroid/database/sqlite/SQLiteStatement;
    :catch_4
    move-exception v13

    .line 615
    .local v13, e:Ljava/lang/IllegalStateException;
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    .end local v13           #e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v13

    .line 620
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private deleteMessageFromFtsIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .parameter "db"
    .parameter "messageId"

    .prologue
    .line 504
    if-eqz p2, :cond_0

    .line 507
    const-string v0, "message_fts_table"

    const-string v1, "docid = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    :cond_0
    return-void
.end method

.method private deleteStaleMessageFtsEntries(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    .line 522
    const-string v2, "message_fts_table"

    const-string v3, "message_fts_table_index"

    const-string v4, "messages"

    const-string v5, "message_fts_table_index.docid = messages.messageId"

    const-string v6, "messages.messageId is null"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailIndexerService;->deleteEntriesFromFtsTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 527
    .local v7, yielded:Z
    return v7
.end method

.method static getIndexableMessageBodyText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "body"

    .prologue
    .line 628
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getMessageBodyWithoutElidedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexConversationContent(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 14
    .parameter "engine"

    .prologue
    .line 347
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 349
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailIndexerService;->deleteConversationFtsEntries(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v13

    .line 350
    .local v13, yielded:Z
    if-eqz v13, :cond_0

    .line 351
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailIndexerService;->spaceAvailableToIndexNewContent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    const/4 v1, 0x0

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 360
    .local v9, conversationsToBeIndexed:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v1, "conversations"

    sget-object v2, Lcom/google/android/gm/provider/MailIndexerService;->INDEXABLE_CONVERSATION_CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "queryId = 0 AND _id NOT IN (SELECT docid from conversation_fts_table_index)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 365
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_2

    .line 366
    const/4 v1, 0x0

    goto :goto_0

    .line 370
    :cond_2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 372
    const/4 v1, 0x1

    .line 384
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 375
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v8, conversationValues:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v1, "subject"

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "snippet"

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "fromAddress"

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 384
    .end local v8           #conversationValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 387
    const-string v1, "Gmail"

    const-string v2, "Number of conversations to index: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 392
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 393
    .restart local v8       #conversationValues:Landroid/content/ContentValues;
    if-eqz v8, :cond_6

    .line 394
    invoke-direct {p0, p1, v8}, Lcom/google/android/gm/provider/MailIndexerService;->addConversationToFtsIndex(Lcom/google/android/gm/provider/MailEngine;Landroid/content/ContentValues;)V

    .line 396
    :cond_6
    sget v1, Lcom/google/android/gm/provider/MailIndexerService;->sTransactionYieldTimeoutMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    if-eqz v1, :cond_5

    .line 398
    :cond_7
    const-string v1, "Gmail"

    const-string v2, "Yielded for contention while indexing conversations"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    const/4 v13, 0x1

    .line 405
    .end local v8           #conversationValues:Landroid/content/ContentValues;
    :cond_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 412
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v13

    .line 414
    goto/16 :goto_0

    .line 406
    .end local v12           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 410
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 412
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private indexMessageContent(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 25
    .parameter "engine"

    .prologue
    .line 214
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/provider/MailIndexerService;->deleteStaleMessageFtsEntries(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v24

    .line 216
    .local v24, yielded:Z
    if-eqz v24, :cond_0

    .line 218
    const/4 v4, 0x1

    .line 343
    :goto_0
    return v4

    .line 221
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailIndexerService;->spaceAvailableToIndexNewContent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    const/4 v4, 0x0

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v22

    .line 227
    .local v22, messagesToBeIndexed:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v4, "messages"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "messageId"

    aput-object v7, v5, v6

    const-string v6, "queryId = 0 AND messageId NOT IN (SELECT docid from message_fts_table_index)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 232
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 233
    const/4 v4, 0x0

    goto :goto_0

    .line 237
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 239
    const/4 v4, 0x1

    .line 246
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 242
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 246
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 249
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v23

    .line 250
    .local v23, numMessage:I
    const-string v4, "Gmail"

    const-string v5, "Number of messages to index: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailIndexerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/gm/provider/MailIndexerService;->GMAIL_FULL_TEXT_SEARCH_MESSAGE_INDEX__BATCH_SIZE:Ljava/lang/String;

    sget v6, Lcom/google/android/gm/provider/MailIndexerService;->DEFAULT_MESSAGE_BATCH_SIZE:I

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 256
    .local v16, messageBatchSize:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 257
    .local v20, messageList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    .line 258
    .local v11, currentMessageCount:I
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 259
    .local v19, messageId:Ljava/lang/Long;
    add-int/lit8 v11, v11, 0x1

    .line 260
    sget-object v4, Lcom/google/android/gm/provider/MailIndexerService;->INDEXABLE_MESSAGE_CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v18

    .line 262
    .local v18, messageCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_7

    .line 264
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 265
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v21, messageValues:Landroid/content/ContentValues;
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 267
    const-string v4, "messageId"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v4, "conversation"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v4, "subject"

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v4, "snippet"

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 273
    .local v17, messageBody:Ljava/lang/String;
    const-string v4, "fromAddress"

    const/4 v5, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v4, "toAddresses"

    const/4 v5, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v4, "ccAddresses"

    const/4 v5, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, "bccAddresses"

    const/16 v5, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v4, "body"

    invoke-static/range {v17 .. v17}, Lcom/google/android/gm/provider/MailIndexerService;->getIndexableMessageBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    .end local v17           #messageBody:Ljava/lang/String;
    .end local v21           #messageValues:Landroid/content/ContentValues;
    :cond_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    if-eqz v4, :cond_9

    .line 292
    const-string v4, "Gmail"

    const-string v5, "Yielded for contention, while indexing messages"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    const/16 v24, 0x1

    .end local v18           #messageCursor:Landroid/database/Cursor;
    .end local v19           #messageId:Ljava/lang/Long;
    :cond_8
    :goto_3
    move/from16 v4, v24

    .line 343
    goto/16 :goto_0

    .line 284
    .restart local v18       #messageCursor:Landroid/database/Cursor;
    .restart local v19       #messageId:Ljava/lang/Long;
    :catch_0
    move-exception v13

    .line 286
    .local v13, e:Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;
    :try_start_3
    const-string v4, "Gmail"

    const-string v5, "Unable to decompress the message body for indexing"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v13, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v13           #e:Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;
    :catchall_1
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4

    .line 303
    :cond_9
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v4, v0, :cond_a

    move/from16 v0, v23

    if-ne v11, v0, :cond_f

    .line 304
    :cond_a
    const-string v4, "Gmail"

    const-string v5, "Indexing batch with %d messages"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 307
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 309
    :try_start_4
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 310
    .restart local v21       #messageValues:Landroid/content/ContentValues;
    if-eqz v21, :cond_c

    .line 312
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailIndexerService;->addMessageToFtsIndex(Lcom/google/android/gm/provider/MailEngine;Landroid/content/ContentValues;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 320
    :cond_c
    :try_start_6
    sget v4, Lcom/google/android/gm/provider/MailIndexerService;->sTransactionYieldTimeoutMs:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    if-eqz v4, :cond_b

    .line 322
    :cond_d
    const-string v4, "Gmail"

    const-string v5, "Yielded for contention, while indexing messages"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 324
    const/16 v24, 0x1

    .line 329
    .end local v21           #messageValues:Landroid/content/ContentValues;
    :cond_e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 331
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 334
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 337
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_f
    if-eqz v24, :cond_5

    goto :goto_3

    .line 313
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v21       #messageValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .line 317
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    :try_start_7
    new-instance v4, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 331
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v21           #messageValues:Landroid/content/ContentValues;
    :catchall_2
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method static onContentProviderAccess(Ljava/lang/String;)V
    .locals 6
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    .line 190
    sget-object v0, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    .line 193
    .local v0, indexer:Lcom/google/android/gm/provider/MailIndexerService;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "Gmail"

    const-string v2, "Database access which requesting indexer delay for account: %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    iput-boolean v5, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    .line 198
    :cond_0
    return-void
.end method

.method private resetFtsTables(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 4
    .parameter "engine"

    .prologue
    const/4 v3, 0x0

    .line 659
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 661
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Gmail"

    const-string v2, "Recreating search index tables"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 663
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 665
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->createSearchIndexTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 667
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 668
    const-string v1, "Gmail"

    const-string v2, "Search index tables created successfully"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 673
    return-void

    .line 670
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private spaceAvailableToIndexNewContent()Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailIndexerService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 634
    .local v1, dataDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 639
    .local v6, usableSpaceBytes:J
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->deviceHasLargeDataPartition(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 640
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailIndexerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gmail_large_data_partition_min_indexing_available_space"

    const-wide/32 v12, 0x3b9aca00

    invoke-static {v10, v11, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 644
    .local v2, largeDataPartitionThreshold:J
    cmp-long v10, v6, v2

    if-ltz v10, :cond_1

    move v0, v8

    .line 655
    .end local v2           #largeDataPartitionThreshold:J
    .local v0, canIndex:Z
    :cond_0
    :goto_0
    return v0

    .end local v0           #canIndex:Z
    .restart local v2       #largeDataPartitionThreshold:J
    :cond_1
    move v0, v9

    .line 644
    goto :goto_0

    .line 646
    .end local v2           #largeDataPartitionThreshold:J
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 648
    .local v4, totalSpaceBytes:J
    long-to-float v10, v6

    long-to-float v11, v4

    const v12, 0x3e99999a

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_3

    move v0, v8

    .line 650
    .restart local v0       #canIndex:Z
    :goto_1
    if-nez v0, :cond_0

    .line 651
    const-string v10, "Gmail"

    const-string v11, "Data space requirement not met for indexing. Total: %d, Avail: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v12, v8

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .end local v0           #canIndex:Z
    :cond_3
    move v0, v9

    .line 648
    goto :goto_1
.end method

.method static yieldForTesting()V
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    .line 208
    .local v0, indexer:Lcom/google/android/gm/provider/MailIndexerService;
    if-eqz v0, :cond_0

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 100
    sget v1, Lcom/google/android/gm/provider/MailIndexerService;->sTransactionYieldTimeoutMs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailIndexerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/provider/MailIndexerService;->sTransactionYieldTimeoutMs:I

    .line 110
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v4, "Gmail"

    const-string v5, "MailIndexerService handling intent with action: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    const-string v4, "com.google.android.gm.intent.provider.INDEX_MESSAGE_CONTENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/google/android/gm/provider/MailIndexerService;->mIndexerExternallyYielded:Z

    .line 121
    const-string v4, "account"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    .line 123
    sput-object p0, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    .line 127
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 129
    iget-object v4, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    .line 130
    .local v2, engine:Lcom/google/android/gm/provider/MailEngine;
    if-nez v2, :cond_1

    .line 131
    const-string v4, "Gmail"

    const-string v5, "No MailEngine for account: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sput-object v9, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    .line 184
    .end local v2           #engine:Lcom/google/android/gm/provider/MailEngine;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v2       #engine:Lcom/google/android/gm/provider/MailEngine;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->backgroundTasksDisabledForTesting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    const-string v4, "Gmail"

    const-string v5, "Background tasks have been disabled for testing"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->cancelScheduledIndexRun()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    sput-object v9, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    goto :goto_0

    .line 142
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->isFullTextSearchEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    const-string v4, "Gmail"

    const-string v5, "Full text search has been disabled for this account: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->cancelScheduledIndexRun()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    sput-object v9, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    goto :goto_0

    .line 151
    :cond_3
    :try_start_3
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailIndexerService;->indexMessageContent(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v3

    .line 154
    .local v3, yielded:Z
    if-nez v3, :cond_4

    .line 156
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailIndexerService;->indexConversationContent(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v3

    .line 164
    :cond_4
    if-nez v3, :cond_5

    .line 166
    const-string v4, "Gmail"

    const-string v5, "Successful index run, cancel next scheduled index run"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->cancelScheduledIndexRun()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0

    .line 181
    .end local v3           #yielded:Z
    :cond_5
    :goto_1
    sput-object v9, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_4
    const-string v4, "Gmail"

    const-string v5, "Database appears to be corrupt.  Canceling index pass"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->cancelScheduledIndexRun()V

    .line 178
    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailIndexerService;->resetFtsTables(Lcom/google/android/gm/provider/MailEngine;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 181
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .end local v2           #engine:Lcom/google/android/gm/provider/MailEngine;
    :catchall_0
    move-exception v4

    sput-object v9, Lcom/google/android/gm/provider/MailIndexerService;->sIndexerInstance:Lcom/google/android/gm/provider/MailIndexerService;

    throw v4
.end method
