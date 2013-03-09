.class Lcom/htc/android/mail/ecEditAccount$9;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ecEditAccount;->doUpdateAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecEditAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 769
    invoke-static {}, Lcom/htc/android/mail/ecEditAccount;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ecEditAccount"

    const-string v6, "doUpdateAccount bg>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    .line 771
    .local v1, cp:Landroid/content/IContentProvider;
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z
    invoke-static {v5}, Lcom/htc/android/mail/ecEditAccount;->access$300(Lcom/htc/android/mail/ecEditAccount;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 774
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    const/4 v6, 0x0

    #setter for: Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z
    invoke-static {v5, v6}, Lcom/htc/android/mail/ecEditAccount;->access$302(Lcom/htc/android/mail/ecEditAccount;Z)Z

    .line 775
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-static {v5}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 776
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-virtual {v5}, Lcom/htc/android/mail/ecEditAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$900(Lcom/htc/android/mail/ecEditAccount;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/htc/android/mail/AccountPool;->removeAccount(Landroid/content/Context;J)V

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$900(Lcom/htc/android/mail/ecEditAccount;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 783
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #calls: Lcom/htc/android/mail/ecEditAccount;->doSaveAccount()Z
    invoke-static {v5}, Lcom/htc/android/mail/ecEditAccount;->access$1000(Lcom/htc/android/mail/ecEditAccount;)Z

    move-result v3

    .line 784
    .local v3, ret:Z
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v5}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/MailAccountUI;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V

    .line 824
    .end local v3           #ret:Z
    :cond_1
    :goto_1
    return-void

    .line 789
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v5}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/MailAccountUI;->mDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 790
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 791
    .local v4, tmp:Lcom/htc/android/mail/Account;
    invoke-virtual {v4, v7}, Lcom/htc/android/mail/Account;->setDefaultaccount(I)V

    .line 792
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->resetDefaultAccount()V

    .line 796
    .end local v4           #tmp:Lcom/htc/android/mail/Account;
    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$900(Lcom/htc/android/mail/ecEditAccount;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/MailAccountUI;->gatherValues(Z)Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v1, v5, v6, v7, v8}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v2, cv:Landroid/content/ContentValues;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 803
    const-string v5, "AccountVerify"

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-virtual {v5}, Lcom/htc/android/mail/ecEditAccount;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/android/mail/MailProvider;->AccountVerify:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mAccountId:J
    invoke-static {v7}, Lcom/htc/android/mail/ecEditAccount;->access$900(Lcom/htc/android/mail/ecEditAccount;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-static {v5}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 808
    sget-object v5, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 809
    sget-object v5, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mAccountId:J
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$900(Lcom/htc/android/mail/ecEditAccount;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 810
    sget-object v5, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-virtual {v6}, Lcom/htc/android/mail/ecEditAccount;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 812
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/ecEditAccount;->setResult(I)V

    .line 813
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->mAccountId:J
    invoke-static {v5}, Lcom/htc/android/mail/ecEditAccount;->access$900(Lcom/htc/android/mail/ecEditAccount;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->refresh()V

    .line 814
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v5}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #getter for: Lcom/htc/android/mail/ecEditAccount;->UI:Lcom/htc/android/mail/MailAccountUI;
    invoke-static {v6}, Lcom/htc/android/mail/ecEditAccount;->access$500(Lcom/htc/android/mail/ecEditAccount;)Lcom/htc/android/mail/MailAccountUI;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/MailAccountUI;->updateEmailAddrToPublicAccount(Ljava/lang/String;)V

    .line 815
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    new-instance v6, Lcom/htc/android/mail/ecEditAccount$9$1;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/ecEditAccount$9$1;-><init>(Lcom/htc/android/mail/ecEditAccount$9;)V

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/ecEditAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 823
    iget-object v5, p0, Lcom/htc/android/mail/ecEditAccount$9;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-virtual {v5}, Lcom/htc/android/mail/ecEditAccount;->finish()V

    goto/16 :goto_1

    .line 798
    .end local v2           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 797
    :catch_1
    move-exception v5

    goto/16 :goto_2

    .line 780
    :catch_2
    move-exception v5

    goto/16 :goto_0

    .line 779
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method
