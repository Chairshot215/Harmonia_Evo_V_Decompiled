.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;
.super Ljava/lang/Object;
.source "MyPhonebookImportSIMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showDeleteContactsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 278
    const-string v1, "MyPhonebookImportSIMActivity"

    const-string v2, "User confirm to delete all MyPhonebook contacts, deleting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct {v2, v3}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$802(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 280
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    const v2, 0x7f0a0192

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 281
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    const v3, 0x7f0a0193

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 283
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 284
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mMyPhonebookCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$900(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 285
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$800(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 286
    new-instance v0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;

    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$3;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    .line 287
    .local v0, thread:Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;
    invoke-virtual {v0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$DeleteMyPhonbookThread;->start()V

    .line 288
    return-void
.end method
