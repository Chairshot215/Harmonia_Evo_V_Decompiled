.class Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;
.super Landroid/os/AsyncTask;
.source "SelectVisibleContactAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryGroupsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 614
    return-void
.end method

.method private isDatasetEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 733
    if-nez p1, :cond_0

    const-string p1, ""

    .line 734
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 736
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private persistAccounts(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p2, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const-string v6, "TipOfAccounts"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 765
    .local v5, pref:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 767
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "AccountCount"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 768
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 769
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

    .line 770
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

    .line 771
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

    .line 768
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 774
    :cond_0
    const/4 v3, 0x1

    .line 775
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 776
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->isExcludedAccountType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataSet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 780
    :cond_2
    iget-object v6, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    goto :goto_2

    .line 783
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_3
    const-string v6, "AccountCount"

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 786
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 610
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .locals 2
    .parameter "params"

    .prologue
    .line 621
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->handleNewAccounts()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v0

    .line 628
    .local v0, accounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    :goto_0
    return-object v0

    .line 624
    .end local v0           #accounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->handleAllAccounts()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v0

    .restart local v0       #accounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    goto :goto_0
.end method

.method protected handleAllAccounts()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .locals 14

    .prologue
    .line 632
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 633
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_0

    .line 634
    const/4 v5, 0x0

    .line 661
    :goto_0
    return-object v5

    .line 636
    :cond_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 639
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$200()Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 640
    .local v4, accountlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 641
    .local v7, filtered_accountlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 642
    .local v2, accountTypes:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 643
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    invoke-virtual {v2, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v1

    .line 644
    .local v1, accountType:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/AccountType;->isExtension()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 648
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->isExcludedAccountType(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 649
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 653
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #accountType:Lcom/android/htccontacts/model/AccountType;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v5, v10, [Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .line 654
    .local v5, accounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    const/4 v3, 0x0

    .line 655
    .local v3, account_count:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 656
    .restart local v0       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    new-instance v10, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v10, v9, v11, v12, v13}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v5, v3

    .line 657
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 660
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_4
    invoke-virtual {p0, v6, v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->persistAccountDisplay(Landroid/app/Activity;[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V

    goto :goto_0
.end method

.method protected handleNewAccounts()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .locals 29

    .prologue
    .line 665
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    .line 666
    .local v9, activity:Landroid/app/Activity;
    if-nez v9, :cond_1

    .line 667
    const/4 v14, 0x0

    .line 728
    :cond_0
    :goto_0
    return-object v14

    .line 670
    :cond_1
    const-string v25, "TipOfAccounts"

    const/16 v26, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 671
    .local v20, pref:Landroid/content/SharedPreferences;
    const-string v25, "AccountCount"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 672
    .local v21, prev_account_count:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 673
    .local v22, prev_accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_2

    .line 674
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "AccountName"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v15, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 675
    .local v18, name:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "AccountType"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v15, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 676
    .local v24, type:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "DataSet"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v15, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 677
    .local v12, dataSet:Ljava/lang/String;
    new-instance v6, Lcom/android/htccontacts/model/AccountWithDataSet;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1, v12}, Lcom/android/htccontacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v6, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 681
    .end local v6           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v12           #dataSet:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v24           #type:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$200()Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 685
    .local v11, current_accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 686
    .local v19, new_accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v9}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v8

    .line 688
    .local v8, accountTypes:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 690
    .restart local v6       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->isExcludedAccountType(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 692
    invoke-virtual {v8, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v7

    .line 693
    .local v7, accountType:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/AccountType;->isExtension()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-virtual {v6, v9}, Lcom/android/htccontacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 697
    :cond_4
    const/4 v10, 0x0

    .line 698
    .local v10, bFound:Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 699
    .local v5, a2:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    iget-object v0, v6, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v5, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->isDatasetEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 702
    const/4 v10, 0x1

    .line 707
    .end local v5           #a2:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_6
    if-nez v10, :cond_3

    .line 708
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 712
    .end local v6           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v7           #accountType:Lcom/android/htccontacts/model/AccountType;
    .end local v10           #bFound:Z
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->persistAccounts(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 714
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-nez v25, :cond_8

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 716
    :cond_8
    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 717
    .local v23, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v14, v0, [Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .line 718
    .local v14, display_accounts:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    const/4 v13, 0x0

    .line 720
    .local v13, display_account_count:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 722
    .restart local v6       #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    new-instance v25, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v6, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v14, v13

    .line 723
    add-int/lit8 v13, v13, 0x1

    goto :goto_3
.end method

.method protected isExcludedAccountType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 789
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 791
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 610
    check-cast p1, [Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->onPostExecute([Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 798
    if-nez p1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 802
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 808
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$000()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 810
    new-instance v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;

    const v3, 0x7f03006d

    invoke-direct {v1, v0, v3, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;-><init>(Landroid/content/Context;I[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V

    .line 813
    .local v1, adapter:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;
    invoke-static {p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$502([Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    .line 815
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$600()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 817
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 818
    .local v2, view:Landroid/view/View;
    sget-boolean v3, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-nez v3, :cond_2

    .line 819
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$600()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 820
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$600()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 822
    invoke-static {v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$602(Landroid/widget/ListView;)Landroid/widget/ListView;

    goto :goto_0
.end method

.method protected persistAccountDisplay(Landroid/app/Activity;[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)V
    .locals 10
    .parameter "activity"
    .parameter "accounts"

    .prologue
    .line 742
    const-string v8, "TipOfAccounts"

    const/4 v9, 0x4

    invoke-virtual {p1, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 743
    .local v7, pref:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 745
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "AccountCount"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 746
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 747
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 748
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataSet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 752
    :cond_0
    const-string v8, "AccountCount"

    array-length v9, p2

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 753
    const/4 v4, 0x1

    .line 754
    move-object v1, p2

    .local v1, arr$:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 755
    .local v0, account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mName:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AccountType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mType:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataSet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 758
    add-int/lit8 v4, v4, 0x1

    .line 754
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 760
    .end local v0           #account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 761
    return-void
.end method
