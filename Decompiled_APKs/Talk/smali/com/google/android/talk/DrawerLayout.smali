.class public Lcom/google/android/talk/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/DrawerLayout$LayoutParams;,
        Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;
    }
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mAnimationRunning:Z

.field private mAnimationStartTime:J

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mContractAnimationDuration:J

.field private mDefaultToExpandedMode:Z

.field private mDividerWidth:I

.field private mExpandAnimationDuration:J

.field private mExpandStateChangedListener:Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;

.field private mExpandedState:Z

.field private mLeftView:Landroid/view/View;

.field private mResizeLeftViewDuringAnimation:Z

.field private mRightView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/DrawerLayout;->initializeFromAttributes(Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    invoke-direct {p0, p2}, Lcom/google/android/talk/DrawerLayout;->initializeFromAttributes(Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-direct {p0, p2}, Lcom/google/android/talk/DrawerLayout;->initializeFromAttributes(Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method private animate(JII)V
    .locals 4
    .parameter "duration"
    .parameter "current"
    .parameter "target"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "animate"

    new-array v1, v1, [I

    aput p3, v1, v2

    aput p4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 181
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    iput v2, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationCount:I

    .line 187
    iput-boolean v3, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationRunning:Z

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationStartTime:J

    .line 189
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 190
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [I

    aput p3, v1, v2

    aput p4, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method private computeWidthTarget()I
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/talk/DrawerLayout;->getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, params:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    iget v1, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->contractedWidth:I

    return v1
.end method

.method private getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;

    return-object v0
.end method

.method private initializeFromAttributes(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/talk/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/talk/R$styleable;->DrawerLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandAnimationDuration:J

    .line 105
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/talk/DrawerLayout;->mContractAnimationDuration:J

    .line 107
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandedState:Z

    iput-boolean v1, p0, Lcom/google/android/talk/DrawerLayout;->mDefaultToExpandedMode:Z

    .line 109
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/DrawerLayout;->mResizeLeftViewDuringAnimation:Z

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method private logV(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 455
    const-string v0, "DrawerLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method private onExpandStateChanged()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 314
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mExpandStateChangedListener:Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mExpandStateChangedListener:Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;

    invoke-interface {v0, p0}, Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;->onExpandStateCompleted(Lcom/google/android/talk/DrawerLayout;)V

    .line 317
    :cond_0
    return-void
.end method

.method private onExpandStateChanging(Z)V
    .locals 1
    .parameter "expanding"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mExpandStateChangedListener:Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mExpandStateChangedListener:Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;->onExpandStateStarted(Lcom/google/android/talk/DrawerLayout;Z)V

    .line 310
    :cond_0
    return-void
.end method

.method private setAnimate(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 170
    iget v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationCount:I

    .line 171
    return-void
.end method

.method private setDividerWidth(I)Z
    .locals 1
    .parameter "width"

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/talk/DrawerLayout;->mDividerWidth:I

    if-eq v0, p1, :cond_0

    .line 161
    iput p1, p0, Lcom/google/android/talk/DrawerLayout;->mDividerWidth:I

    .line 162
    invoke-virtual {p0}, Lcom/google/android/talk/DrawerLayout;->requestLayout()V

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/talk/DrawerLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 451
    new-instance v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/talk/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/talk/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public gotoDefaultExpandedState()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/talk/DrawerLayout;->mDefaultToExpandedMode:Z

    invoke-virtual {p0, v0}, Lcom/google/android/talk/DrawerLayout;->setExpanded(Z)V

    .line 122
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/talk/DrawerLayout;->mExpandedState:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 326
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animation frames count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/DrawerLayout;->logV(Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lcom/google/android/talk/DrawerLayout;->onExpandStateChanged()V

    .line 332
    iput-boolean v5, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationRunning:Z

    .line 334
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 337
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 340
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationCount:I

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationStartTime:J

    .line 346
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 349
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/talk/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must have exactly two children"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/talk/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    .line 136
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 146
    const v1, 0x7f100025

    invoke-virtual {p0, v1}, Lcom/google/android/talk/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, b:Landroid/view/View;
    new-instance v1, Lcom/google/android/talk/DrawerLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/DrawerLayout$1;-><init>(Lcom/google/android/talk/DrawerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-direct {p0}, Lcom/google/android/talk/DrawerLayout;->onExpandStateChanged()V

    .line 154
    iget-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/talk/DrawerLayout;->getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/google/android/talk/DrawerLayout$LayoutParams;->contractedWidth:I

    invoke-direct {p0, v1}, Lcom/google/android/talk/DrawerLayout;->setDividerWidth(I)Z

    .line 155
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    .line 280
    iget-object v4, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 281
    .local v1, leftWidth:I
    iget-object v4, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 283
    .local v3, rightWidth:I
    iget-object v4, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 285
    .local v0, height:I
    iget-object v4, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 289
    iget-object v4, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/DrawerLayout$LayoutParams;

    .line 290
    .local v2, lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    iget-object v4, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    iget v5, p0, Lcom/google/android/talk/DrawerLayout;->mDividerWidth:I

    iget v6, v2, Lcom/google/android/talk/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/talk/DrawerLayout;->mDividerWidth:I

    add-int/2addr v6, v3

    iget v7, v2, Lcom/google/android/talk/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v8, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 291
    return-void
.end method

.method public onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    .line 226
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 227
    .local v4, myWidth:I
    iget-object v9, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/google/android/talk/DrawerLayout;->getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v0

    .line 228
    .local v0, leftParams:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    iget-object v9, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-direct {p0, v9}, Lcom/google/android/talk/DrawerLayout;->getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v5

    .line 229
    .local v5, rightParams:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/talk/DrawerLayout;->getWidth()I

    move-result v9

    if-eq v4, v9, :cond_2

    .line 230
    iget v9, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    if-nez v9, :cond_1

    .line 231
    iget v1, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 232
    .local v1, leftWeight:F
    iget v6, v5, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 236
    .local v6, rightWeight:F
    add-float v8, v1, v6

    .line 237
    .local v8, totalWeight:F
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_0

    .line 238
    const/high16 v8, 0x3f80

    .line 240
    :cond_0
    div-float v9, v1, v8

    int-to-float v10, v4

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    .line 242
    .end local v1           #leftWeight:F
    .end local v6           #rightWeight:F
    .end local v8           #totalWeight:F
    :cond_1
    iget v9, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    iget v10, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    .line 245
    iget-boolean v9, p0, Lcom/google/android/talk/DrawerLayout;->mDefaultToExpandedMode:Z

    if-eqz v9, :cond_3

    .line 246
    iget v9, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    sub-int v9, v4, v9

    iput v9, v5, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    .line 250
    :goto_0
    iget v9, v5, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    iget v10, v5, Lcom/google/android/talk/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iput v9, v5, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    .line 252
    invoke-direct {p0}, Lcom/google/android/talk/DrawerLayout;->computeWidthTarget()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/talk/DrawerLayout;->setDividerWidth(I)Z

    .line 256
    :cond_2
    iget-boolean v9, p0, Lcom/google/android/talk/DrawerLayout;->mResizeLeftViewDuringAnimation:Z

    if-eqz v9, :cond_4

    .line 259
    iget v2, p0, Lcom/google/android/talk/DrawerLayout;->mDividerWidth:I

    .line 268
    .local v2, leftWidth:I
    :goto_1
    or-int v3, v2, v11

    .line 269
    .local v3, leftWidthSpec:I
    iget-object v9, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v9, v3, p2}, Landroid/view/View;->measure(II)V

    .line 271
    iget-object v9, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    or-int v7, v9, v11

    .line 272
    .local v7, rightWidthSpec:I
    iget-object v9, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v9, v7, p2}, Landroid/view/View;->measure(II)V

    .line 274
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/google/android/talk/DrawerLayout;->setMeasuredDimension(II)V

    .line 276
    return-void

    .line 248
    .end local v2           #leftWidth:I
    .end local v3           #leftWidthSpec:I
    .end local v7           #rightWidthSpec:I
    :cond_3
    iget v9, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->contractedWidth:I

    sub-int v9, v4, v9

    iput v9, v5, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    goto :goto_0

    .line 260
    :cond_4
    iget-boolean v9, p0, Lcom/google/android/talk/DrawerLayout;->mExpandedState:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/google/android/talk/DrawerLayout;->mAnimationRunning:Z

    if-nez v9, :cond_5

    .line 263
    iget v2, v0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->contractedWidth:I

    .restart local v2       #leftWidth:I
    goto :goto_1

    .line 266
    .end local v2           #leftWidth:I
    :cond_5
    iget-object v9, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .restart local v2       #leftWidth:I
    goto :goto_1
.end method

.method public setDefaultToExpanded(Z)V
    .locals 0
    .parameter "expanded"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/google/android/talk/DrawerLayout;->mDefaultToExpandedMode:Z

    .line 117
    invoke-virtual {p0}, Lcom/google/android/talk/DrawerLayout;->requestLayout()V

    .line 118
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .parameter "expanded"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/talk/DrawerLayout;->setExpandedState(ZZ)V

    .line 194
    return-void
.end method

.method public setExpandedState(ZZ)V
    .locals 4
    .parameter "expanded"
    .parameter "initialize"

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-boolean v1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandedState:Z

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandedState:Z

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/talk/DrawerLayout;->onExpandStateChanging(Z)V

    .line 203
    iget-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/talk/DrawerLayout;->getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/google/android/talk/DrawerLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/google/android/talk/DrawerLayout;->mLeftView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/google/android/talk/DrawerLayout;->getLayoutParams(Landroid/view/View;)Lcom/google/android/talk/DrawerLayout$LayoutParams;

    move-result-object v2

    iget v2, v2, Lcom/google/android/talk/DrawerLayout$LayoutParams;->contractedWidth:I

    sub-int v0, v1, v2

    .line 204
    .local v0, delta:I
    if-nez p2, :cond_2

    .line 207
    iget-object v1, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-wide v1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandAnimationDuration:J

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/talk/DrawerLayout;->animate(JII)V

    goto :goto_0

    .line 212
    :cond_1
    iget-wide v1, p0, Lcom/google/android/talk/DrawerLayout;->mContractAnimationDuration:J

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/talk/DrawerLayout;->animate(JII)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/DrawerLayout;->computeWidthTarget()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/DrawerLayout;->setDividerWidth(I)Z

    .line 216
    iget-object v2, p0, Lcom/google/android/talk/DrawerLayout;->mRightView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandedState:Z

    if-eqz v1, :cond_3

    int-to-float v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setOnExpandStateChangedListener(Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/talk/DrawerLayout;->mExpandStateChangedListener:Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;

    .line 301
    if-eqz p1, :cond_0

    .line 302
    invoke-interface {p1, p0}, Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;->onExpandStateCompleted(Lcom/google/android/talk/DrawerLayout;)V

    .line 304
    :cond_0
    return-void
.end method
