.class Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/util/ContactsSetupWizard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 473
    invoke-virtual {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 474
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 475
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 479
    iget-object v9, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .line 480
    .local v8, target:Lcom/android/htccontacts/util/ContactsSetupWizard;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$500(Lcom/android/htccontacts/util/ContactsSetupWizard;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 545
    :goto_1
    if-eqz p3, :cond_0

    .line 546
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 487
    :pswitch_0
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 489
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    .local v2, accountCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 492
    .local v7, size:I
    const/4 v6, 0x0

    .line 495
    .local v6, simCount:I
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v7, :cond_5

    .line 496
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    .line 497
    .local v1, accountCount:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    const-string v10, "com.anddroid.contacts.sim"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 498
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 499
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mCounts:Ljava/lang/String;

    .line 495
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 500
    :cond_4
    if-eqz v1, :cond_3

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mDataSet:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 507
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mCounts:Ljava/lang/String;

    .line 513
    .end local v1           #accountCount:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 516
    .end local v2           #accountCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;>;"
    .end local v3           #i:I
    .end local v6           #simCount:I
    .end local v7           #size:I
    :cond_6
    iget-object v9, v8, Lcom/android/htccontacts/util/ContactsSetupWizard;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 519
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 521
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v9, "com.htc.socialnetwork.flickr"

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 523
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v2

    .line 524
    .restart local v2       #accountCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 526
    .restart local v7       #size:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v7, :cond_7

    .line 527
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    .line 528
    .restart local v1       #accountCount:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    if-eqz v1, :cond_8

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mDataSet:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mCounts:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 536
    const-string v9, " (0)"

    iput-object v9, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mCounts:Ljava/lang/String;

    .line 526
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 542
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #accountCount:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    .end local v2           #accountCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;>;"
    .end local v3           #i:I
    .end local v7           #size:I
    :cond_9
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAdapter:Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;
    invoke-static {v8}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$600(Lcom/android/htccontacts/util/ContactsSetupWizard;)Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/htccontacts/util/ContactsSetupWizard$DisplayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 484
    :pswitch_data_0
    .packed-switch 0x6a4
        :pswitch_0
    .end packed-switch
.end method
