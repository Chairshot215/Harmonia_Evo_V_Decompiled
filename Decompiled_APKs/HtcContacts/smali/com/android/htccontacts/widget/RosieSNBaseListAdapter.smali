.class public Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;
.super Lcom/android/htccontacts/widget/SNBaseListAdapter;
.source "RosieSNBaseListAdapter.java"


# instance fields
.field protected mSeparaterType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/widget/ISNBaseListAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "adapter"
    .parameter "serviceType"
    .parameter "separaterType"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/SNBaseListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/ISNBaseListAdapter;Ljava/lang/String;)V

    .line 40
    iput-object p4, p0, Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;->mSeparaterType:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected getMatchFriendView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->getMatchFriendView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iget-object v2, p0, Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;->mSeparaterType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :cond_0
    return-object v0
.end method

.method protected getMatchOtherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->getMatchOtherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iget-object v2, p0, Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;->mSeparaterType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iget-object v2, p0, Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;->mSeparaterType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-object v0
.end method
