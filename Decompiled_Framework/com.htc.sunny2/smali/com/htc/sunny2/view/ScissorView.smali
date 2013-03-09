.class public Lcom/htc/sunny2/view/ScissorView;
.super Lcom/htc/sunny2/view/SView;
.source "ScissorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/sunny2/view/SView;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 1

    sget-object v0, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/sunny2/view/SView;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZFFFII)V
    .locals 5

    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SView;->onLayout(ZFFFII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    instance-of v2, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    check-cast v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    iget v0, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    check-cast v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;

    iget v1, v2, Lcom/htc/sunny2/view/SViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    iget v2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v1, 0x0

    invoke-static {v2, v3, v4, p5, p6}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    return-void
.end method
