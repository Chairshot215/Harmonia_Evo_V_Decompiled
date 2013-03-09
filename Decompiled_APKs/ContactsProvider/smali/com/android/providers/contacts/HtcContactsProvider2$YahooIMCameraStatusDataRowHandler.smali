.class public Lcom/android/providers/contacts/HtcContactsProvider2$YahooIMCameraStatusDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "YahooIMCameraStatusDataRowHandler"
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
    .line 14483
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$YahooIMCameraStatusDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 14484
    const-string v0, "vnd.android.cursor.item/yahoo_camera"

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 14486
    return-void
.end method

.method private updatePresenceDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)V
    .locals 15
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 14491
    const-string v2, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 14493
    .local v14, videoEnable:Ljava/lang/Integer;
    if-eqz v14, :cond_2

    .line 14494
    const-string v3, "presence"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "mode"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "presence_raw_contact_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "protocol"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 14500
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 14502
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14503
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 14504
    .local v13, presence:I
    move v11, v13

    .line 14505
    .local v11, newPresence:I
    if-lez v13, :cond_3

    const/4 v2, 0x5

    if-gt v13, v2, :cond_3

    .line 14506
    const/4 v2, 0x1

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 14507
    add-int/lit8 v11, v11, 0x5

    .line 14514
    :cond_0
    :goto_0
    if-eq v11, v13, :cond_1

    .line 14515
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 14516
    .local v12, newValues:Landroid/content/ContentValues;
    const-string v2, "mode"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14518
    const-string v2, "presence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "presence_raw_contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "protocol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14533
    .end local v11           #newPresence:I
    .end local v12           #newValues:Landroid/content/ContentValues;
    .end local v13           #presence:I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 14537
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 14509
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #newPresence:I
    .restart local v13       #presence:I
    :cond_3
    const/4 v2, 0x5

    if-le v13, v2, :cond_0

    const/16 v2, 0xa

    if-gt v13, v2, :cond_0

    .line 14510
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 14511
    add-int/lit8 v11, v11, -0x5

    goto :goto_0

    .line 14533
    .end local v11           #newPresence:I
    .end local v13           #presence:I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 2
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14543
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    .line 14545
    .local v0, dataId:J
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/HtcContactsProvider2$YahooIMCameraStatusDataRowHandler;->updatePresenceDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)V

    .line 14546
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 7
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14553
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v6

    .line 14555
    .local v6, updateResult:Z
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .local v3, rawContactId:J
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 14556
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/HtcContactsProvider2$YahooIMCameraStatusDataRowHandler;->updatePresenceDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)V

    .line 14557
    return v6
.end method
