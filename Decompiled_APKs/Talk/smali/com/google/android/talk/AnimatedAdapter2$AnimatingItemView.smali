.class Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
.super Landroid/view/ViewGroup;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingItemView"
.end annotation


# instance fields
.field private mDeleted:Z

.field private mForcedHeight:I

.field private mLayoutCount:I

.field final synthetic this$0:Lcom/google/android/talk/AnimatedAdapter2;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AnimatedAdapter2;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    .line 552
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 553
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 554
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 546
    iget v0, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    iput p1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I

    return p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 563
    iget v1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I

    .line 564
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 565
    invoke-virtual {p0, v3}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, child:Landroid/view/View;
    sub-int v1, p4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 568
    iget-boolean v1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mDeleted:Z

    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    .line 572
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 577
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 578
    .local v6, widthSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 579
    .local v5, widthMode:I
    const/4 v4, 0x0

    .line 580
    .local v4, width:I
    if-eqz v5, :cond_0

    .line 581
    move v4, v6

    .line 583
    :cond_0
    iget-object v7, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    #getter for: Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F
    invoke-static {v7}, Lcom/google/android/talk/AnimatedAdapter2;->access$000(Lcom/google/android/talk/AnimatedAdapter2;)F

    move-result v7

    iget v8, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mForcedHeight:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v4, v7}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setMeasuredDimension(II)V

    .line 592
    .end local v4           #width:I
    .end local v5           #widthMode:I
    .end local v6           #widthSize:I
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 588
    .local v0, child:Landroid/view/View;
    iget v1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mForcedHeight:I

    .line 589
    .local v1, childHeight:I
    int-to-float v7, v1

    iget-object v8, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    #getter for: Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F
    invoke-static {v8}, Lcom/google/android/talk/AnimatedAdapter2;->access$000(Lcom/google/android/talk/AnimatedAdapter2;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 590
    .local v2, delta:I
    iget-boolean v7, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mDeleted:Z

    if-eqz v7, :cond_2

    move v3, v2

    .line 591
    .local v3, newHeight:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0, v7, v3}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 590
    .end local v3           #newHeight:I
    :cond_2
    sub-int v3, v1, v2

    goto :goto_1
.end method

.method public setForcedHeight(IZ)V
    .locals 0
    .parameter "height"
    .parameter "isDeleted"

    .prologue
    .line 557
    iput p1, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mForcedHeight:I

    .line 558
    iput-boolean p2, p0, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mDeleted:Z

    .line 559
    return-void
.end method
