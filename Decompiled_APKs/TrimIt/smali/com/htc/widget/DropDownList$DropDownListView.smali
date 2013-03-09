.class Lcom/htc/widget/DropDownList$DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1367
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1368
    return-void
.end method

.method static synthetic access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1330
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private mockMeasureScrapChild(Landroid/view/View;II)V
    .locals 9
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    .line 1466
    .local v5, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v5, :cond_0

    .line 1467
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    .end local v5           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1469
    .restart local v5       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingLeft()I

    move-result v2

    .line 1473
    .local v2, listPaddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingRight()I

    move-result v3

    .line 1474
    .local v3, listPaddingRight:I
    add-int v6, v2, v3

    iget v7, v5, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1476
    .local v1, childWidthSpec:I
    iget v4, v5, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1478
    .local v4, lpHeight:I
    if-lez v4, :cond_1

    .line 1479
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1483
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1484
    return-void

    .line 1481
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1393
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookForSelectablePos(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 1487
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1488
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1514
    :cond_0
    :goto_0
    return v2

    .line 1492
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1493
    .local v1, count:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1494
    if-eqz p2, :cond_2

    .line 1495
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1496
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1497
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1500
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1501
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1502
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1506
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1509
    goto :goto_0

    .line 1511
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1514
    goto :goto_0
.end method

.method final mockMeasureHeightOfChildren(IIIII)I
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1408
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1409
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingTop()I

    move-result v6

    .line 1410
    .local v6, listPaddingTop:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getPaddingBottom()I

    move-result v5

    .line 1411
    .local v5, listPaddingBottom:I
    if-nez v0, :cond_1

    .line 1412
    add-int v7, v6, v5

    .line 1461
    :cond_0
    :goto_0
    return v7

    .line 1416
    :cond_1
    add-int v8, v6, v5

    .line 1417
    .local v8, returnedHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1418
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1421
    .local v3, dividerHeight:I
    :goto_1
    const/4 v7, 0x0

    .line 1426
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v9, -0x1

    if-ne p3, v9, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 p3, v9, -0x1

    .line 1431
    :cond_2
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_8

    .line 1432
    const/4 v9, 0x0

    invoke-interface {v0, v4, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1434
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v4, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 1436
    if-lez v4, :cond_3

    .line 1438
    add-int/2addr v8, v3

    .line 1441
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1443
    if-lt v8, p4, :cond_6

    .line 1446
    if-ltz p5, :cond_4

    if-le v4, p5, :cond_4

    if-lez v7, :cond_4

    if-ne v8, p4, :cond_0

    :cond_4
    move v7, p4

    goto :goto_0

    .line 1418
    .end local v1           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v7           #prevHeightWithoutPartialChild:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1454
    .restart local v1       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v7       #prevHeightWithoutPartialChild:I
    :cond_6
    if-ltz p5, :cond_7

    if-lt v4, p5, :cond_7

    .line 1455
    move v7, v8

    .line 1431
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_8
    move v7, v8

    .line 1461
    goto :goto_0
.end method
