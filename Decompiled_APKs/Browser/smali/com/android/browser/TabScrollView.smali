.class public Lcom/android/browser/TabScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "TabScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TabScrollView$TabLayout;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mContentView:Landroid/widget/LinearLayout;

.field private mSelected:I

.field private mTabOverlap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/android/browser/TabScrollView;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/browser/TabScrollView;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/browser/TabScrollView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/TabScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/TabScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/browser/TabScrollView;->mTabOverlap:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/TabScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    return v0
.end method

.method private animateScroll(I)V
    .locals 5
    .parameter "newscroll"

    .prologue
    .line 183
    const-string v1, "scroll"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getScrollX()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 184
    .local v0, animator:Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/android/browser/TabScrollView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 186
    return-void
.end method

.method private ensureChildVisible(Landroid/view/View;)V
    .locals 5
    .parameter "child"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 147
    .local v0, childl:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v1, v0, v4

    .line 148
    .local v1, childr:I
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getScrollX()I

    move-result v2

    .line 149
    .local v2, viewl:I
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getWidth()I

    move-result v4

    add-int v3, v2, v4

    .line 150
    .local v3, viewr:I
    if-ge v0, v2, :cond_1

    .line 152
    invoke-direct {p0, v0}, Lcom/android/browser/TabScrollView;->animateScroll(I)V

    .line 158
    .end local v0           #childl:I
    .end local v1           #childr:I
    .end local v2           #viewl:I
    .end local v3           #viewr:I
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v0       #childl:I
    .restart local v1       #childr:I
    .restart local v2       #viewl:I
    .restart local v3       #viewr:I
    :cond_1
    if-le v1, v3, :cond_0

    .line 155
    sub-int v4, v1, v3

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/android/browser/TabScrollView;->animateScroll(I)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/TabScrollView;->mAnimationDuration:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/TabScrollView;->mTabOverlap:I

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/browser/TabScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/browser/TabScrollView;->setOverScrollMode(I)V

    .line 71
    new-instance v0, Lcom/android/browser/TabScrollView$TabLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/TabScrollView$TabLayout;-><init>(Lcom/android/browser/TabScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 78
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/browser/TabScrollView;->addView(Landroid/view/View;)V

    .line 79
    iput v4, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    .line 81
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getScroll()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/TabScrollView;->setScroll(I)V

    .line 82
    return-void
.end method


# virtual methods
.method addTab(Landroid/view/View;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 132
    return-void
.end method

.method clearTabs()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 127
    return-void
.end method

.method getChildIndex(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getScroll()I
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getScrollX()I

    move-result v0

    return v0
.end method

.method getSelectedTab()Landroid/view/View;
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    iget-object v1, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 86
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 87
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/TabScrollView;->ensureChildVisible(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 209
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 211
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method removeTab(Landroid/view/View;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 136
    .local v0, ix:I
    iget v1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    if-ne v0, v1, :cond_1

    .line 137
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 142
    return-void

    .line 138
    :cond_1
    iget v1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    if-ge v0, v1, :cond_0

    .line 139
    iget v1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    goto :goto_0
.end method

.method public setScroll(I)V
    .locals 1
    .parameter "newscroll"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/TabScrollView;->scrollTo(II)V

    .line 193
    return-void
.end method

.method setSelectedTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 105
    :cond_0
    iput p1, p0, Lcom/android/browser/TabScrollView;->mSelected:I

    .line 106
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->requestLayout()V

    .line 111
    return-void
.end method

.method protected updateLayout()V
    .locals 4

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 93
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/TabBar$TabView;

    .line 95
    .local v2, tv:Lcom/android/browser/TabBar$TabView;
    invoke-virtual {v2}, Lcom/android/browser/TabBar$TabView;->updateLayoutParams()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v2           #tv:Lcom/android/browser/TabBar$TabView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/TabScrollView;->ensureChildVisible(Landroid/view/View;)V

    .line 98
    return-void
.end method
