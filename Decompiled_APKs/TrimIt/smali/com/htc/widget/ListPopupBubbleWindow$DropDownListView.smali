.class Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupBubbleWindow.DropDownListView"


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "hijackFocus"

    .prologue
    .line 1322
    const/4 v0, 0x0

    const v1, 0x20100b2

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1323
    iput-boolean p2, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    .line 1325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1326
    return-void
.end method

.method static synthetic access$502(Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private mockMeasureScrapChild(Landroid/view/View;II)V
    .locals 10
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 1452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 1453
    .local v6, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v6, :cond_0

    .line 1454
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    .end local v6           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1456
    .restart local v6       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1462
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingLeft()I

    move-result v3

    .line 1463
    .local v3, listPaddingLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingRight()I

    move-result v4

    .line 1466
    .local v4, listPaddingRight:I
    add-int v7, v3, v4

    iget v8, v6, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1468
    .local v2, childWidthSpec:I
    iget v5, v6, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1470
    .local v5, lpHeight:I
    if-lez v5, :cond_1

    .line 1471
    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1475
    .local v1, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1476
    return-void

    .line 1473
    .end local v1           #childHeightSpec:I
    :cond_1
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childHeightSpec:I
    goto :goto_0
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1379
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1359
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mockLookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 1479
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1480
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return v2

    .line 1484
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1485
    .local v1, count:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1486
    if-eqz p2, :cond_2

    .line 1487
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1488
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1489
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1492
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1493
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1494
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1498
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1501
    goto :goto_0

    .line 1503
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1506
    goto :goto_0
.end method

.method final mockMeasureHeightOfChildren(IIIII)I
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1387
    .local v1, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingTop()I

    move-result v7

    .line 1388
    .local v7, listPaddingTop:I
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getListPaddingBottom()I

    move-result v6

    .line 1390
    .local v6, listPaddingBottom:I
    if-nez v1, :cond_1

    .line 1391
    add-int v8, v7, v6

    .line 1448
    :cond_0
    :goto_0
    return v8

    .line 1395
    :cond_1
    add-int v11, v7, v6

    .line 1396
    .local v11, returnedHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1397
    .local v3, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->getDividerHeight()I

    move-result v9

    .line 1398
    .local v9, realDividerHeight:I
    if-lez v9, :cond_5

    if-eqz v3, :cond_5

    move v4, v9

    .line 1401
    .local v4, dividerHeight:I
    :goto_1
    const/4 v8, 0x0

    .line 1407
    .local v8, prevHeightWithoutPartialChild:I
    const/4 v12, -0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    add-int/lit8 p3, v12, -0x1

    .line 1408
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->recycleOnMeasure()Z

    move-result v10

    .line 1410
    .local v10, recyle:Z
    move v5, p2

    .local v5, i:I
    :goto_2
    move/from16 v0, p3

    if-gt v5, v0, :cond_8

    .line 1412
    const/4 v12, 0x0

    invoke-interface {v1, v5, v12, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1415
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v5, p1}, Lcom/htc/widget/ListPopupBubbleWindow$DropDownListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    .line 1417
    if-lez v5, :cond_3

    .line 1419
    add-int/2addr v11, v4

    .line 1428
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 1430
    move/from16 v0, p4

    if-lt v11, v0, :cond_6

    .line 1433
    if-ltz p5, :cond_4

    move/from16 v0, p5

    if-le v5, v0, :cond_4

    if-lez v8, :cond_4

    move/from16 v0, p4

    if-ne v11, v0, :cond_0

    :cond_4
    move/from16 v8, p4

    goto :goto_0

    .line 1398
    .end local v2           #child:Landroid/view/View;
    .end local v4           #dividerHeight:I
    .end local v5           #i:I
    .end local v8           #prevHeightWithoutPartialChild:I
    .end local v10           #recyle:Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1441
    .restart local v2       #child:Landroid/view/View;
    .restart local v4       #dividerHeight:I
    .restart local v5       #i:I
    .restart local v8       #prevHeightWithoutPartialChild:I
    .restart local v10       #recyle:Z
    :cond_6
    if-ltz p5, :cond_7

    move/from16 v0, p5

    if-lt v5, v0, :cond_7

    .line 1442
    move v8, v11

    .line 1410
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_8
    move v8, v11

    .line 1448
    goto :goto_0
.end method
