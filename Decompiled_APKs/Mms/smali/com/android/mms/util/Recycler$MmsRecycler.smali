.class public Lcom/android/mms/util/Recycler$MmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsRecycler"
.end annotation


# static fields
.field private static final ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_MMS_DATE:I = 0x2

.field private static final COLUMN_MMS_READ:I = 0x3

.field private static final COLUMN_THREAD_ID:I = 0x1

.field private static final ID:I = 0x0

.field private static final MESSAGE_COUNT:I = 0x1

.field private static final MMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public final DEFAULT_MAX_MMS_MESSAGES_PER_THREAD:I

.field public final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "count(*) as msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 459
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 472
    const-string v0, "MaxMmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$MmsRecycler;->MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    .line 473
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/util/Recycler$MmsRecycler;->DEFAULT_MAX_MMS_MESSAGES_PER_THREAD:I

    return-void
.end method

.method private deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V
    .locals 7
    .parameter "context"
    .parameter "threadId"
    .parameter "latestDate"

    .prologue
    .line 776
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 777
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    const-string v3, "trash"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 780
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND locked=0 AND date<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 785
    .local v1, cntDeleted:J
    const-string v3, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS: deleteMessagesOlderThanDate cntDeleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 800
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 802
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v12

    .line 827
    :goto_0
    return v0

    .line 805
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 807
    .local v8, limit:I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 808
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 809
    .local v10, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 810
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND locked=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 817
    .local v9, msgs:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v8, :cond_3

    .line 818
    const/4 v0, 0x1

    .line 821
    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 821
    :cond_3
    if-eqz v9, :cond_1

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 825
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 821
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

    .line 825
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 827
    goto :goto_0
.end method

