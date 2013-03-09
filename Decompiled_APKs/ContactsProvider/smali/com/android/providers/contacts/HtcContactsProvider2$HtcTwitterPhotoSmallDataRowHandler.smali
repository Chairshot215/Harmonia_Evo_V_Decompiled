.class public Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterPhotoSmallDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcTwitterPhotoSmallDataRowHandler"
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
    .line 14837
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterPhotoSmallDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 14838
    const-string v0, "com.htc.htctwitter/smallavatar"

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 14840
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 2
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 14887
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterPhotoSmallDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->deleteRawContactPhotoData(Landroid/content/Context;Landroid/database/Cursor;)V
    invoke-static {v1, p3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4800(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 14889
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 14890
    .local v0, numDeleted:I
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 10
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14852
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterPhotoSmallDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "com.htc.htctwitter/smallavatar"

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p5

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->socialNetworkSmallAvatorUrlInsert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;Ljava/lang/String;)J
    invoke-static/range {v0 .. v5}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4700(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v8

    .line 14855
    .local v8, lHandledId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 14864
    .end local v8           #lHandledId:J
    :goto_0
    return-wide v8

    .line 14858
    .restart local v8       #lHandledId:J
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v6

    .local v6, dataId:J
    move-wide v8, v6

    .line 14864
    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14873
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    .line 14875
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterPhotoSmallDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-wide/16 v2, 0x3

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->socialNetworkSmallAvatorUrlUpdate(Landroid/content/ContentValues;Landroid/database/Cursor;J)Z
    invoke-static {v1, p3, p4, v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4900(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/ContentValues;Landroid/database/Cursor;J)Z

    .line 14877
    return v0
.end method
