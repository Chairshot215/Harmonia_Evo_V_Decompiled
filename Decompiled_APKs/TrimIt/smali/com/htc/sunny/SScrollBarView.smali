.class public Lcom/htc/sunny/SScrollBarView;
.super Lcom/htc/sunny/SView;
.source "SScrollBarView.java"


# static fields
.field private static final MSG_HIDE_SCROLL_BAR:I = 0x0

.field private static final RENDER_FPS:I = 0x3c


# instance fields
.field private mDefaultscrollBarSize:I

.field private mFadingEdgeLength:I

.field private mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

.field private mLayoutChanged:Z

.field private mLayoutReady:Z

.field private mRect3DScrolledView:Landroid/graphics/Rect;

.field private mScrollBarDefaultDelayBeforeFade:I

.field private mScrollBarFadeDuration:I

.field private mScrollBarHeight:I

.field private mScrollBarLowBound:I

.field private mScrollBarRange:I

.field private mScrollBarSize:I

.field private mScrollBarUpBound:I

.field private mScrollBarWidth:I

.field private mUiHandler:Landroid/os/Handler;

.field private mVertical:Z

.field private mViewCurrentPos:I

.field private mViewRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 2
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 37
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mFadingEdgeLength:I

    .line 38
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarDefaultDelayBeforeFade:I

    .line 39
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarFadeDuration:I

    .line 40
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mDefaultscrollBarSize:I

    .line 42
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    .line 44
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarRange:I

    .line 45
    iput-boolean v1, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutReady:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    .line 51
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    .line 52
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mUiHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0}, Lcom/htc/sunny/SScrollBarView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 2
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bRenderOrder"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V

    .line 37
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mFadingEdgeLength:I

    .line 38
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarDefaultDelayBeforeFade:I

    .line 39
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarFadeDuration:I

    .line 40
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mDefaultscrollBarSize:I

    .line 42
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    .line 44
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarRange:I

    .line 45
    iput-boolean v1, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutReady:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    .line 51
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    .line 52
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mUiHandler:Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Lcom/htc/sunny/SScrollBarView;->init()V

    .line 66
    return-void
.end method

.method private generateScrollBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    iget-boolean v2, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutReady:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    if-nez v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/4 v1, 0x0

    .local v1, width:I
    const/4 v0, 0x0

    .line 241
    .local v0, height:I
    iget-boolean v2, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    if-ne v4, v2, :cond_2

    .line 242
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    .line 243
    iget v0, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 249
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    if-ne v4, v2, :cond_3

    .line 250
    const v2, 0x10804aa

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/htc/sunny/SScrollBarView;->setBackgroundImage(IIII)V

    .line 256
    :goto_2
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->cancelAnimation()V

    .line 257
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SScrollBarView;->setAlpha(I)V

    .line 258
    iput-boolean v3, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    goto :goto_0

    .line 245
    :cond_2
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 246
    iget v0, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    goto :goto_1

    .line 253
    :cond_3
    const v2, 0x10804a9

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/htc/sunny/SScrollBarView;->setBackgroundImage(IIII)V

    goto :goto_2
.end method

