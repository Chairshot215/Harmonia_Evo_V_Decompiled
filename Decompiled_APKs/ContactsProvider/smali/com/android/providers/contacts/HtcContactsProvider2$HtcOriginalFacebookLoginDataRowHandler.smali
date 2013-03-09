.class public Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;
.super Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcOriginalFacebookLoginDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 15060
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 15061
    const-string v5, "com.facebook.auth.login/login"

    const-string v6, "com.facebook.auth.login"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;)V

    .line 15063
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 15093
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 15094
    .local v0, numDeleted:I
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$5002(Z)Z

    .line 15095
    if-lez v0, :cond_0

    .line 15096
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mObjectLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2700(Lcom/android/providers/contacts/HtcContactsProvider2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 15097
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->startHandler()V
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2800(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 15098
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15099
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x26

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15103
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x25

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15105
    monitor-exit v2

    .line 15107
    :cond_0
    return v0

    .line 15105
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 6
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 15070
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    .line 15072
    .local v0, dataId:J
    const-string v3, "data1"

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15073
    const-string v3, "data1"

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15074
    .local v2, sActiveUserId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15075
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$5002(Z)Z

    .line 15078
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    if-eqz v3, :cond_0

    .line 15079
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcOriginalFacebookLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mOpenHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1600(Lcom/android/providers/contacts/HtcContactsProvider2;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "com.facebook.auth.login"

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->processNoteAfterLoginIdInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 15086
    .end local v2           #sActiveUserId:Ljava/lang/String;
    :cond_0
    return-wide v0
.end method
