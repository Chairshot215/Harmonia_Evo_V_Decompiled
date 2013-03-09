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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;
    .locals 13

    if-eqz p1, :cond_0

    array-length v11, p1

    if-gtz v11, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v11, 0x0

    aget-object v5, p1, v11

    const v6, 0x7fffffff

    iget v11, p0, Lcom/htc/widget/TableViewScrollControl;->mOrientation:I

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/htc/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v11}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v11

    div-int/lit8 v7, v11, 0x2

    move-object v0, p1

    array-length v10, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v3, v0, v9

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v6, :cond_2

    move v6, v4

    move-object v5, v3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/htc/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v11}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v11

    div-int/lit8 v7, v11, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    array-length v10, v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_5

    aget-object v3, v0, v9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v6, :cond_4

    move v6, v4

    move-object v5, v3

    move v1, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/htc/view/ScrollControl$CenterView;

    invoke-direct {v2}, Lcom/htc/view/ScrollControl$CenterView;-><init>()V

    iput-object v5, v2, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    const/16 v11, 0x32

    iput v11, v2, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/TableViewScrollControl;->mOrientation:I

    return-void
.end method

.method public setTableView(Lcom/htc/view/table/TableView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    return-void
.end method
