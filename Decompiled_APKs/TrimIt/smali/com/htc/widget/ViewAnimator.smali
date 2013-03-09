.class public Lcom/htc/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 20
    iput-boolean v1, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 28
    invoke-direct {p0}, Lcom/htc/widget/ViewAnimator;->initViewAnimator()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v3, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 20
    iput-boolean v4, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    .line 21
    iput-boolean v4, p0, Lcom/htc/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 34
    sget-object v2, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 36
    .local v1, resource:I
    if-lez v1, :cond_0

    .line 37
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 40
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 41
    if-lez v1, :cond_1

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-direct {p0}, Lcom/htc/widget/ViewAnimator;->initViewAnimator()V

    .line 47
    return-void
.end method

.method private initViewAnimator()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    .line 140
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/htc/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 145
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->removeViewAt(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 154
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 155
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    if-lt v1, v0, :cond_2

    .line 159
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget v1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    if-ne v1, p1, :cond_0

    .line 162
    iget v1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/htc/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 172
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 177
    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/ViewAnimator;->removeViews(II)V

    .line 183
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/htc/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 279
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 2
    .parameter "whichChild"

    .prologue
    const/4 v0, 0x0

    .line 59
    iput p1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 60
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 61
    iput v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 67
    .local v0, hasFocus:Z
    :cond_1
    iget v1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/ViewAnimator;->showOnly(I)V

    .line 68
    if-eqz v0, :cond_2

    .line 70
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/widget/ViewAnimator;->requestFocus(I)Z

    .line 72
    :cond_2
    return-void

    .line 62
    .end local v0           #hasFocus:Z
    :cond_3
    if-gez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    goto :goto_0
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 254
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 255
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "inAnimation"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 218
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 267
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 268
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "outAnimation"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 242
    return-void
.end method

.method public showNext()V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 86
    return-void
.end method

.method showOnly(I)V
    .locals 6
    .parameter "childIndex"

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/ViewAnimator;->getChildCount()I

    move-result v1

    .line 104
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 105
    invoke-virtual {p0, v2}, Lcom/htc/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, child:Landroid/view/View;
    if-ne v2, p1, :cond_2

    .line 107
    iget-boolean v3, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/htc/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iput-boolean v5, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    .line 104
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 114
    iget-object v3, p0, Lcom/htc/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    :cond_3
    :goto_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_5

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_3

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2

    .line 123
    .end local v0           #child:Landroid/view/View;
    :cond_6
    return-void
.end method

.method public showPrevious()V
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 93
    return-void
.end method
