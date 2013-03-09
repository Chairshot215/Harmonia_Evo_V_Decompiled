.class Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;
.super Ljava/lang/Object;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandableUnit"
.end annotation


# instance fields
.field parentIdx:I

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

.field unit:Lcom/htc/sunny2/view/SView;

.field protected x:I

.field protected y:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->x:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    return-void
.end method


# virtual methods
.method height()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public initUnit()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    :cond_0
    return-void
.end method

.method isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method measureLayout()V
    .locals 10

    const/4 v2, -0x2

    const/high16 v1, -0x8000

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$000(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mHeight:I
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$100(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    new-instance v1, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Lcom/htc/sunny2/view/SViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setLayoutParamsWithoutLayout(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    #calls: Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->measureChild(Lcom/htc/sunny2/view/SView;II)V
    invoke-static {v0, v1, v8, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->access$200(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/view/SView;II)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getMeasuredHeight()I

    move-result v5

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    iget v1, v9, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v2, v9, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v3, v9, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/view/SView;->layout(FFFII)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f7fffff

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->this$0:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mRootNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/htc/sunny2/view/SView;->setPosition(FFF)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->release()V

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->parentIdx:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->x:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->y:I

    return-void
.end method

.method width()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableUnit;->unit:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SView;->getWidth()I

    move-result v0

    goto :goto_0
.end method
