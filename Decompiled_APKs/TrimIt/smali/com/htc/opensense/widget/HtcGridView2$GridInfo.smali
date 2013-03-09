.class Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridInfo"
.end annotation


# instance fields
.field cx:I

.field cy:I

.field dx:I

.field dy:I

.field nItemHeight:I

.field nItemWidth:I

.field nPaddingBottom:I

.field nPaddingLeft:I

.field nPaddingRight:I

.field nPaddingTop:I

.field nTotalCachedPageWidth:I

.field nTotalColumnWidth:I

.field nTotalElements:I

.field nTotalPage:I

.field nTotalRowHeight:I

.field nViewBorderBottom:I

.field nViewBorderLeft:I

.field nViewBorderRight:I

.field nViewBorderTop:I

.field nViewHeight:I

.field nViewWidth:I

.field nx:I

.field ny:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2459
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    .line 2460
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    .line 2461
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    .line 2464
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewBorderLeft:I

    .line 2465
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewBorderRight:I

    .line 2466
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewBorderTop:I

    .line 2467
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewBorderBottom:I

    .line 2471
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    .line 2472
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    .line 2473
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    .line 2474
    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingBottom:I

    .line 2477
    return-void
.end method


# virtual methods
.method getFirstVisiblePageIndex()I
    .locals 5

    .prologue
    .line 2559
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    div-int v0, v1, v2

    .line 2560
    .local v0, index:I
    if-gez v0, :cond_1

    .line 2561
    const/4 v0, 0x0

    .line 2566
    :cond_0
    :goto_0
    return v0

    .line 2562
    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    if-lt v0, v1, :cond_0

    .line 2563
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public getFirstVisiblePosition()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2570
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int v1, v2, v3

    .line 2571
    .local v1, nReatItemHeight:I
    if-gtz v1, :cond_1

    .line 2587
    :cond_0
    :goto_0
    return v0

    .line 2575
    :cond_1
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-eqz v2, :cond_0

    .line 2579
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    div-int/2addr v2, v1

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int v0, v2, v3

    .line 2581
    .local v0, nPos:I
    if-gez v0, :cond_2

    .line 2582
    const/4 v0, 0x0

    goto :goto_0

    .line 2583
    :cond_2
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v0, v2, :cond_0

    .line 2584
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    rem-int/2addr v3, v4

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2591
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    if-gtz v1, :cond_1

    .line 2602
    :cond_0
    :goto_0
    return v0

    .line 2595
    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    if-eqz v1, :cond_0

    .line 2599
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 2600
    .local v0, nPos:I
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-lt v0, v1, :cond_0

    .line 2601
    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method getTotalRowsCount()I
    .locals 2

    .prologue
    .line 2539
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v0, v1

    return v0
.end method

.method getVisibleItemCount()I
    .locals 4

    .prologue
    .line 2551
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2552
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v0, v1

    .line 2554
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method getVisibleRowsCount()I
    .locals 4

    .prologue
    .line 2543
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2544
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    .line 2546
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method resetPosition()V
    .locals 1

    .prologue
    .line 2519
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    .line 2520
    return-void
.end method

.method updateAllInfo(IIIIIIIIIII)V
    .locals 6
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "nHorizontalSpacing"
    .parameter "nVerticalSpacing"
    .parameter "nColumnSize"
    .parameter "nDataSize"
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"
    .parameter "itemWidth"

    .prologue
    .line 2484
    iput p7, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    .line 2485
    iput p8, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    .line 2486
    iput p9, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    .line 2487
    move/from16 v0, p10

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingBottom:I

    .line 2489
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    .line 2490
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingBottom:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewHeight:I

    .line 2492
    iput p5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    .line 2494
    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    .line 2495
    iput p4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    .line 2497
    move/from16 v0, p11

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    move/from16 v0, p11

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    .line 2498
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    .line 2499
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    .line 2500
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 2501
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    .line 2508
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iget v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, p3

    iget v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2509
    .local v1, nRefineX:I
    if-ltz v1, :cond_1

    .line 2510
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingLeft:I

    .line 2511
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    div-int/lit8 v3, v1, 0x2

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nPaddingRight:I

    .line 2514
    :cond_1
    invoke-virtual {p0, p6}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->updateDataCount(I)V

    .line 2516
    return-void

    .line 2503
    .end local v1           #nRefineX:I
    :cond_2
    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 2504
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    goto :goto_0
.end method

.method updateDataCount(I)V
    .locals 3
    .parameter "nDataCount"

    .prologue
    const/4 v1, 0x0

    .line 2524
    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    .line 2525
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    if-gtz v0, :cond_0

    .line 2526
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    .line 2527
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalColumnWidth:I

    .line 2528
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalCachedPageWidth:I

    .line 2529
    iput v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    .line 2536
    :goto_0
    return-void

    .line 2531
    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalRowHeight:I

    .line 2532
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalColumnWidth:I

    .line 2533
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nViewWidth:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalCachedPageWidth:I

    .line 2534
    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalElements:I

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->ny:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalPage:I

    goto :goto_0
.end method
