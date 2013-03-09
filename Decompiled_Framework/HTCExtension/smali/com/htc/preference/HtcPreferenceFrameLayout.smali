.class public Lcom/htc/preference/HtcPreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HtcPreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private final mBorderBottom:I

.field private final mBorderLeft:I

.field private final mBorderRight:I

.field private final mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103d4

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v6, Lcom/android/internal/R$styleable;->PreferenceFrameLayout:[I

    invoke-virtual {p1, p2, v6, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v1, v6

    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v2, v6

    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v3, v6

    mul-float v6, v5, v7

    add-float/2addr v6, v8

    float-to-int v4, v6

    invoke-virtual {v0, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v10, v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    move-object v4, v10

    :goto_0
    if-eqz v4, :cond_4

    iget-boolean v10, v4, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    sub-int/2addr v3, v10

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    sub-int/2addr v0, v10

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    sub-int/2addr v1, v10

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    sub-int/2addr v2, v10

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getPaddingRight()I

    move-result v8

    if-ne v9, v3, :cond_1

    if-ne v6, v0, :cond_1

    if-ne v7, v1, :cond_1

    if-eq v8, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->setPadding(IIII)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    if-nez v10, :cond_0

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderTop:I

    add-int/2addr v3, v10

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderBottom:I

    add-int/2addr v0, v10

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderLeft:I

    add-int/2addr v1, v10

    iget v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mBorderRight:I

    add-int/2addr v2, v10

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;->mPaddingApplied:Z

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
