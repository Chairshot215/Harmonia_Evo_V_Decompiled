.class public Lcom/android/htccontacts/TabStripView;
.super Landroid/widget/LinearLayout;
.source "TabStripView.java"


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/TabStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/android/htccontacts/TabStripView;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const v1, 0x7f020059

    .line 46
    iget v0, p0, Lcom/android/htccontacts/TabStripView;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/htccontacts/TabStripView;->mGroupFlags:I

    .line 47
    iget-object v0, p0, Lcom/android/htccontacts/TabStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 49
    iget-object v0, p0, Lcom/android/htccontacts/TabStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 51
    return-void
.end method


# virtual methods
.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/htccontacts/TabStripView;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/TabStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->invalidate()V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget v3, p0, Lcom/android/htccontacts/TabStripView;->mSelectedTabIndex:I

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/TabStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, selectedChild:Landroid/view/View;
    iget-object v3, p0, Lcom/android/htccontacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 97
    iget-object v3, p0, Lcom/android/htccontacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 100
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 102
    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->getHeight()I

    move-result v0

    .line 103
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/android/htccontacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/htccontacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/htccontacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget-object v3, p0, Lcom/android/htccontacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/htccontacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/htccontacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object v3, p0, Lcom/android/htccontacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v3, p0, Lcom/android/htccontacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 72
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 73
    iget p2, p0, Lcom/android/htccontacts/TabStripView;->mSelectedTabIndex:I

    .line 77
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 74
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/TabStripView;->mSelectedTabIndex:I

    if-lt p2, v0, :cond_0

    .line 75
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 61
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/htccontacts/TabStripView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/TabStripView;->setMinimumWidth(I)V

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    return-void
.end method

.method public setSelected(IZ)V
    .locals 1
    .parameter "index"
    .parameter "selected"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/htccontacts/TabStripView;->mSelectedTabIndex:I

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/TabStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 56
    return-void
.end method
