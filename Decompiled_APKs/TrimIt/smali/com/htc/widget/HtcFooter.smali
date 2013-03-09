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
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const v8, 0x20300dd

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v5, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    .line 75
    iput-object v4, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    const/16 v3, 0x7f

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mEnable2ndAlpha:I

    .line 665
    iput-object v4, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 126
    sget-object v3, Lcom/htc/R$styleable;->HtcFooter:[I

    invoke-virtual {p1, p2, v3, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    .line 132
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    .line 136
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 139
    .local v1, bTransparent:Z
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getEnable2ndAlpha()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcFooter;->setEnable2ndAlpha(I)V

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    sget-object v3, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 153
    .local v2, c:Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    .line 155
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "common_titlebar_btn_div"

    const v5, 0x2080b03

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcFooter;->setSeparatorResource(I)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    .line 160
    return-void

    .line 153
    :cond_0
    iget v3, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    goto :goto_0
.end method

.method private getChildWeight(Landroid/view/View;)I
    .locals 5
    .parameter "child"

    .prologue
    const/high16 v2, 0x3f80

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 186
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    :goto_0
    float-to-int v2, v2

    .line 194
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return v2

    .line 188
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const/4 v2, 0x1

    goto :goto_1

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getChildrenTotalWeight()I
    .locals 5

    .prologue
    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, nTotalWeight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 205
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v4

    int-to-float v0, v4

    .line 207
    .local v0, fChildWidth:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    float-to-int v4, v0

    goto :goto_1

    .line 209
    .end local v0           #fChildWidth:F
    :cond_1
    return v3
.end method

.method private getEnable2ndAlpha()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mEnable2ndAlpha:I

    return v0
.end method

.method private getSeparatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getVisibleChildCount()I
    .locals 6

    .prologue
    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, nVisibleCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v2

    .line 169
    .local v2, nChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return v3
.end method

.method private setEnable2ndAlpha(I)V
    .locals 1
    .parameter "enable2ndAlpha"

    .prologue
    .line 657
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-lt v0, p1, :cond_0

    .line 658
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mEnable2ndAlpha:I

    .line 660
    :cond_0
    return-void
.end method

.method private setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "seperator"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/htc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 600
    if-nez p1, :cond_1

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    .line 612
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 605
    .restart local p1
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 606
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 607
    .restart local p1
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 608
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0
.end method

.method private setSeparatorResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 618
    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 620
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private setTransparent2ndBG(Z)V
    .locals 5
    .parameter "bTransparent"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "common_app_bkg_down"

    const v4, 0x20807c4

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 570
    .local v1, nResId:I
    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 572
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 573
    iput-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v3, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getEnable2ndAlpha()I

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 576
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    .line 577
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->invalidate()V

    .line 580
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 574
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v2, 0xff

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 520
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    if-nez v0, :cond_1

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    .line 522
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

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 529
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mEnableTransparent:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getEnable2ndAlpha()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 530
    iget-object v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGdrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 533
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 534
    return-void

    .line 525
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

    .line 529
    :cond_4
    const/16 v0, 0xff

    goto :goto_1
.end method

.method public enableSecondBackground(Z)V
    .locals 1
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    .line 586
    return-void
.end method

.method public enableTransparentBckground(Z)V
    .locals 8
    .parameter "bTransparent"

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/htc/widget/HtcFooter;->mEnableTransparent:Z

    .line 540
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v3

    .line 541
    .local v3, pl:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v4

    .line 542
    .local v4, pr:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v5

    .line 543
    .local v5, pt:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v2

    .line 545
    .local v2, pb:I
    if-eqz p1, :cond_1

    const-string v6, "common_titlebar_sublevel_75"

    .line 546
    .local v6, sResName:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    const v0, 0x208050c

    .line 549
    .local v0, nDefResID:I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 550
    .local v1, nResID:I
    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFooter;->setBackgroundResource(I)V

    .line 555
    :cond_0
    invoke-virtual {p0, v3, v5, v4, v2}, Lcom/htc/widget/HtcFooter;->setPadding(IIII)V

    .line 557
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooter;->setTransparent2ndBG(Z)V

    .line 558
    return-void

    .line 545
    .end local v0           #nDefResID:I
    .end local v1           #nResID:I
    .end local v6           #sResName:Ljava/lang/String;
    :cond_1
    const-string v6, "common_titlebar_sublevel"

    goto :goto_0

    .line 546
    .restart local v6       #sResName:Ljava/lang/String;
    :cond_2
    const v0, 0x2080085

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    .line 448
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 451
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7
    .parameter "attrs"

    .prologue
    const/4 v5, -0x2

    .line 417
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 421
    .local v4, vglp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 425
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    const/high16 v6, 0x3f80

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 429
    .local v2, fWeight:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 433
    return-object v3

    .line 418
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #fWeight:F
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #vglp:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v4       #vglp:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v1

    if-gez v1, :cond_1

    .line 671
    :cond_0
    const/4 v1, 0x0

    .line 686
    :goto_0
    return-object v1

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 674
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 676
    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 679
    .local v0, screenLoc:[I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->getLocationOnScreen([I)V

    .line 681
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 682
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 683
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 684
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 686
    iget-object v1, p0, Lcom/htc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getOneChildWidth()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    return v0
.end method

.method public getSeperatorWidth()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 632
    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 633
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfLand:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    .line 640
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mEnableTransparent:Z

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    .line 643
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->invalidate()V

    .line 644
    return-void

    .line 634
    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 635
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    goto :goto_0

    .line 637
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidthOfPort:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFooter;->setOneChildWidth(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/16 v12, 0x8

    .line 460
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 464
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 465
    .local v7, rect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 466
    .local v0, LastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v4

    .line 467
    .local v4, nChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v6

    .line 468
    .local v6, nVisibleChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getSeparatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 469
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getSeperatorWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 470
    .local v5, nHalfOfSperatorWidth:I
    const/4 v8, 0x1

    if-ne v8, v6, :cond_2

    if-eqz v2, :cond_2

    .line 471
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 472
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_1

    .line 474
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

    .line 478
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 479
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 481
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

    .line 485
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 486
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 509
    .end local v1           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 510
    return-void

    .line 471
    .restart local v1       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 492
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 493
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_4

    .line 494
    if-eqz v0, :cond_3

    .line 495
    if-eqz v2, :cond_3

    .line 496
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

    .line 500
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 501
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 504
    :cond_3
    move-object v0, v1

    .line 491
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v4

    .line 225
    .local v4, nChildren:I
    invoke-direct {p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v7

    .line 229
    .local v7, nVisibleCount:I
    packed-switch v7, :pswitch_data_0

    .line 245
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v9

    .line 247
    .local v9, npl:I
    move v5, v9

    .line 248
    .local v5, nLastLeft:I
    const/4 v6, 0x0

    .line 249
    .local v6, nViewCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v2

    .line 250
    .local v2, childTop:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 251
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 255
    move v1, v5

    .line 257
    .local v1, childLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v5, v10

    .line 262
    add-int/lit8 v6, v6, 0x1

    .line 250
    .end local v1           #childLeft:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childTop:I
    .end local v3           #i:I
    .end local v5           #nLastLeft:I
    .end local v6           #nViewCount:I
    .end local v9           #npl:I
    :pswitch_0
    sub-int v8, p4, p2

    .line 232
    .local v8, nWidth:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 233
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getOneChildWidth()I

    move-result v10

    sub-int v10, v8, v10

    div-int/lit8 v1, v10, 0x2

    .line 236
    .restart local v1       #childLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v2

    .line 237
    .restart local v2       #childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 267
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v8           #nWidth:I
    :cond_1
    return-void

    .line 232
    .restart local v0       #child:Landroid/view/View;
    .restart local v8       #nWidth:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingLeft()I

    move-result v20

    .line 282
    .local v20, npl:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingRight()I

    move-result v21

    .line 283
    .local v21, npr:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingTop()I

    move-result v22

    .line 284
    .local v22, npt:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getPaddingBottom()I

    move-result v19

    .line 285
    .local v19, npb:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    sub-int v24, v24, v20

    sub-int v18, v24, v21

    .line 286
    .local v18, nWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 287
    .local v23, vglp:Landroid/view/ViewGroup$LayoutParams;
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

    .line 290
    :cond_0
    const/16 v24, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 292
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFooter;->mDefHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    .line 293
    .local v11, nHeight:I
    sub-int v24, v11, v22

    sub-int v10, v24, v19

    .line 294
    .local v10, nContentHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildCount()I

    move-result v9

    .line 295
    .local v9, nChildren:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v17

    .line 300
    .local v17, nVisibleCount:I
    move/from16 v14, v18

    .line 305
    .local v14, nTotalChildrenWidth:I
    packed-switch v17, :pswitch_data_0

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getChildrenTotalWeight()I

    move-result v15

    .line 323
    .local v15, nTotalWeight:I
    if-lez v15, :cond_6

    div-int v16, v14, v15

    .line 325
    .local v16, nUnitWidth:I
    :goto_0
    if-lez v15, :cond_7

    rem-int v12, v14, v15

    .line 327
    .local v12, nRemainder:I
    :goto_1
    move v13, v12

    .line 329
    .local v13, nRestWeight:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v9, :cond_4

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 331
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v7

    .line 334
    .local v7, nChildWeight:I
    mul-int v8, v7, v16

    .line 336
    .local v8, nChildWidth:I
    if-lez v13, :cond_2

    if-lez v7, :cond_2

    .line 337
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v8, v8, v24

    .line 340
    :cond_2
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 342
    .local v6, nChildWMeasureSpec:I
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 344
    .local v5, nChildHMeasureSpec:I
    if-lez v13, :cond_3

    if-lez v7, :cond_3

    .line 345
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v13, v13, v24

    .line 353
    .end local v7           #nChildWeight:I
    .end local v8           #nChildWidth:I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/view/View;->measure(II)V

    .line 329
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 307
    .end local v3           #child:Landroid/view/View;
    .end local v4           #i:I
    .end local v5           #nChildHMeasureSpec:I
    .end local v6           #nChildWMeasureSpec:I
    .end local v12           #nRemainder:I
    .end local v13           #nRestWeight:I
    .end local v15           #nTotalWeight:I
    .end local v16           #nUnitWidth:I
    :pswitch_0
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v9, :cond_4

    .line 308
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 310
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcFooter;->getOneChildWidth()I

    move-result v24

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 313
    .restart local v6       #nChildWMeasureSpec:I
    const/high16 v24, 0x4000

    move/from16 v0, v24

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 315
    .restart local v5       #nChildHMeasureSpec:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/view/View;->measure(II)V

    .line 359
    .end local v3           #child:Landroid/view/View;
    .end local v5           #nChildHMeasureSpec:I
    .end local v6           #nChildWMeasureSpec:I
    :cond_4
    const/high16 v24, -0x8000

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 362
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

    .line 367
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFooter;->mSecondBGBound:Z

    .line 368
    return-void

    .line 307
    .restart local v3       #child:Landroid/view/View;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v3           #child:Landroid/view/View;
    .end local v4           #i:I
    .restart local v15       #nTotalWeight:I
    :cond_6
    move/from16 v16, v14

    .line 323
    goto/16 :goto_0

    .line 325
    .restart local v16       #nUnitWidth:I
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 348
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #i:I
    .restart local v12       #nRemainder:I
    .restart local v13       #nRestWeight:I
    :cond_8
    const/16 v24, 0x0

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 350
    .restart local v6       #nChildWMeasureSpec:I
    const/16 v24, 0x0

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #nChildHMeasureSpec:I
    goto/16 :goto_3

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setOneChildWidth(I)V
    .locals 1
    .parameter "nOneChildWidth"

    .prologue
    .line 92
    if-gez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mOneChildWidth:I

    goto :goto_0
.end method

.method public setSeperatorWidth(I)V
    .locals 1
    .parameter "nSeperatorWidth"

    .prologue
    .line 382
    if-gez p1, :cond_0

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcFooter;->mSeperatorWidth:I

    goto :goto_0
.end method

.method public setTranparentBckground(Z)V
    .locals 0
    .parameter "bTransparent"

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFooter;->enableTransparentBckground(Z)V

    .line 563
    return-void
.end method
