.class public Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
.super Landroid/view/ViewGroup;
.source "AnimatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AnimatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimatingItemView"
.end annotation


# instance fields
.field private mAnimatedHeight:I

.field private final mChecked:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/google/android/gm/AnimatedAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/AnimatedAdapter;Landroid/content/Context;IZ)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "initialHeight"
    .parameter "checked"

    .prologue
    const/4 v1, -0x1

    .line 605
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->this$0:Lcom/google/android/gm/AnimatedAdapter;

    .line 606
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 602
    iput v1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    .line 607
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    iput-boolean p4, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mChecked:Z

    .line 610
    return-void
.end method


# virtual methods
.method public isActivated()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/AnimatedAdapter;->access$002(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 630
    :cond_0
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 645
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    return-void

    .line 631
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mChecked:Z

    if-eqz v1, :cond_3

    .line 632
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 633
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/AnimatedAdapter;->access$102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 636
    :cond_2
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$100()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_3
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$200()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 639
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/AnimatedAdapter;->access$202(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 642
    :cond_4
    invoke-static {}, Lcom/google/android/gm/AnimatedAdapter;->access$200()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 650
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 651
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    .line 653
    :cond_0
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mWidth:I

    iget v1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mAnimatedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setMeasuredDimension(II)V

    .line 654
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 613
    iput p1, p0, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->mAnimatedHeight:I

    .line 614
    return-void
.end method
