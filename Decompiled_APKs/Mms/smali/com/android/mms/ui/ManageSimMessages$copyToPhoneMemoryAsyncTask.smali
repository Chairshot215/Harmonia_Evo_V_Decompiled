.class Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "copyToPhoneMemoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mShowMessage:Z

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter
    .parameter "cursor"
    .parameter "showMessage"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 527
    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    .line 528
    iput-boolean p3, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mShowMessage:Z

    .line 529
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 10
    .parameter "v"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    const-string v5, "address"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    const-string v5, "body"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, body:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    const-string v5, "date"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 536
    .local v4, date:Ljava/lang/Long;
    const/4 v7, 0x0

    .line 538
    .local v7, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mCursor:Landroid/database/Cursor;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v7

    .line 547
    :goto_0
    return-object v7

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 543
    :catch_0
    move-exception v6

    .line 544
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v6}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 552
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->mShowMessage:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSimMessages;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v2, 0x7f090244

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v3, 0x7f09023b

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 522
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
