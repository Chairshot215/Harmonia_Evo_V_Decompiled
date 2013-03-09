.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/z;


# static fields
.field private static final k:[I


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:F

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Landroid/support/v4/view/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->k:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->f:F

    new-instance v0, Landroid/support/v4/view/j;

    invoke-direct {v0, p0, v4}, Landroid/support/v4/view/j;-><init>(Landroid/support/v4/view/PagerTitleStrip;B)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Landroid/support/v4/view/j;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->k:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/high16 v1, -0x6700

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:I

    return-void
.end method


# virtual methods
.method final a(IF)V
    .locals 13

    const/high16 v12, 0x3f80

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/i;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->i:Z

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v8

    add-int v0, v6, v4

    add-int v9, v7, v4

    sub-int v0, v5, v0

    sub-int v10, v0, v9

    const/high16 v0, 0x3f00

    add-float/2addr v0, p2

    cmpl-float v11, v0, v12

    if-lez v11, :cond_1

    sub-float/2addr v0, v12

    :cond_1
    sub-int v9, v5, v9

    int-to-float v10, v10

    mul-float/2addr v0, v10

    float-to-int v0, v0

    sub-int v0, v9, v0

    sub-int/2addr v0, v4

    add-int/2addr v2, v0

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v4, v0, v8, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, p0, Landroid/support/v4/view/PagerTitleStrip;->g:I

    sub-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    add-int/2addr v1, v0

    iget-object v6, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v4, v0, v8, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    sub-int v0, v5, v7

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->g:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    add-int v2, v0, v3

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v1, v0, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    iput p2, p0, Landroid/support/v4/view/PagerTitleStrip;->f:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->i:Z

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->f:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method final a(ILandroid/support/v4/view/i;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/view/i;->getCount()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->h:Z

    if-lez p1, :cond_4

    if-eqz p2, :cond_4

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/i;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/support/v4/view/i;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/i;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v0

    const v3, 0x3f4ccccd

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/high16 v3, -0x8000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->f:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStrip;->h:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method final a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Landroid/support/v4/view/j;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/i;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Landroid/support/v4/view/j;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/i;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->f:F

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/i;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/i;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Landroid/support/v4/view/j;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ac;)Landroid/support/v4/view/ac;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Landroid/support/v4/view/j;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ab;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/i;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ac;)Landroid/support/v4/view/ac;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ab;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eq v0, v8, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v3, v4

    int-to-float v6, v2

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, -0x8000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    if-ne v1, v8, :cond_2

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method
