.class Lcom/htc/sunny2/widget/gridview/GridView$2;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->init(Lcom/htc/sunny2/widget/gridview/GridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mPaddingBottom:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$800(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mListItemCount:I

    return v0
.end method

.method public getItemLength(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemSpacing()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopBouncePosition()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mPaddingTop:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$700(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    return v0
.end method

.method public getViewPortLength()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$2;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mGLViewHeight:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$600(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v0

    return v0
.end method
