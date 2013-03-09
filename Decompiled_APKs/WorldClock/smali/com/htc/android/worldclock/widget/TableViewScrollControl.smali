.class public Lcom/htc/android/worldclock/widget/TableViewScrollControl;
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
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenterView([Landroid/view/View;I)Lcom/htc/view/ScrollControl$CenterView;
    .locals 12
    .parameter "visibleViews"
    .parameter "startPosition"

    .prologue
    .line 20
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 22
    if-eqz p1, :cond_0

    array-length v10, p1

    if-gtz v10, :cond_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 27
    :cond_1
    const/4 v10, 0x0

    aget-object v4, p1, v10

    .line 28
    .local v4, closestView:Landroid/view/View;
    const v5, 0x7fffffff

    .line 31
    .local v5, closestViewCenterFromParentCenter:I
    iget v10, p0, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->mOrientation:I

    if-nez v10, :cond_3

    .line 32
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v10}, Lcom/htc/view/table/TableView;->getWidth()I

    move-result v10

    div-int/lit8 v6, v10, 0x2

    .line 33
    .local v6, halfParentWidthOrHeight:I
    move-object v0, p1

    .local v0, arr$:[Landroid/view/View;
    array-length v9, v0

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v2, v0, v8

    .line 34
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 36
    .local v3, childCenterFromFromParentCenter:I
    if-ge v3, v5, :cond_2

    .line 37
    move v5, v3

    .line 38
    move-object v4, v2

    .line 33
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 42
    .end local v0           #arr$:[Landroid/view/View;
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childCenterFromFromParentCenter:I
    .end local v6           #halfParentWidthOrHeight:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_3
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    invoke-virtual {v10}, Lcom/htc/view/table/TableView;->getHeight()I

    move-result v10

    div-int/lit8 v6, v10, 0x2

    .line 44
    .restart local v6       #halfParentWidthOrHeight:I
    const/4 v7, 0x0

    .line 45
    .local v7, i:I
    move-object v0, p1

    .restart local v0       #arr$:[Landroid/view/View;
    array-length v9, v0

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v2, v0, v8

    .line 46
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 49
    .restart local v3       #childCenterFromFromParentCenter:I
    if-ge v3, v5, :cond_4

    .line 50
    move v5, v3

    .line 51
    move-object v4, v2

    .line 53
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 45
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 58
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childCenterFromFromParentCenter:I
    .end local v7           #i:I
    :cond_5
    new-instance v1, Lcom/htc/view/ScrollControl$CenterView;

    invoke-direct {v1}, Lcom/htc/view/ScrollControl$CenterView;-><init>()V

    .line 59
    .local v1, centerView:Lcom/htc/view/ScrollControl$CenterView;
    iput-object v4, v1, Lcom/htc/view/ScrollControl$CenterView;->view:Landroid/view/View;

    .line 60
    const/16 v10, 0x32

    iput v10, v1, Lcom/htc/view/ScrollControl$CenterView;->percentage:I

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 66
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 67
    iput p1, p0, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->mOrientation:I

    .line 68
    return-void
.end method

.method public setTableView(Lcom/htc/view/table/TableView;)V
    .locals 0
    .parameter "tableView"

    .prologue
    .line 71
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 72
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->mTableView:Lcom/htc/view/table/TableView;

    .line 73
    return-void
.end method
