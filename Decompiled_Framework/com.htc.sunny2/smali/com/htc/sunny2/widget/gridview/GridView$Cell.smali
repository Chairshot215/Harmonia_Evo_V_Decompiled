.class public Lcom/htc/sunny2/widget/gridview/GridView$Cell;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Cell"
.end annotation


# instance fields
.field protected final defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;

.field protected viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x2

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/ViewItem;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x2

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    instance-of v0, p2, Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->initViewItem()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t gey new GridViewItem by create()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->recycle()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method height()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public initViewItem()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->dispatchResourceCreation(Z)V

    return-void
.end method

.method public link(ILcom/htc/sunny2/IMediaData;III)V
    .locals 10

    const/4 v9, 0x1

    const/high16 v2, -0x8000

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mWidth:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1600(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mHeight:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1700(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->defaultLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setLayoutParamsWithoutLayout(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #calls: Lcom/htc/sunny2/widget/gridview/GridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V
    invoke-static {v1, v0, v8, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1800(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;II)V

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v1, v4, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    div-int/lit8 v2, v5, 0x2

    sub-int v2, p4, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->layout(FFFII)V

    iput p3, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->x:I

    iput p4, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->y:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$200(Lcom/htc/sunny2/widget/gridview/GridView;)Z

    move-result v1

    if-ne v1, v9, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0, v9}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->dispatchResourceCreation(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->release()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mChildNodeCount:I

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 0

    return-void
.end method

.method public unlink()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    return-void
.end method

.method width()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->getWidth()I

    move-result v0

    goto :goto_0
.end method
