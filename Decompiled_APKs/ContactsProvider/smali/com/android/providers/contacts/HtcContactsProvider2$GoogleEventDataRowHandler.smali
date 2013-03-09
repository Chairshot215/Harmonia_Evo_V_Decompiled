.class public Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GoogleEventDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 10691
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 10692
    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 10693
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 16
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 10980
    invoke-super/range {p0 .. p3}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v13

    .line 10981
    .local v13, numDeleted:I
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 10982
    .local v10, dataId:J
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 10983
    .local v14, rawContactId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-static {v14, v15}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "content://com.android.contacts/profile/data"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    sget-object v4, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/htc_event_v2"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/HtcContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 10995
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 10997
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 10998
    .local v8, count:I
    const/4 v2, 0x1

    if-ne v8, v2, :cond_0

    .line 10999
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v3, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v12

    .line 11002
    .local v12, handler:Lcom/android/providers/contacts/DataRowHandler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1, v9}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11005
    .end local v12           #handler:Lcom/android/providers/contacts/DataRowHandler;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 11008
    .end local v8           #count:I
    :cond_1
    return v13

    .line 10983
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v3, "content://com.android.contacts/data"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 11005
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 15
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10703
    const-string v12, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10704
    .local v4, date:Ljava/lang/String;
    const/4 v8, -0x1

    .line 10705
    .local v8, htcType:I
    iget-object v12, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 10706
    const-string v12, "data2"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 10708
    .local v6, googleType:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 10709
    const/4 v12, 0x1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 10710
    const/4 v8, 0x2

    .line 10718
    .end local v6           #googleType:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 10720
    .local v2, dataId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, -0x1

    if-eq v12, v8, :cond_1

    .line 10725
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 10727
    .local v1, calendar:Ljava/util/Calendar;
    const-string v12, "UTC"

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10728
    iget-object v12, p0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    invoke-static {v12, v4, v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2400(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v9

    .line 10730
    .local v9, isYearGiven:Z
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 10732
    .local v10, millis:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 10733
    .local v7, htcEventValues:Landroid/content/ContentValues;
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 10734
    const-string v12, "raw_contact_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10736
    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10738
    const-string v12, "data1"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10740
    const-string v12, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10742
    const-string v12, "data3"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10744
    const-string v12, "data4"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10746
    const-string v12, "data5"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10748
    const-string v12, "data6"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10751
    const-string v12, "data8"

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10754
    const-string v12, "data9"

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10757
    const-string v12, "data10"

    const-string v13, "UTC"

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10759
    const-string v12, "data11"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10762
    if-eqz v9, :cond_4

    .line 10763
    const-string v12, "data12"

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10769
    :goto_1
    const-string v12, "data13"

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10771
    const-string v12, "data14"

    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10775
    iget-object v12, p0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move/from16 v0, p6

    invoke-virtual {v12, v7, v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10782
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v7           #htcEventValues:Landroid/content/ContentValues;
    .end local v9           #isYearGiven:Z
    .end local v10           #millis:J
    :cond_1
    :goto_2
    return-wide v2

    .line 10711
    .end local v2           #dataId:J
    .restart local v6       #googleType:Ljava/lang/Integer;
    :cond_2
    const/4 v12, 0x3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 10712
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 10713
    :cond_3
    const/4 v12, 0x2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 10714
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 10766
    .end local v6           #googleType:Ljava/lang/Integer;
    .restart local v1       #calendar:Ljava/util/Calendar;
    .restart local v2       #dataId:J
    .restart local v7       #htcEventValues:Landroid/content/ContentValues;
    .restart local v9       #isYearGiven:Z
    .restart local v10       #millis:J
    :cond_4
    :try_start_1
    const-string v12, "data12"

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 10776
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v7           #htcEventValues:Landroid/content/ContentValues;
    .end local v9           #isYearGiven:Z
    .end local v10           #millis:J
    :catch_0
    move-exception v5

    .line 10777
    .local v5, e:Ljava/lang/Exception;
    const-string v12, "HtcContactsProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception at insert HtcEvent("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "), no insertion to the HtcEvent will be done!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public isAggregationRequired()Z
    .locals 1

    .prologue
    .line 10696
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 25
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10790
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 10792
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    .line 10794
    .local v16, isUpdateDate:Z
    const-string v3, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    .line 10797
    .local v17, isUpdateType:Z
    const-string v3, "Time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "google event updated: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10798
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    .line 10801
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 10803
    .local v8, calendar:Ljava/util/Calendar;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10804
    const/16 v18, 0x0

    .line 10805
    .local v18, isYearGiven:Z
    const-wide/16 v19, 0x0

    .line 10806
    .local v19, millis:J
    if-eqz v16, :cond_1

    .line 10807
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 10809
    .local v12, date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    invoke-static {v3, v12, v8}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2400(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v18

    .line 10810
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    .line 10814
    .end local v12           #date:Ljava/lang/String;
    :cond_1
    const/4 v15, -0x1

    .line 10815
    .local v15, htcType:I
    if-eqz v17, :cond_2

    .line 10816
    const-string v3, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 10818
    .local v14, googleType:Ljava/lang/Integer;
    if-eqz v14, :cond_2

    .line 10819
    const/4 v3, 0x1

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 10820
    const/4 v15, 0x2

    .line 10830
    .end local v14           #googleType:Ljava/lang/Integer;
    :cond_2
    :goto_0
    const-string v3, "Time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10833
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 10836
    .local v10, dataId:J
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 10840
    .local v21, rawContactId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-static/range {v21 .. v22}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "content://com.android.contacts/profile/data"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v23, "_id"

    aput-object v23, v4, v7

    const/4 v7, 0x1

    const-string v23, "raw_contact_id"

    aput-object v23, v4, v7

    const/4 v7, 0x2

    const-string v23, "mimetype"

    aput-object v23, v4, v7

    const/4 v7, 0x3

    const-string v23, "data4"

    aput-object v23, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mimetype="

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "vnd.android.cursor.item/htc_event_v2"

    invoke-static/range {v23 .. v23}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " AND "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "data3"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, "="

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/HtcContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 10855
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 10857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v4, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 10859
    .local v2, handler:Lcom/android/providers/contacts/DataRowHandler;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 10860
    .local v9, count:I
    const/4 v3, 0x1

    if-ne v9, v3, :cond_b

    .line 10862
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10863
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 10864
    .local v5, htcEventValues:Landroid/content/ContentValues;
    if-eqz v17, :cond_3

    .line 10865
    const-string v3, "data2"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10868
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10873
    :cond_3
    if-eqz v16, :cond_4

    .line 10874
    const-string v3, "data4"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10877
    const-string v3, "data5"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10880
    if-eqz v18, :cond_a

    .line 10881
    const-string v3, "data12"

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10888
    :goto_2
    const-string v3, "data13"

    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10891
    const-string v3, "data14"

    const/4 v4, 0x5

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10895
    :cond_4
    const-string v3, "data8"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10898
    const-string v3, "data11"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p5

    .line 10901
    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10965
    .end local v5           #htcEventValues:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 10974
    .end local v2           #handler:Lcom/android/providers/contacts/DataRowHandler;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #calendar:Ljava/util/Calendar;
    .end local v9           #count:I
    .end local v10           #dataId:J
    .end local v15           #htcType:I
    .end local v18           #isYearGiven:Z
    .end local v19           #millis:J
    .end local v21           #rawContactId:J
    :cond_6
    :goto_4
    const/4 v3, 0x1

    return v3

    .line 10821
    .restart local v8       #calendar:Ljava/util/Calendar;
    .restart local v14       #googleType:Ljava/lang/Integer;
    .restart local v15       #htcType:I
    .restart local v18       #isYearGiven:Z
    .restart local v19       #millis:J
    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 10823
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 10824
    :cond_8
    const/4 v3, 0x2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 10826
    const/4 v15, 0x3

    goto/16 :goto_0

    .line 10840
    .end local v14           #googleType:Ljava/lang/Integer;
    .restart local v10       #dataId:J
    .restart local v21       #rawContactId:J
    :cond_9
    const-string v3, "content://com.android.contacts/data"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 10885
    .restart local v2       #handler:Lcom/android/providers/contacts/DataRowHandler;
    .restart local v5       #htcEventValues:Landroid/content/ContentValues;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #count:I
    :cond_a
    :try_start_3
    const-string v3, "data12"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 10965
    .end local v5           #htcEventValues:Landroid/content/ContentValues;
    .end local v9           #count:I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 10968
    .end local v2           #handler:Lcom/android/providers/contacts/DataRowHandler;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #calendar:Ljava/util/Calendar;
    .end local v10           #dataId:J
    .end local v15           #htcType:I
    .end local v18           #isYearGiven:Z
    .end local v19           #millis:J
    .end local v21           #rawContactId:J
    :catch_0
    move-exception v13

    .line 10969
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "HtcContactsProvider2"

    const-string v4, "Exception at update HtcEvent, no update to the HtcEvent will be done!!"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 10904
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v2       #handler:Lcom/android/providers/contacts/DataRowHandler;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #calendar:Ljava/util/Calendar;
    .restart local v9       #count:I
    .restart local v10       #dataId:J
    .restart local v15       #htcType:I
    .restart local v18       #isYearGiven:Z
    .restart local v19       #millis:J
    .restart local v21       #rawContactId:J
    :cond_b
    if-nez v9, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_5

    .line 10908
    :try_start_5
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 10909
    .restart local v5       #htcEventValues:Landroid/content/ContentValues;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 10910
    const-string v3, "raw_contact_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10913
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10916
    const-string v3, "data1"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10919
    const-string v3, "data2"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10922
    const-string v3, "data3"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10925
    const-string v3, "data4"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10928
    const-string v3, "data5"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10931
    const-string v3, "data6"

    const-string v4, ""

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10935
    const-string v3, "data8"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10938
    const-string v3, "data9"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10941
    const-string v3, "data10"

    const-string v4, "UTC"

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10944
    const-string v3, "data11"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10947
    if-eqz v18, :cond_c

    .line 10948
    const-string v3, "data12"

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10955
    :goto_5
    const-string v3, "data13"

    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10958
    const-string v3, "data14"

    const/4 v4, 0x5

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10962
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcContactsProvider2$GoogleEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    goto/16 :goto_3

    .line 10952
    :cond_c
    const-string v3, "data12"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method
