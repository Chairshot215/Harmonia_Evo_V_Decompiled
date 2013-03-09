.class Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryGroupsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;",
        "Lcom/android/htccontacts/util/ContactsSetupWizard;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 561
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/util/ContactsSetupWizard;[Ljava/lang/Void;)Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    .locals 13
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 567
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$700(Lcom/android/htccontacts/util/ContactsSetupWizard;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-object v2

    .line 570
    :cond_1
    iget-object v8, p1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 571
    .local v8, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v8, :cond_0

    .line 576
    iget-object v9, p1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    const/16 v10, 0x15b3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    move-object v3, p1

    .line 579
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 582
    .local v7, resolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    invoke-direct {v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;-><init>()V

    .line 584
    .local v2, accounts:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 586
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 587
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 588
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v8, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v1

    .line 589
    .local v1, accountType:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/AccountType;->isExtension()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 594
    :cond_3
    const-string v9, "com.htc.socialnetwork.flickr"

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 595
    new-instance v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    invoke-direct {v6}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;-><init>()V

    .line 596
    .local v6, mAccountCount:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    .line 597
    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    .line 598
    iget-object v9, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mDataSet:Ljava/lang/String;

    .line 599
    const-string v9, ""

    iput-object v9, v6, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mCounts:Ljava/lang/String;

    .line 601
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance v9, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v9, v7, v10, v11, v12}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v6           #mAccountCount:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    :cond_4
    const-string v9, "com.htc.android.myphonebook"

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 606
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$802(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_1

    .line 610
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;->persistAccounts(Landroid/content/Context;Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;->doInBackground(Lcom/android/htccontacts/util/ContactsSetupWizard;[Ljava/lang/Void;)Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)V
    .locals 8
    .parameter "target"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 640
    if-nez p2, :cond_0

    .line 653
    :goto_0
    return-void

    .line 643
    :cond_0
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$600(Lcom/android/htccontacts/util/ContactsSetupWizard;)Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->setAccounts(Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)V

    .line 644
    const-string v0, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 645
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account_type"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "account_name"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "data_set"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "counts"

    aput-object v1, v4, v0

    .line 651
    .local v4, projection:[Ljava/lang/String;
    iget-object v0, p1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mQueryHandler:Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;

    const/16 v1, 0x6a4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;->onPostExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)V

    return-void
.end method

.method protected persistAccounts(Landroid/content/Context;Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;)V
    .locals 8
    .parameter "context"
    .parameter "accountSet"

    .prologue
    .line 616
    const-string v6, "TipOfAccounts"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 617
    .local v5, pref:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 619
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "AccountCount"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 620
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataSet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 626
    :cond_0
    const-string v6, "AccountCount"

    invoke-virtual {p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->size()I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 627
    const/4 v3, 0x1

    .line 628
    invoke-virtual {p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;

    .line 629
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataSet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, ""

    :goto_2
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 631
    :cond_1
    iget-object v6, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mDataSet:Ljava/lang/String;

    goto :goto_2

    .line 634
    .end local v0           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 635
    return-void
.end method