.method protected deleteMessagesForContact(Landroid/content/Context;JI)V
    .locals 32
    .parameter "context"
    .parameter "contactId"
    .parameter "keep"

    .prologue
    .line 594
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

    .line 596
    invoke-static {}, Lcom/android/mms/util/Recycler;->access$000()Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 597
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 599
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v6, "content://mms-sms-v2/get-threadsID"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 600
    .local v3, uri:Landroid/net/Uri;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    .line 604
    .local v4, thread_projection:[Ljava/lang/String;
    const-string v30, "_id IN (SELECT thread_id FROM contacts WHERE contact_id in (%s))"

    .line 605
    .local v30, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 606
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

    .line 608
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 609
    .local v18, cursor:Landroid/database/Cursor;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v24, ids:Ljava/lang/StringBuilder;
    if-eqz v18, :cond_2

    .line 611
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 612
    const/16 v23, 0x1

    .line 614
    .local v23, idIdx:I
    const-string v6, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 616
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 617
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 618
    .local v29, threadID:I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 619
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 720
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #thread_projection:[Ljava/lang/String;
    .end local v5           #select:Ljava/lang/String;
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v23           #idIdx:I
    .end local v24           #ids:Ljava/lang/StringBuilder;
    .end local v29           #threadID:I
    .end local v30           #where:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 622
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #thread_projection:[Ljava/lang/String;
    .restart local v5       #select:Ljava/lang/String;
    .restart local v18       #cursor:Landroid/database/Cursor;
    .restart local v23       #idIdx:I
    .restart local v24       #ids:Ljava/lang/StringBuilder;
    .restart local v29       #threadID:I
    .restart local v30       #where:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v6, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 627
    .end local v23           #idIdx:I
    .end local v29           #threadID:I
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_2
    const-string v30, "thread_id IN (%s) AND locked=0 AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    .line 636
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 637
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

    .line 639
    const-string v6, "content://mms"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 640
    .local v12, MMS_URI:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AND msg_box>0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 643
    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 644
    .local v14, builder2:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 645
    const-string v6, "SecureInclude"

    const-string v7, "1"

    invoke-virtual {v14, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 647
    :cond_3
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "date DESC"

    move-object v6, v2

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 649
    if-nez v18, :cond_4

    .line 650
    const-string v6, "Recycler"

    const-string v7, "MMS: deleteMessagesForContact cursor = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    monitor-exit v31

    .line 721
    :goto_1
    return-void

    .line 655
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 656
    .local v17, count:I
    sub-int v27, v17, p4

    .line 658
    .local v27, numberToDelete:I
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS: deleteMessagesForContact keep: "

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

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-gtz v27, :cond_6

    .line 664
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 665
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_5
    monitor-exit v31

    goto :goto_1

    .line 670
    :cond_6
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 671
    .local v13, builder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 672
    const-string v6, "trash"

    const-string v7, "true"

    invoke-virtual {v13, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 674
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 675
    const-string v6, "bg"

    const-string v7, "true"

    invoke-virtual {v13, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    :cond_8
    :try_start_2
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    .line 681
    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 683
    .local v25, latestDate:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND locked=0 AND date<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 684
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

    .line 687
    const/16 v22, 0x14

    .line 688
    .local v22, iDeleteLimit:I
    const-wide/16 v15, 0x0

    .line 690
    .local v15, cntDeleted:J
    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 692
    rem-int v6, v27, v22

    if-nez v6, :cond_9

    div-int v21, v27, v22

    .line 694
    .local v21, iDeleteCount:I
    :goto_2
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 696
    add-int/lit8 v6, v21, -0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_a

    .line 697
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v15, v6

    .line 694
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 692
    .end local v20           #i:I
    .end local v21           #iDeleteCount:I
    :cond_9
    div-int v6, v27, v22

    add-int/lit8 v21, v6, 0x1

    goto :goto_2

    .line 700
    .restart local v20       #i:I
    .restart local v21       #iDeleteCount:I
    :cond_a
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND date >="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 702
    .local v28, strTempSelect:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v2, v6, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v15, v6

    .line 703
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 713
    .end local v15           #cntDeleted:J
    .end local v20           #i:I
    .end local v21           #iDeleteCount:I
    .end local v22           #iDeleteLimit:I
    .end local v25           #latestDate:J
    .end local v28           #strTempSelect:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 715
    .local v19, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 718
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 720
    .end local v19           #e:Ljava/lang/InterruptedException;
    :goto_5
    monitor-exit v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 709
    .restart local v15       #cntDeleted:J
    .restart local v22       #iDeleteLimit:I
    .restart local v25       #latestDate:J
    :cond_b
    :try_start_5
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v15, v6

    .line 711
    :cond_c
    const-string v6, "Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS: deleteMessagesForContact cntDeleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, v15

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 718
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v15           #cntDeleted:J
    .end local v22           #iDeleteLimit:I
    .end local v25           #latestDate:J
    :catchall_1
    move-exception v6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 18
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 726
    const-string v2, "Recycler"

    const-string v4, "MMS: deleteMessagesForThread"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    .line 772
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-static {}, Lcom/android/mms/util/Recycler;->access$000()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 733
    const/4 v15, 0x0

    .line 734
    .local v15, cursor:Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 736
    .local v11, latestDate:J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 738
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND locked=0 AND msg_box>0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "m_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "m_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x84

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "m_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x82

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 744
    .local v6, where:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 745
    .local v13, builder2:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    const-string v2, "SecureInclude"

    const-string v4, "1"

    invoke-virtual {v13, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 747
    :cond_1
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 752
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 753
    .local v14, count:I
    sub-int v16, v14, p4

    .line 755
    .local v16, numberToDelete:I
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS: deleteMessagesForThread keep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numberToDelete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 759
    if-gtz v16, :cond_3

    .line 766
    if-eqz v15, :cond_2

    .line 767
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v17

    goto/16 :goto_0

    .line 771
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v6           #where:Ljava/lang/String;
    .end local v13           #builder2:Landroid/net/Uri$Builder;
    .end local v14           #count:I
    .end local v16           #numberToDelete:I
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 763
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v13       #builder2:Landroid/net/Uri$Builder;
    .restart local v14       #count:I
    .restart local v16       #numberToDelete:I
    :cond_3
    :try_start_2
    move/from16 v0, p4

    invoke-interface {v15, v0}, Landroid/database/Cursor;->move(I)Z

    .line 764
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v11

    .line 766
    if-eqz v15, :cond_4

    .line 767
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    .line 770
    invoke-direct/range {v7 .. v12}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    .line 771
    monitor-exit v17

    goto/16 :goto_0

    .line 766
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v6           #where:Ljava/lang/String;
    .end local v13           #builder2:Landroid/net/Uri$Builder;
    .end local v14           #count:I
    .end local v16           #numberToDelete:I
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_5

    .line 767
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected deleteMessagesFromUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 573
    const-string v2, "Recycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteMessagesFromUri uri = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 576
    .local v9, msgId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 577
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://mms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 578
    .local v1, MMS_URI:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, select:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 580
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 581
    const-string v2, "Recycler"

    const-string v4, "deleteMessagesFromUri cursor = null"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 585
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 586
    .local v10, threadId:J
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessagesFromUri threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 588
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/mms/util/Recycler$MmsRecycler;->getContactIdFromThreadId(Landroid/content/Context;J)J

    move-result-wide v6

    .line 589
    .local v6, contactId:J
    const-string v2, "Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessagesFromUri contactId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p1, v6, v7, v2}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesForContact(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method public deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 17
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 509
    const-string v0, "Recycler"

    const-string v2, "MMS: deleteOldMessagesByUri"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual/range {p0 .. p2}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesFromUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 522
    :cond_1
    invoke-static {}, Lcom/android/mms/util/Recycler;->access$000()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 523
    const/4 v12, 0x0

    .line 524
    .local v12, cursor:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 525
    .local v9, latestDate:J
    const-wide/16 v7, 0x0

    .line 527
    .local v7, threadId:J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 528
    .local v14, msgId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 530
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id in (select thread_id from pdu where _id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") AND locked=0 AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x84

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, where:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 541
    if-nez v12, :cond_3

    .line 561
    if-eqz v12, :cond_2

    .line 562
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v16

    goto/16 :goto_0

    .line 568
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v4           #where:Ljava/lang/String;
    .end local v14           #msgId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 545
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v14       #msgId:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 546
    .local v11, count:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v13

    .line 547
    .local v13, keep:I
    sub-int v15, v11, v13

    .line 549
    .local v15, numberToDelete:I
    const-string v0, "Recycler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS: deleteOldMessagesByUri keep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numberToDelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 553
    if-gtz v15, :cond_5

    .line 561
    if-eqz v12, :cond_4

    .line 562
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 557
    :cond_5
    :try_start_4
    invoke-interface {v12, v13}, Landroid/database/Cursor;->move(I)Z

    .line 558
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 559
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v7

    .line 561
    if-eqz v12, :cond_6

    .line 562
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v0, v7, v2

    if-eqz v0, :cond_7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 566
    invoke-direct/range {v5 .. v10}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    .line 568
    :cond_7
    monitor-exit v16

    goto/16 :goto_0

    .line 561
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v4           #where:Ljava/lang/String;
    .end local v11           #count:I
    .end local v13           #keep:I
    .end local v14           #msgId:Ljava/lang/String;
    .end local v15           #numberToDelete:I
    :catchall_1
    move-exception v0

    if-eqz v12, :cond_8

    .line 562
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 5
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 790
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 792
    .local v0, id:J
    const-string v2, "Recycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recycler message \n    id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 501
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "threads"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 505
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 476
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxMmsMessagesPerThread"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getMessageMaxLimit()I
    .locals 1

    .prologue
    .line 492
    const/16 v0, 0x3e7

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    .prologue
    .line 488
    const/16 v0, 0xa

    return v0
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 496
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
    .line 481
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 485
    return-void
.end method