.method private init()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarDefaultDelayBeforeFade:I

    .line 71
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarFadeDuration:I

    .line 72
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SScrollBarView;->mDefaultscrollBarSize:I

    .line 74
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 75
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarFadeDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 76
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SAnimationController;->setFillAfter(Z)V

    .line 78
    new-instance v0, Lcom/htc/sunny/SScrollBarView$1;

    iget-object v1, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SScrollBarView$1;-><init>(Lcom/htc/sunny/SScrollBarView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mUiHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method


# virtual methods
.method public awakenScrollBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SScrollBarView;->setAlpha(I)V

    .line 228
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->cancelAnimation()V

    .line 229
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mUiHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarDefaultDelayBeforeFade:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    return-void
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 98
    iget-boolean v0, p0, Lcom/htc/sunny/SScrollBarView;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->hideScrollBar()V

    goto :goto_0
.end method

.method public enableVerticalDisplay(Z)V
    .locals 1
    .parameter "bVertical"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    if-ne v0, p1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    .line 223
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->invalidate3DView()V

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    .line 105
    return-void
.end method

.method public hideScrollBar()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mHiddeScrollBarAnimation:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SScrollBarView;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 235
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V

    .line 111
    invoke-direct {p0}, Lcom/htc/sunny/SScrollBarView;->generateScrollBar()V

    .line 112
    return-void
.end method

.method public setCurrentViewPosition(I)V
    .locals 5
    .parameter "nCurrent"

    .prologue
    const/4 v4, 0x0

    .line 174
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    if-eq v1, p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->awakenScrollBar()V

    .line 178
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    .line 180
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    if-gtz v1, :cond_1

    .line 201
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    if-ne v1, v2, :cond_4

    .line 183
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    iget v2, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarRange:I

    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 184
    .local v0, nPos:F
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    .line 185
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    int-to-float v0, v1

    .line 189
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1, v0, v4}, Lcom/htc/sunny/SScrollBarView;->setPosition(FFF)V

    .line 200
    :goto_2
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->invalidate3DView()V

    goto :goto_0

    .line 186
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 187
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    int-to-float v0, v1

    goto :goto_1

    .line 191
    .end local v0           #nPos:F
    :cond_4
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    iget v2, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarRange:I

    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v0, v1

    .line 192
    .restart local v0       #nPos:F
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    .line 193
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    int-to-float v0, v1

    .line 197
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/htc/sunny/SScrollBarView;->setPosition(FFF)V

    goto :goto_2

    .line 194
    :cond_6
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 195
    iget v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    int-to-float v0, v1

    goto :goto_3
.end method

.method public setScrollViewRange(I)V
    .locals 8
    .parameter "nRange"

    .prologue
    const v7, 0x10804aa

    const v5, 0x10804a9

    const/4 v6, 0x1

    .line 115
    iput p1, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, nViewSize:I
    iget-boolean v3, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    if-ne v6, v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 124
    :goto_0
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    if-lez v3, :cond_0

    if-gtz v1, :cond_2

    .line 170
    :cond_0
    :goto_1
    return-void

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    goto :goto_0

    .line 126
    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny/SScrollBarView;->mVertical:Z

    if-ne v6, v3, :cond_6

    .line 128
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 129
    .local v2, verticalScrollBar:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, horizonatalScrollBar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    .line 131
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    .line 133
    int-to-float v3, v1

    add-int v4, p1, v1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 134
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    if-ge v3, v4, :cond_3

    .line 135
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 137
    :cond_3
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    if-le v3, v1, :cond_4

    .line 138
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 140
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    .line 141
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    .line 142
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarRange:I

    .line 162
    :goto_2
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SScrollBarView;->setCurrentViewPosition(I)V

    .line 164
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    if-lez v3, :cond_5

    .line 165
    iput-boolean v6, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    .line 166
    iput-boolean v6, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutReady:Z

    .line 169
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->invalidate3DView()V

    goto :goto_1

    .line 145
    .end local v0           #horizonatalScrollBar:Landroid/graphics/drawable/Drawable;
    .end local v2           #verticalScrollBar:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 146
    .restart local v2       #verticalScrollBar:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .restart local v0       #horizonatalScrollBar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    .line 148
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarHeight:I

    .line 150
    int-to-float v3, v1

    add-int v4, p1, v1

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 151
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    if-ge v3, v4, :cond_7

    .line 152
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarWidth:I

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 154
    :cond_7
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    if-le v3, v1, :cond_8

    .line 155
    iput v1, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    .line 157
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    .line 158
    iget-object v3, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    .line 159
    iget v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarUpBound:I

    iget v4, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarLowBound:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny/SScrollBarView;->mScrollBarRange:I

    goto :goto_2
.end method

.method public setScrolledViewBoundary(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect3DScrolledView"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView;->mRect3DScrolledView:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget v0, p0, Lcom/htc/sunny/SScrollBarView;->mViewRange:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 209
    iget v0, p0, Lcom/htc/sunny/SScrollBarView;->mViewCurrentPos:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SScrollBarView;->setCurrentViewPosition(I)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SScrollBarView;->mLayoutChanged:Z

    .line 213
    invoke-virtual {p0}, Lcom/htc/sunny/SScrollBarView;->invalidate3DView()V

    goto :goto_0
.end method
