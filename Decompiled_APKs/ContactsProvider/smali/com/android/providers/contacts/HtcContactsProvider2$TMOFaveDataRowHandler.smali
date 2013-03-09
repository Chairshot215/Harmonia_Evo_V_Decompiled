.class public Lcom/android/providers/contacts/HtcContactsProvider2$TMOFaveDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TMOFaveDataRowHandler"
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
    .line 14566
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$TMOFaveDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 14567
    const-string v0, "vnd.android.cursor.item/vnd.tmobile.faves"

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 14569
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 14610
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 14612
    .local v0, numDeleted:I
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 14614
    .local v1, rawContactId:J
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 14616
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 6
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 14575
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    .line 14577
    .local v0, dataId:J
    const-string v2, "data4"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 14579
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$TMOFaveDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->UpdateSendToVoicemailByVip(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v2, p1, p3, p4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4600(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 14582
    :cond_0
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 14584
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
    .line 14592
    const/4 v3, 0x1

    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 14593
    .local v0, rawContactId:J
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v2

    .line 14595
    .local v2, updateResult:Z
    const-string v3, "data4"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data4"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 14597
    iget-object v3, p0, Lcom/android/providers/contacts/HtcContactsProvider2$TMOFaveDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->UpdateSendToVoicemailByVip(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v3, p1, v0, v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4600(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 14600
    :cond_0
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 14602
    return v2
.end method
