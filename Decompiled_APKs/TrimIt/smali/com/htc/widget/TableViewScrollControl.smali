.class public Lcom/htc/widget/TableViewScrollControl;
.super Ljava/lang/Object;
.source "TableViewScrollControl.java"

# interfaces
.implements Lcom/htc/view/ScrollControl;


# instance fields
.field private mOrientation:I

.field private mTableView:Lcom/htc/view/table/TableView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;
    .locals 13
    .parameter "visibleViews"
    .parameter "startPosition"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    array-length v11, p1

    if-gtz v11, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 61
    :goto_0
    return-object v2

    .line 23
    :cond_1
    const/4 v11, 0x0

    aget-object v5, p1, v11

    .line 24
    .local v5, closestView:Landroid/view/View;
    const v6, 0x7fffffff

    .line 27
    .local v6, closestViewCenterFromParentCenter:I
    iget v11, p0, Lcom/htc/widget/TableViewScrollControl;->mOrientation:I

    if-nez v11, :cond_3

    .line 28
    iget-object v11, p0, Lcom/htc/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v11}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v11

    div-int/lit8 v7, v11, 0x2

    .line 29
    .local v7, halfParentWidthOrHeight:I
    move-object v0, p1

    .local v0, arr$:[Landroid/view/View;
    array-length v10, v0

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v3, v0, v9

    .line 30
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 32
    .local v4, childCenterFromFromParentCenter:I
    if-ge v4, v6, :cond_2

    .line 33
    move v6, v4

    .line 34
    move-object v5, v3

    .line 29
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 39
    .end local v0           #arr$:[Landroid/view/View;
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCenterFromFromParentCenter:I
    .end local v7           #halfParentWidthOrHeight:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_3
    iget-object v11, p0, Lcom/htc/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v11}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v11

    div-int/lit8 v7, v11, 0x2

    .line 41
    .restart local v7       #halfParentWidthOrHeight:I
    const/4 v8, 0x0

    .line 42
    .local v8, i:I
    const/4 v1, 0x0

    .line 43
    .local v1, center:I
    move-object v0, p1

    .restart local v0       #arr$:[Landroid/view/View;
    array-length v10, v0

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_2
    if-ge v9, v10, :cond_5

    aget-object v3, v0, v9

    .line 44
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 47
    .restart local v4       #childCenterFromFromParentCenter:I
    if-ge v4, v6, :cond_4

    .line 48
    move v6, v4

    .line 49
    move-object v5, v3

    .line 50
    move v1, v8

    .line 52
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 43
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 57
    .end local v1           #center:I
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCenterFromFromParentCenter:I
    .end local v8           #i:I
    :cond_5
    new-instance v2, Lcom/htc/view/ScrollControl$CenterView;

    invoke-direct {v2}, Lcom/htc/view/ScrollControl$CenterView;-><init>()V

    .line 58
    .local v2, centerView:Lcom/htc/view/ScrollControl$CenterView;
    iput-object v5, v2, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    .line 59
    const/16 v11, 0x32

    iput v11, v2, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/widget/TableViewScrollControl;->mOrientation:I

    .line 66
    return-void
.end method

.method public setTableView(Lcom/htc/view/table/TableView;)V
    .locals 0
    .parameter "tableView"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    .line 70
    return-void
.end method
