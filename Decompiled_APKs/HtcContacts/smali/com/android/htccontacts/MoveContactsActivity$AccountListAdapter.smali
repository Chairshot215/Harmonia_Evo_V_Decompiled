.class Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoveContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListAdapter"
.end annotation


# instance fields
.field mIsPickFromAccount:Z

.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "isPickFromAccount"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    .line 341
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->mIsPickFromAccount:Z

    .line 342
    iput-boolean p3, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->mIsPickFromAccount:Z

    .line 343
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->mIsPickFromAccount:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 359
    iget-boolean v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->mIsPickFromAccount:Z

    if-eqz v8, :cond_1

    .line 360
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v2, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    .line 361
    .local v2, accountType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v4, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    .line 362
    .local v4, dataSet:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget v0, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->mCount:I

    .line 363
    .local v0, accountCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v2, v4}, Lcom/android/htccontacts/MoveContactsActivity;->access$1000(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, accountTypeString:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v1, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    .line 375
    .local v1, accountName:Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_2

    .line 376
    new-instance v5, Lcom/htc/widget/HtcListItem2LineText;

    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct {v5, v8}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 377
    .local v5, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    new-instance v7, Lcom/htc/widget/HtcListItem;

    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 378
    .local v7, newView:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 381
    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 382
    move-object p2, v7

    .line 389
    .end local v7           #newView:Lcom/htc/widget/HtcListItem;
    :goto_1
    const-string v8, "com.htc.android.pcsc"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    .line 391
    .local v6, listitem:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 394
    .end local v6           #listitem:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    iget-boolean v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->mIsPickFromAccount:Z

    if-eqz v8, :cond_3

    if-gtz v0, :cond_3

    .line 395
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 400
    :goto_2
    return-object p2

    .line 367
    .end local v0           #accountCount:I
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #accountTypeString:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v2, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    .line 368
    .restart local v2       #accountType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v4, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    .line 369
    .restart local v4       #dataSet:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget v0, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->mCount:I

    .line 370
    .restart local v0       #accountCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #calls: Lcom/android/htccontacts/MoveContactsActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v2, v4}, Lcom/android/htccontacts/MoveContactsActivity;->access$1000(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .restart local v3       #accountTypeString:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mToAccountList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/htccontacts/MoveContactsActivity;->access$400(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget-object v1, v8, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    .restart local v1       #accountName:Ljava/lang/String;
    goto/16 :goto_0

    .line 384
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 385
    .restart local v5       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 397
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 405
    iget-boolean v1, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->mIsPickFromAccount:Z

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mFromAccountList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/MoveContactsActivity;->access$500(Lcom/android/htccontacts/MoveContactsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;

    iget v0, v1, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->mCount:I

    .line 407
    .local v0, accountCount:I
    if-gtz v0, :cond_0

    .line 408
    const/4 v1, 0x0

    .line 412
    .end local v0           #accountCount:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
