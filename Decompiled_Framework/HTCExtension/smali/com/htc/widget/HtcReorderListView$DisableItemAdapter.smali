.class Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;
.super Ljava/lang/Object;
.source "HtcReorderListView.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisableItemAdapter"
.end annotation


# instance fields
.field private mWrappedAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcReorderListView;Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setTopSpace(I)V

    move-object v2, p2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->setBottomSpace(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mAllItemFocusable:Z
    invoke-static {v2}, Lcom/htc/widget/HtcReorderListView;->access$800(Lcom/htc/widget/HtcReorderListView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->this$0:Lcom/htc/widget/HtcReorderListView;

    #getter for: Lcom/htc/widget/HtcReorderListView;->mItemHeightNormal:I
    invoke-static {v2}, Lcom/htc/widget/HtcReorderListView;->access$000(Lcom/htc/widget/HtcReorderListView;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcReorderListView$DisableItemAdapter;->mWrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
