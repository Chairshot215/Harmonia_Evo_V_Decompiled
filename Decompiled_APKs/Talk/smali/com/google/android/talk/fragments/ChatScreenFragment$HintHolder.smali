.class public Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;
.super Landroid/view/ViewGroup;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintHolder"
.end annotation


# instance fields
.field private mFarLeftView:Landroid/widget/TextView;

.field private mFarRightView:Landroid/widget/TextView;

.field private mLeftView:Landroid/widget/TextView;

.field private mMiddleView:Landroid/widget/TextView;

.field private mPageMargin:I

.field private mPercentRevealed:F

.field private mPushPadding:I

.field private mRightView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2507
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2508
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2503
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2504
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 2499
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2500
    return-void
.end method

.method private constrainViewMovingLeft(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "maxLeft"

    .prologue
    .line 2549
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v2, p2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 2550
    .local v0, delta:I
    if-gez v0, :cond_0

    .line 2551
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2553
    :cond_0
    return-void
.end method

.method private constrainViewMovingRight(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "maxRight"

    .prologue
    .line 2556
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v2, p2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 2557
    .local v0, delta:I
    if-lez v0, :cond_0

    .line 2558
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2560
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 2537
    const v0, 0x3e4ccccd

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 2542
    const v0, 0x3e4ccccd

    return v0
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x3ecccccd

    .line 2512
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2513
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HintHolder requires exactly 5 children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2516
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    .line 2517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    .line 2518
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    .line 2519
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    .line 2520
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    .line 2522
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2523
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2524
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2525
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2526
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2528
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPushPadding:I

    .line 2529
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPageMargin:I

    .line 2532
    invoke-virtual {p0, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2533
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2676
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2677
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2678
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2679
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2680
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2682
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingLeft()I

    move-result v4

    .line 2683
    .local v4, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingRight()I

    move-result v5

    .line 2684
    .local v5, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingTop()I

    move-result v6

    .line 2685
    .local v6, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingBottom()I

    move-result v3

    .line 2687
    .local v3, paddingBottom:I
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 2693
    sub-int v1, p4, p2

    .line 2694
    .local v1, fullWidth:I
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingLeft()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 2695
    .local v0, availableWidth:I
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 2701
    div-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 2702
    .local v2, middleViewLeft:I
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    add-int v8, v4, v2

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingTop()I

    move-result v9

    add-int v10, v4, v2

    iget-object v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 2708
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    add-int v8, v4, v0

    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingTop()I

    move-result v9

    add-int v10, v4, v0

    iget-object v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 2714
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v1, v6, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 2720
    iget v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPercentRevealed:F

    invoke-virtual {p0, v7}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setPercentRevealed(F)V

    .line 2721
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, -0x8000

    .line 2636
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2637
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4040

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 2640
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 2644
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 2648
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 2652
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 2656
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->measure(II)V

    .line 2661
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 2662
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 2668
    .local v0, height:I
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setMeasuredDimension(II)V

    .line 2669
    return-void

    .line 2663
    .end local v0           #height:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2664
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .restart local v0       #height:I
    goto :goto_0

    .line 2666
    .end local v0           #height:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .restart local v0       #height:I
    goto :goto_0
.end method

.method public setPercentRevealed(F)V
    .locals 14
    .parameter "percentRevealed"

    .prologue
    const v11, 0x3ecccccd

    const/high16 v13, 0x3f80

    const/high16 v12, 0x4000

    .line 2569
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPercentRevealed:F

    .line 2571
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getMeasuredWidth()I

    move-result v1

    .line 2573
    .local v1, myWidth:I
    const/high16 v9, -0x4080

    mul-float/2addr v9, p1

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 2574
    .local v8, translationX:I
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    int-to-float v10, v8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 2575
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingLeft()I

    move-result v9

    int-to-float v0, v9

    .line 2576
    .local v0, leftViewOriginalPosition:F
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v7, v9

    .line 2579
    .local v7, rightViewOriginalPosition:F
    const/high16 v9, 0x3f00

    cmpl-float v9, p1, v9

    if-lez v9, :cond_0

    .line 2580
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2581
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2591
    :goto_0
    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_2

    .line 2593
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPushPadding:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setX(F)V

    .line 2599
    int-to-float v9, v1

    div-float/2addr v9, v12

    iget v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPageMargin:I

    add-int/2addr v10, v1

    int-to-float v10, v10

    sub-float v11, v13, p1

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 2601
    .local v5, newPageCenterPoint:F
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float v6, v5, v9

    .line 2602
    .local v6, newRightViewPosition:F
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setX(F)V

    .line 2604
    int-to-float v9, v1

    div-float/2addr v9, v12

    add-float/2addr v9, v5

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v3, v9, v10

    .line 2607
    .local v3, newFarRightViewPosition:F
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarRightView:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setX(F)V

    .line 2625
    .end local v3           #newFarRightViewPosition:F
    .end local v6           #newRightViewPosition:F
    :goto_1
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingLeft()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->constrainViewMovingLeft(Landroid/view/View;I)V

    .line 2626
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {p0, v9, v10}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->constrainViewMovingRight(Landroid/view/View;I)V

    .line 2628
    return-void

    .line 2582
    .end local v5           #newPageCenterPoint:F
    :cond_0
    const/high16 v9, -0x4100

    cmpg-float v9, p1, v9

    if-gez v9, :cond_1

    .line 2583
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2584
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 2586
    :cond_1
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2587
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2588
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    .line 2610
    :cond_2
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mRightView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getX()F

    move-result v10

    iget-object v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mMiddleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPushPadding:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setX(F)V

    .line 2616
    int-to-float v9, v1

    div-float/2addr v9, v12

    iget v10, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mPageMargin:I

    add-int/2addr v10, v1

    int-to-float v10, v10

    add-float v11, v13, p1

    mul-float/2addr v10, v11

    sub-float v5, v9, v10

    .line 2618
    .restart local v5       #newPageCenterPoint:F
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float v4, v5, v9

    .line 2619
    .local v4, newLeftViewPosition:F
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mLeftView:Landroid/widget/TextView;

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setX(F)V

    .line 2621
    int-to-float v9, v1

    div-float/2addr v9, v12

    sub-float v9, v5, v9

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    add-float v2, v9, v10

    .line 2622
    .local v2, newFarLeftViewPosition:F
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->mFarLeftView:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setX(F)V

    goto/16 :goto_1
.end method
