.class Lcom/android/htccontacts/ArrageGroupActivity$2;
.super Ljava/lang/Object;
.source "ArrageGroupActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ArrageGroupActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/htccontacts/ArrageGroupActivity$2;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 439
    iget-object v4, p0, Lcom/android/htccontacts/ArrageGroupActivity$2;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    #getter for: Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;
    invoke-static {v4}, Lcom/android/htccontacts/ArrageGroupActivity;->access$600(Lcom/android/htccontacts/ArrageGroupActivity;)Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->getOrderGroupList()Ljava/util/ArrayList;

    move-result-object v2

    .line 440
    .local v2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;>;"
    const/4 v1, 0x0

    .line 441
    .local v1, item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 442
    .local v3, size:I
    if-ltz p2, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-gt p2, v4, :cond_1

    if-eq p1, p2, :cond_1

    .line 443
    if-le p1, p2, :cond_0

    .line 444
    move v0, p1

    .local v0, i:I
    :goto_0
    if-le v0, p2, :cond_1

    .line 445
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    check-cast v1, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    .line 446
    .restart local v1       #item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 444
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 449
    .end local v0           #i:I
    :cond_0
    if-ge p1, p2, :cond_1

    .line 450
    move v0, p1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 451
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    check-cast v1, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    .line 452
    .restart local v1       #item:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    .end local v0           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ArrageGroupActivity$2;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    #getter for: Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;
    invoke-static {v4}, Lcom/android/htccontacts/ArrageGroupActivity;->access$600(Lcom/android/htccontacts/ArrageGroupActivity;)Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->notifyDataSetChanged()V

    .line 458
    return-void
.end method
