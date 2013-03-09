.class Lcom/android/htccontacts/group/ArrangeMemberActivity$2;
.super Ljava/lang/Object;
.source "ArrangeMemberActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$2;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 352
    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$2;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v2

    .line 353
    .local v2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;>;"
    const/4 v1, 0x0

    .line 354
    .local v1, item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 355
    .local v3, size:I
    if-ltz p2, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-gt p2, v4, :cond_1

    if-eq p1, p2, :cond_1

    .line 356
    if-le p1, p2, :cond_0

    .line 357
    move v0, p1

    .local v0, i:I
    :goto_0
    if-le v0, p2, :cond_1

    .line 358
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    check-cast v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;

    .line 359
    .restart local v1       #item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    .end local v0           #i:I
    :cond_0
    if-ge p1, p2, :cond_1

    .line 363
    move v0, p1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 364
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    check-cast v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;

    .line 365
    .restart local v1       #item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    .end local v0           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$2;->this$0:Lcom/android/htccontacts/group/ArrangeMemberActivity;

    iget-object v4, v4, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->notifyDataSetChanged()V

    .line 371
    return-void
.end method
