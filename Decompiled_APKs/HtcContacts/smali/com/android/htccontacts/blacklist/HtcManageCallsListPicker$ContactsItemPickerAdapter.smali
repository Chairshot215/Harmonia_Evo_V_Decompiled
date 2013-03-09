.class public Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;
.super Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.source "HtcManageCallsListPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactsItemPickerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "cursor"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    .line 553
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 554
    return-void
.end method


# virtual methods
.method protected bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    const/4 v5, 0x0

    .line 633
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    if-gez v3, :cond_0

    .line 656
    :goto_0
    return-void

    .line 637
    :cond_0
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    iget-object v4, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v3, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 638
    iget-object v3, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget v2, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 639
    .local v2, size:I
    if-eqz v2, :cond_3

    .line 640
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1700(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 641
    new-instance v1, Ljava/lang/String;

    iget-object v3, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v1, v3, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 642
    .local v1, name:Ljava/lang/String;
    move-object v0, v1

    .line 643
    .local v0, markStr:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1700(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;
    invoke-static {v4}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1800(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;
    invoke-static {v5}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1900(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 646
    if-nez v0, :cond_1

    .line 647
    move-object v0, v1

    .line 649
    :cond_1
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 651
    .end local v0           #markStr:Ljava/lang/CharSequence;
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v4, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText([CII)V

    goto :goto_0

    .line 654
    :cond_3
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v4, 0x7f0a0022

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto :goto_0
.end method

.method protected bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 610
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindPhoto(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method protected bindSource(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    .line 601
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindSource(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    .line 570
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 572
    .local v5, obj:Ljava/lang/Object;
    instance-of v8, v5, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    if-nez v8, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, v5

    .line 575
    check-cast v6, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;

    .line 577
    .local v6, tag:Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;
    iget-object v1, v6, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 579
    .local v1, box:Landroid/widget/CheckBox;
    const-string v8, "_id"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v2, v8

    .line 580
    .local v2, id:J
    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 583
    const/4 v4, 0x0

    .line 584
    .local v4, isCheck:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->getAccountTypeIndex()I

    move-result v7

    .line 585
    .local v7, typeIndex:I
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, accountType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isPickBlockNumberForDelete:Z
    invoke-static {v8}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1400(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    const-string v8, "block_number"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 587
    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mCacheBooleanArrayForblock:Landroid/util/SparseBooleanArray;
    invoke-static {v8}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1500(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    long-to-int v9, v2

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    .line 588
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v8, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$ContactsItemPickerAdapter;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mCacheBooleanArray:Landroid/util/LongSparseArray;
    invoke-static {v8}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1600(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/util/LongSparseArray;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v2, v3, v9}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 591
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 558
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 627
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->updateIndex(Landroid/database/Cursor;)V

    goto :goto_0
.end method
