.class Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcImportAllSimContactsThread"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;I)V
    .locals 1
    .parameter
    .parameter "totalCount"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    .line 472
    const-string v0, "HtcImportAllSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mCanceled:Z

    .line 473
    iput p2, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mTotalCount:I

    .line 474
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mCanceled:Z

    .line 510
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 513
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mCanceled:Z

    .line 515
    iget-object v0, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v0, "SimContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 480
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v4, v4, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 482
    const/16 v0, 0xa

    .line 484
    .local v0, currentChunkSize:I
    const/4 v3, 0x0

    .local v3, startIndex:I
    :goto_0
    iget-boolean v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mCanceled:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mTotalCount:I

    if-ge v3, v4, :cond_1

    .line 486
    add-int/lit8 v4, v3, 0xa

    iget v5, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mTotalCount:I

    if-le v4, v5, :cond_0

    .line 487
    iget v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->mTotalCount:I

    sub-int v0, v4, v3

    .line 489
    :cond_0
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v4, v4, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v5}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;
    invoke-static {v6}, Lcom/android/phone/SimContacts;->access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;

    move-result-object v6

    invoke-static {v4, v5, v6, v3, v0}, Lcom/htc/util/contacts/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;II)I

    .line 494
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 484
    add-int/lit8 v3, v3, 0xa

    goto :goto_0

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 498
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->getProgress()I

    move-result v2

    .line 499
    .local v2, progress:I
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 500
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 503
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #progress:I
    :cond_2
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 505
    iget-object v4, p0, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v4}, Lcom/android/phone/SimContacts;->finish()V

    .line 506
    return-void
.end method
