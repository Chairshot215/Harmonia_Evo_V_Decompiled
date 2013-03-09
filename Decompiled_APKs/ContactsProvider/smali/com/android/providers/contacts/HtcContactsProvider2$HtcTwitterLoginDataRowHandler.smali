.class public Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;
.super Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcTwitterLoginDataRowHandler"
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
    .line 15157
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 15158
    const-string v5, "com.htc.htctwitter/login"

    const-string v6, "com.htc.htctwitter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;)V

    .line 15160
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 15166
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 15167
    .local v0, numDeleted:I
    if-lez v0, :cond_0

    .line 15168
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mObjectLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2700(Lcom/android/providers/contacts/HtcContactsProvider2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 15169
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->startHandler()V
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2800(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 15170
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15171
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x33

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15173
    iget-object v1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcTwitterLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x25

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15175
    monitor-exit v2

    .line 15178
    :cond_0
    return v0

    .line 15175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
