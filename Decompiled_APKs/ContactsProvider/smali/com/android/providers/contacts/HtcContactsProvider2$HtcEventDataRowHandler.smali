.class public Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcEventDataRowHandler"
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
    .line 16016
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 16017
    const-string v0, "vnd.android.cursor.item/htc_event_v2"

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 16019
    return-void
.end method

.method private deleteInstance(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 4
    .parameter "db"
    .parameter "dataId"

    .prologue
    .line 16026
    const-string v1, "event_instance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_ref_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 16029
    .local v0, result:I
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->updateNotification()V

    .line 16030
    return v0
.end method

.method private parseDateValues(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "values"

    .prologue
    .line 16034
    const-string v3, "data4"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 16036
    .local v1, time:Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 16037
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 16041
    .local v0, eventTime:Ljava/util/Calendar;
    new-instance v2, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 16043
    .local v2, timeAdjustForBDay:Landroid/text/format/Time;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 16046
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16047
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16050
    const-string v3, "data12"

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16051
    const-string v3, "data13"

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16052
    const-string v3, "data14"

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16062
    .end local v0           #eventTime:Ljava/util/Calendar;
    .end local v2           #timeAdjustForBDay:Landroid/text/format/Time;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 16096
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v2

    .line 16097
    .local v2, numDeleted:I
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 16098
    .local v0, dataId:J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->deleteInstance(Landroid/database/sqlite/SQLiteDatabase;J)I

    .line 16099
    return v2
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 3
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 16068
    const-string v2, "data13"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "data14"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16070
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->parseDateValues(Landroid/content/ContentValues;)V

    .line 16072
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    .line 16074
    .local v0, dataId:J
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->insertInstance(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    invoke-static {v2, p1, v0, v1, p5}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$5100(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 16075
    return-wide v0
.end method

.method public isAggregationRequired()Z
    .locals 1

    .prologue
    .line 16022
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 3
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 16082
    const-string v2, "data13"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "data14"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16084
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->parseDateValues(Landroid/content/ContentValues;)V

    .line 16086
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 16087
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 16088
    .local v0, dataId:J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->deleteInstance(Landroid/database/sqlite/SQLiteDatabase;J)I

    .line 16089
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcEventDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->insertInstance(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    invoke-static {v2, p1, v0, v1, p3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$5100(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 16090
    const/4 v2, 0x1

    return v2
.end method
