.class public Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;
.super Lcom/htc/widget/InsertNewListAdapter;
.source "SeparatorControlInsertNewListAdapter.java"


# instance fields
.field protected mEnableAddItemSeparable:Z


# direct methods
.method public constructor <init>(Lcom/htc/widget/InsertNewListAdapterInterface;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V
    .locals 1
    .parameter "adapter"
    .parameter "showInsertNewView"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/InsertNewListAdapterInterface;ZZ)V
    .locals 1
    .parameter "adapter"
    .parameter "showInsertNewView"
    .parameter "enableAddItemSeparable"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    .line 28
    iput-boolean p3, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    .line 29
    return-void
.end method


# virtual methods
.method public enableAddItemSeparable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    .line 53
    return-void
.end method

.method protected getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;
    .locals 6

    .prologue
    .line 33
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    if-eqz v3, :cond_0

    .line 34
    invoke-super {p0}, Lcom/htc/widget/InsertNewListAdapter;->getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;

    move-result-object v3

    .line 47
    :goto_0
    return-object v3

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/InsertNewListAdapter;->getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;

    move-result-object v0

    .line 38
    .local v0, baseSep:Lcom/htc/widget/HtcListItemSeparable;
    const/4 v2, 0x0

    .line 39
    .local v2, sep:Lcom/htc/widget/SimpleHtcListItemSeparable;
    const/4 v1, 0x0

    .line 40
    .local v1, defaultId:Ljava/lang/String;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 41
    check-cast v2, Lcom/htc/widget/SimpleHtcListItemSeparable;

    .line 42
    invoke-virtual {v2}, Lcom/htc/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_1
    if-nez v1, :cond_2

    .line 45
    const-string v1, "AddItemEntry"

    .line 47
    :cond_2
    new-instance v3, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    invoke-direct {v3, v1, v4, v5}, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/InsertNewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, view:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 61
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 62
    check-cast v0, Lcom/htc/widget/HtcListItemSeparableType;

    .line 63
    .local v0, sTypeTag:Lcom/htc/widget/HtcListItemSeparableType;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemSeparableType;->setTopRound(Z)V

    .line 66
    .end local v0           #sTypeTag:Lcom/htc/widget/HtcListItemSeparableType;
    .end local v1           #tag:Ljava/lang/Object;
    :cond_0
    return-object v2
.end method
