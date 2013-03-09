.class public Lcom/android/mms/util/Recycler$SmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsRecycler"
.end annotation


# static fields
.field private static final ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_SMS_ADDRESS:I = 0x2

.field private static final COLUMN_SMS_BODY:I = 0x3

.field private static final COLUMN_SMS_DATE:I = 0x4

.field private static final COLUMN_SMS_READ:I = 0x5

.field private static final COLUMN_SMS_STATUS:I = 0x7

.field private static final COLUMN_SMS_TYPE:I = 0x6

.field private static final COLUMN_THREAD_ID:I = 0x1

.field private static final ID:I = 0x0

.field private static final MESSAGE_COUNT:I = 0x1

.field private static final SMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public final DEFAULT_MAX_SMS_MESSAGES_PER_THREAD:I

.field public final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 190
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 212
    const-string v0, "MaxSmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$SmsRecycler;->MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    .line 213
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/util/Recycler$SmsRecycler;->DEFAULT_MAX_SMS_MESSAGES_PER_THREAD:I

    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 422
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v12

    .line 447
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 427
    .local v8, limit:I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$SmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 429
    .local v10, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "locked=0"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 437
    .local v9, msgs:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v8, :cond_3

    .line 438
    const/4 v0, 0x1

    .line 441
    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 441
    :cond_3
    if-eqz v9, :cond_1

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 445
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 441
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #msgs:Landroid/database/Cursor;
    .restart local v10       #threadId:J
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_4

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 445
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 447
    goto :goto_0
.end method

.method protected deleteMessagesForContact(Landroid/content/Context;JI)V
    .locals 27
    .parameter "context"
    .parameter "contactId"
    .parameter "keep"

    .prologue
    .line 250
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessagesForContact id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/android/mms/util/Recycler;->access$000()Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 253
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 255
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v6, "content://mms-sms-v2/get-threadsID"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 256
    .local v3, uri:Landroid/net/Uri;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    .line 260
    .local v4, thread_projection:[Ljava/lang/String;
    const-string v25, "_id IN (SELECT thread_id FROM contacts WHERE contact_id in (%s))"

    .line 261
    .local v25, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, select:Ljava/lang/String;
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessagesForContact select = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 265
    .local v18, cursor:Landroid/database/Cursor;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v20, ids:Ljava/lang/StringBuilder;
    if-eqz v18, :cond_2

    .line 268
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 269
    const/16 v19, 0x1

    .line 271
    .local v19, idIdx:I
    const-string v6, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 273
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 274
    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 275
    .local v24, threadID:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 276
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 345
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #thread_projection:[Ljava/lang/String;
    .end local v5           #select:Ljava/lang/String;
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v19           #idIdx:I
    .end local v20           #ids:Ljava/lang/StringBuilder;
    .end local v24           #threadID:I
    .end local v25           #where:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 279
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #thread_projection:[Ljava/lang/String;
    .restart local v5       #select:Ljava/lang/String;
    .restart local v18       #cursor:Landroid/database/Cursor;
    .restart local v19       #idIdx:I
    .restart local v20       #ids:Ljava/lang/StringBuilder;
    .restart local v24       #threadID:I
    .restart local v25       #where:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v6, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    .end local v19           #idIdx:I
    .end local v24           #threadID:I
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_2
    const-string v25, "thread_id IN (%s)"

    .line 288
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND (index_on_sim = -1 OR Length(index_on_sim) = 0) AND locked=0 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessagesForContact select = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v6, "content://sms"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 294
    .local v12, SMS_URI:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AND type>0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 297
    .local v14, builder2:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    const-string v6, "SecureInclude"

    const-string v7, "1"

    invoke-virtual {v14, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 300
    :cond_3
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "date DESC"

    move-object v6, v2

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 302
    if-nez v18, :cond_4

    .line 303
    const-string v6, "Recycler"

    const-string v7, "SMS: deleteMessagesForContact cursor = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    monitor-exit v26

    .line 346
    :goto_1
    return-void

    .line 307
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 308
    .local v17, count:I
    sub-int v23, v17, p4

    .line 310
    .local v23, numberToDelete:I
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS: deleteMessagesForContact keep: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numberToDelete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-gtz v23, :cond_6

    .line 316
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 317
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_5
    monitor-exit v26

    goto :goto_1

    .line 324
    :cond_6
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 325
    .local v13, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 326
    const-string v6, "trash"

    const-string v7, "true"

    invoke-virtual {v13, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :cond_7
    :try_start_2
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    .line 333
    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 335
    .local v21, latestDate:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND (index_on_sim = -1 OR Length(index_on_sim) = 0) AND locked=0 AND date<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessagesForContact select = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v15, v6

    .line 340
    .local v15, cntDeleted:J
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS: deleteMessagesForContact cntDeleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, v15

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 345
    monitor-exit v26

    goto/16 :goto_1

    .line 343
    .end local v15           #cntDeleted:J
    .end local v21           #latestDate:J
    :catchall_1
    move-exception v6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 19
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 351
    const-string v2, "Recycler"

    const-string v4, "SMS: deleteMessagesForThread"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/android/mms/util/Recycler;->access$000()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 355
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 357
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 358
    .local v10, builder2:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "SecureInclude"

    const-string v4, "1"

    invoke-virtual {v10, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 360
    :cond_0
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v6, "locked=0 AND type>0"

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 366
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 367
    monitor-exit v18

    .line 402
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 370
    .local v13, count:I
    sub-int v17, v13, p4

    .line 372
    .local v17, numberToDelete:I
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS: deleteMessagesForThread keep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numberToDelete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-gtz v17, :cond_3

    .line 377
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 378
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_2
    monitor-exit v18

    goto :goto_0

    .line 401
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v10           #builder2:Landroid/net/Uri$Builder;
    .end local v13           #count:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v17           #numberToDelete:I
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 383
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #builder2:Landroid/net/Uri$Builder;
    .restart local v13       #count:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v17       #numberToDelete:I
    :cond_3
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 384
    .local v9, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 385
    const-string v2, "trash"

    const-string v4, "true"

    invoke-virtual {v9, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :cond_4
    :try_start_2
    move/from16 v0, p4

    invoke-interface {v14, v0}, Landroid/database/Cursor;->move(I)Z

    .line 390
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 392
    .local v15, latestDate:J
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(index_on_sim = -1 OR Length(index_on_sim) = 0) AND locked=0 AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v2, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v11, v2

    .line 396
    .local v11, cntDeleted:J
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS: deleteMessagesForThread cntDeleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 401
    monitor-exit v18

    goto/16 :goto_0

    .line 399
    .end local v11           #cntDeleted:J
    .end local v15           #latestDate:J
    :catchall_1
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 6
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 405
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 407
    .local v0, date:J
    invoke-static {p2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, dateStr:Ljava/lang/String;
    const-string v3, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recycler message \n    address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n    read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 241
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 245
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 216
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxSmsMessagesPerThread"

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getMessageMaxLimit()I
    .locals 1

    .prologue
    .line 232
    const/16 v0, 0x1388

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    .prologue
    .line 228
    const/16 v0, 0xa

    return v0
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 221
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    return-void
.end method
