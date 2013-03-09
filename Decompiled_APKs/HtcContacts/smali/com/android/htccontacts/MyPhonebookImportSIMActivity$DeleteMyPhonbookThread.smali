.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;
.super Ljava/lang/Thread;
.source "MyPhonebookImportSIMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMyPhonbookThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    .line 308
    const-string v0, "DeleteMyPhonbookThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 309
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 313
    const-string v4, "MyPhonebookImportSIMActivity"

    const-string v5, "start delete MyPhonebook contacts..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 319
    .local v3, uri:Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 320
    .local v1, id:J
    const/4 v0, 0x0

    .line 321
    .local v0, deleteUri:Landroid/net/Uri;
    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 322
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 323
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 324
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 327
    .end local v0           #deleteUri:Landroid/net/Uri;
    .end local v1           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    iget-object v4, v4, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    return-void
.end method
