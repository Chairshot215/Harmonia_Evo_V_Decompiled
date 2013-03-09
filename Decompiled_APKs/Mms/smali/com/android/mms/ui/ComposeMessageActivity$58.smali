.class Lcom/android/mms/ui/ComposeMessageActivity$58;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10361
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 10363
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 10364
    .local v15, smsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 10366
    .local v18, threadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "ComposeMessageActivity"

    const-string v2, "separateGroupSmsRunnable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 10369
    .local v13, msgListCursor:Landroid/database/Cursor;
    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 10370
    .local v8, dataCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10372
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 10373
    .local v19, type:Ljava/lang/String;
    const-string v1, "sms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10374
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 10375
    .local v11, msgId:J
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 10376
    .local v7, address:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 10377
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 10378
    .local v14, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10380
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v14}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v16

    .line 10381
    .local v16, threadId:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10382
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10390
    .end local v7           #address:Ljava/lang/String;
    .end local v11           #msgId:J
    .end local v14           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16           #threadId:J
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11000()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10391
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 10383
    .restart local v7       #address:Ljava/lang/String;
    .restart local v11       #msgId:J
    .restart local v14       #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 10384
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 10385
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 10386
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 10393
    .end local v7           #address:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .end local v11           #msgId:J
    .end local v14           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11000()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10396
    .end local v19           #type:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 10397
    :goto_2
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11000()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10398
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 10400
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11000()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10412
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11102(Z)Z

    .line 10413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$58;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->dismissSeparatingDialog()V

    .line 10414
    return-void

    .line 10402
    :cond_6
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 10403
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 10404
    .local v4, values:Landroid/content/ContentValues;
    const-string v2, "thread_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10405
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10406
    const-string v1, "cs_timestamp"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10407
    const-string v1, "cs_synced"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10408
    const-string v1, "cs_id"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10409
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10396
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method
