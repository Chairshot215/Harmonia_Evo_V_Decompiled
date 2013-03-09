.class Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    .line 689
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 690
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 701
    iget-object v7, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v8, v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v6, v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->dataSet:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->getAccountTypeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8, v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1400(Lcom/android/htccontacts/DeDuplicationActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, accountType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v1, v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountName:Ljava/lang/String;

    .line 704
    .local v1, accountName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget v0, v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->mCount:I

    .line 705
    .local v0, accountCount:I
    if-nez p2, :cond_1

    .line 706
    new-instance v3, Lcom/htc/widget/HtcListItem2LineText;

    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;)V

    .line 707
    .local v3, htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    new-instance v5, Lcom/htc/widget/HtcListItem;

    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 708
    .local v5, newView:Lcom/htc/widget/HtcListItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 711
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 712
    move-object p2, v5

    .line 719
    .end local v5           #newView:Lcom/htc/widget/HtcListItem;
    :goto_0
    const-string v7, "com.htc.android.pcsc"

    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget-object v6, v6, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 720
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 721
    .local v4, listitem:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 724
    .end local v4           #listitem:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    const/4 v6, 0x2

    if-ge v0, v6, :cond_2

    .line 725
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 729
    :goto_1
    return-object p2

    .line 714
    .end local v3           #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 715
    .restart local v3       #htcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountListAdapter;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mAccountList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1300(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;

    iget v0, v1, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->mCount:I

    .line 736
    .local v0, accountCount:I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 737
    const/4 v1, 0x0

    .line 740
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
