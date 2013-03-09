.class public Lcom/htc/widget/HtcFooter;
.super Landroid/view/ViewGroup;
.source "HtcFooter.java"


# static fields
.field private static final DEF_CHILD_WEIGHT:F = 1.0f


# instance fields
.field private footerArea:Landroid/graphics/Rect;

.field private mDefHeight:I

.field private mEnable2ndAlpha:I

.field private mEnableTransparent:Z

.field private mOneChildWidth:I

.field private mOneChildWidthOfLand:I

.field private mOneChildWidthOfPort:I

.field private mSecondBGBound:Z

.field private mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeperatorWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v4, 0x0

    const v8, 0x20300dd

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    iput-object v4, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x7f

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mEnable2ndAlpha:I

    iput-object v4, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    sget-object v3, Lcom/htc/R$styleable;->HtcFooter:[I

    invoke-virtual {p1, p2, v3, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getEnable2ndAlpha()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcFooter;->setEnable2ndAlpha(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "common_titlebar_btn_div"

    const v5, 0x2080b03

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    return-void

    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    goto :goto_0
.end method

.method private getChildWeight(Landroid/view/View;)I
    .locals 5

    const/high16 v2, 0x3f80

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    :goto_0
    float-to-int v2, v2

    :goto_1
    return v2

    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getChildrenTotalWeight()I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v4

    int-to-float v0, v4

    const/high16 v4, 0x3f80

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-int v4, v0

    goto :goto_1

    :cond_1
    return v3
.end method

.method private getEnable2ndAlpha()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcFooter;->mEnable2ndAlpha:I

    return v0
.end method

.method private getSeparatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getVisibleChildCount()I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private setEnable2ndAlpha(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-lt v0, p1, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcFooter;->mEnable2ndAlpha:I

    :cond_0
    return-void
.end method

.method private setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0
.end method

.method private setSeparatorResource(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setTransparent2ndBG(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_app_bkg_down"

    const v4, 0x20807c4

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getEnable2ndAlpha()I

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0xff

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mEnableTransparent:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getEnable2ndAlpha()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xff

    goto :goto_1
.end method

.method public enableSecondBackground(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    return-void
.end method

.method public enableTransparentBckground(Z)V
    .locals 8

    iput-boolean p1, p0, Lcom/htc/widget/HtcFooter;->mEnableTransparent:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v2

    if-eqz p1, :cond_1

    const-string v6, "common_titlebar_sublevel_75"

    :goto_0
    if-eqz p1, :cond_2

    const v0, 0x208050c

    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/htc/widget/HtcFooter;->setPadding(IIII)V

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooter;->setTransparent2ndBG(Z)V

    return-void

    :cond_1
    const-string v6, "common_titlebar_sublevel"

    goto :goto_0

    :cond_2
    const v0, 0x2080085

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    const/4 v5, -0x2

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x3

    const/high16 v6, 0x3f80

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getOneChildWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    return v0
.end method

.method public getSeperatorWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mEnableTransparent:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/16 v12, 0x8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v4

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v6

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getSeparatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getSeperatorWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    const/4 v8, 0x1

    if-ne v8, v6, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_4

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    move-object v0, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v4

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v9

    move v5, v9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    move v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    sub-int v8, p4, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getOneChildWidth()I

    move-result v10

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    sub-int v24, v24, v20

    sub-int v18, v24, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    const/16 v24, -0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v24, -0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v24, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    sub-int v24, v11, v22

    sub-int v10, v24, v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v17

    move/from16 v14, v18

    packed-switch v17, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildrenTotalWeight()I

    move-result v15

    if-lez v15, :cond_6

    div-int v16, v14, v15

    :goto_0
    if-lez v15, :cond_7

    rem-int v12, v14, v15

    :goto_1
    move v13, v12

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v7

    mul-int v8, v7, v16

    if-lez v13, :cond_2

    if-lez v7, :cond_2

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v8, v8, v24

    :cond_2
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    if-lez v13, :cond_3

    if-lez v7, :cond_3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v13, v13, v24

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_0
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getOneChildWidth()I

    move-result v24

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/view/View;->measure(II)V

    :cond_4
    const/high16 v24, -0x8000

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v24

    move/from16 v0, p2

    invoke-static {v11, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcFooter;->setMeasuredDimension(II)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move/from16 v16, v14

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v24, 0x0

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/16 v24, 0x0

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setOneChildWidth(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    goto :goto_0
.end method

.method public setSeperatorWidth(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    goto :goto_0
.end method

.method public setTranparentBckground(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    return-void
.end method
