.class Lcom/android/htccontacts/group/GroupEditActivity$11;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupEditActivity$11;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2096
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$11;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2097
    .local v3, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;>;"
    const/4 v2, 0x0

    .line 2099
    .local v2, item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$11;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mListView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcReorderListView;->getHeaderViewsCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 2100
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$11;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mListView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcReorderListView;->getHeaderViewsCount()I

    move-result v0

    .line 2101
    .local v0, headerViewCount:I
    sub-int/2addr p1, v0

    .line 2102
    sub-int/2addr p2, v0

    .line 2105
    .end local v0           #headerViewCount:I
    :cond_0
    if-gez p2, :cond_1

    .line 2106
    const/4 p2, 0x0

    .line 2108
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2109
    .local v4, size:I
    if-ltz p2, :cond_3

    add-int/lit8 v5, v4, -0x1

    if-gt p2, v5, :cond_3

    if-eq p1, p2, :cond_3

    .line 2110
    if-le p1, p2, :cond_2

    .line 2111
    move v1, p1

    .local v1, i:I
    :goto_0
    if-le v1, p2, :cond_3

    .line 2112
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    check-cast v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 2113
    .restart local v2       #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2114
    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2111
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2116
    .end local v1           #i:I
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2117
    move v1, p1

    .restart local v1       #i:I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 2118
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    check-cast v2, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 2119
    .restart local v2       #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2120
    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2125
    .end local v1           #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity$11;->this$0:Lcom/android/htccontacts/group/GroupEditActivity;

    iget-object v5, v5, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v5}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->notifyDataSetChanged()V

    .line 2126
    return-void
.end method
