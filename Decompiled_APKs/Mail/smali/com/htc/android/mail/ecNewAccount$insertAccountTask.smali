.class Lcom/htc/android/mail/ecNewAccount$insertAccountTask;
.super Landroid/os/AsyncTask;
.source "ecNewAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecNewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "insertAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialog:Lcom/htc/app/HtcProgressDialog;

.field protected final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ecNewAccount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/ecNewAccount;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ecNewAccount;Lcom/htc/android/mail/ecNewAccount;)V
    .locals 1
    .parameter
    .parameter "target"

    .prologue
    .line 636
    iput-object p1, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 637
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 638
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 651
    const/4 v1, 0x0

    .line 652
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ecNewAccount;

    .line 653
    .local v0, target:Lcom/htc/android/mail/ecNewAccount;
    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-object v2

    .line 654
    :cond_1
    if-eqz p1, :cond_0

    .line 655
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/Account;->applyBatchAccountToDatabases(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, v1

    .line 656
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 632
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->doInBackground([Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 660
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ecNewAccount;

    .line 661
    .local v3, target:Lcom/htc/android/mail/ecNewAccount;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/android/mail/ecNewAccount;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    if-nez p1, :cond_3

    .line 664
    invoke-static {}, Lcom/htc/android/mail/ecNewAccount;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ecNewAccount"

    const-string v5, "account uri is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 669
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 670
    .local v0, aid:J
    invoke-static {}, Lcom/htc/android/mail/ecNewAccount;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ecNewAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new account id>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #calls: Lcom/htc/android/mail/ecNewAccount;->processAccountCreatedProcedure(Landroid/net/Uri;J)V
    invoke-static {v4, p1, v0, v1}, Lcom/htc/android/mail/ecNewAccount;->access$500(Lcom/htc/android/mail/ecNewAccount;Landroid/net/Uri;J)V

    .line 674
    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v3}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_5

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v3}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v5, 0x5e

    if-eq v4, v5, :cond_5

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v3}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_5

    #getter for: Lcom/htc/android/mail/ecNewAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v3}, Lcom/htc/android/mail/ecNewAccount;->access$300(Lcom/htc/android/mail/ecNewAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/mail/MailAccountUI;->mCallingActivity:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_5

    .line 676
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 678
    const-class v4, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 679
    const-string v4, "refresh"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-virtual {v4, v2}, Lcom/htc/android/mail/ecNewAccount;->startActivity(Landroid/content/Intent;)V

    .line 681
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->this$0:Lcom/htc/android/mail/ecNewAccount;

    invoke-virtual {v4}, Lcom/htc/android/mail/ecNewAccount;->finish()V

    .line 685
    .end local v2           #i:Landroid/content/Intent;
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 683
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->this$0:Lcom/htc/android/mail/ecNewAccount;

    #calls: Lcom/htc/android/mail/ecNewAccount;->setResultAndClose(J)V
    invoke-static {v4, v0, v1}, Lcom/htc/android/mail/ecNewAccount;->access$600(Lcom/htc/android/mail/ecNewAccount;J)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 632
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 641
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ecNewAccount;

    .line 642
    .local v0, target:Lcom/htc/android/mail/ecNewAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/mail/ecNewAccount;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 644
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const v2, 0x7f0b028d

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/ecNewAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 646
    iget-object v1, p0, Lcom/htc/android/mail/ecNewAccount$insertAccountTask;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_0
.end method
