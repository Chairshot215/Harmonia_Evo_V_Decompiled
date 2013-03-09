.class public Lcom/google/android/finsky/layout/HorizontalStrip;
.super Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.source "HorizontalStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;,
        Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field protected final mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private mEdgeFadeColor:I

.field private mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

.field private final mIsInDoubleColumnLayout:Z

.field protected final mScreenScaleFactor:F

.field private mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v2, Lcom/android/vending/R$styleable;->HorizontalStrip:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    new-instance v2, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    .line 73
    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    .line 74
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    .line 75
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->setWillNotDraw(Z)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    return-void
.end method

.method private getChildHeight(I)I
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V

    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v0

    return v0
.end method

.method private getChildWidth(I)I
    .locals 3
    .parameter "childIndex"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;F)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v0

    return v0
.end method

.method private getTotalChildWidth(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 234
    .local v0, width:I
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 236
    :cond_1
    iget v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v0, v1

    .line 238
    :cond_2
    return v0
.end method

.method private recreateChildViews()V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->removeAllViews()V

    .line 99
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, childView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mChildBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->addView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    goto :goto_0
.end method

.method private syncChildViews()V
    .locals 6

    .prologue
    .line 113
    const/4 v2, 0x1

    .line 114
    .local v2, hasAllImages:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 115
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, child:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 118
    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #child:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    :cond_2
    instance-of v5, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 125
    check-cast v4, Lcom/google/android/finsky/layout/VideoFrame;

    .line 126
    .local v4, videoFrame:Lcom/google/android/finsky/layout/VideoFrame;
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v4, v1}, Lcom/google/android/finsky/layout/VideoFrame;->configurePreviewWithFlatOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 131
    .end local v0           #child:Landroid/view/View;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #videoFrame:Lcom/google/android/finsky/layout/VideoFrame;
    :cond_3
    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    .line 134
    :cond_4
    return-void
.end method


# virtual methods
.method protected getLeftEdgeOfChildOnLeft(F)F
    .locals 4
    .parameter "xOffset"

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, result:I
    const/4 v0, 0x0

    .line 208
    .local v0, currLeft:I
    const/4 v1, 0x0

    .line 209
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 210
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getTotalChildWidth(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 211
    int-to-float v3, v0

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    .line 220
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 221
    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v2, v3

    .line 223
    :cond_1
    int-to-float v3, v2

    return v3

    .line 214
    :cond_2
    move v2, v0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getLeftEdgeOfChildOnRight(F)F
    .locals 4
    .parameter "xOffset"

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, result:I
    const/4 v0, 0x0

    .line 245
    .local v0, currLeft:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 246
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getTotalChildWidth(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 247
    move v2, v0

    .line 248
    int-to-float v3, v0

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    .line 255
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-eqz v3, :cond_1

    .line 256
    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v2, v3

    .line 258
    :cond_1
    int-to-float v3, v2

    return v3

    .line 245
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v2

    .line 269
    .local v2, scrollPosition:F
    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 272
    :cond_0
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    .line 280
    :goto_0
    return v3

    .line 275
    :cond_1
    neg-float v1, v2

    .line 276
    .local v1, pixelsBeyondLeft:F
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 277
    .local v0, fadeLength:I
    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 278
    const/high16 v3, 0x3f80

    goto :goto_0

    .line 280
    :cond_2
    int-to-float v3, v0

    div-float v3, v1, v3

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 291
    .local v1, pixelsBeyondRight:F
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    .line 298
    :goto_0
    return v2

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 295
    .local v0, fadeLength:I
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 296
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 298
    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    goto :goto_0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V

    .line 340
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 175
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v5, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    sub-int v2, p5, p3

    .line 180
    .local v2, h:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 181
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getPaddingLeft()I

    move-result v4

    .line 182
    .local v4, x:I
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    .line 185
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 186
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 188
    .local v1, childWidth:I
    const/4 v5, 0x0

    add-int v6, v4, v1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 189
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 190
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    :cond_3
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 194
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v5, :cond_0

    .line 196
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    .line 198
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 140
    .local v5, stripHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 141
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 143
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    .line 144
    .local v2, childWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v1

    .line 145
    .local v1, childHeight:I
    int-to-float v6, v5

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 146
    .local v4, scalingFactor:F
    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 149
    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v2, v6

    .line 151
    :cond_0
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 140
    .end local v1           #childHeight:I
    .end local v4           #scalingFactor:F
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v2           #childWidth:I
    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasImageDimensionAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    .line 156
    .restart local v2       #childWidth:I
    :goto_2
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 154
    .end local v2           #childWidth:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 160
    .end local v0           #child:Landroid/view/View;
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/layout/HorizontalStrip;->setMeasuredDimension(II)V

    .line 161
    return-void
.end method

.method protected onTouchEventTriggeredTap(F)Z
    .locals 5
    .parameter "x"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/HorizontalStrip;->findViewIndexAtX(F)I

    move-result v1

    .line 312
    .local v1, tappedIndex:I
    if-gez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 318
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    if-eqz v4, :cond_2

    .line 319
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toImageIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;->onImageChildViewTap(I)V

    move v2, v3

    .line 320
    goto :goto_0

    .line 323
    :cond_2
    instance-of v4, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    if-eqz v4, :cond_0

    .line 324
    iget-object v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->toVideoIndex(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;->onVideoChildViewTap(I)V

    move v2, v3

    .line 325
    goto :goto_0
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v1, Lcom/google/android/finsky/layout/HorizontalStrip$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/HorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    .line 94
    return-void
.end method

.method public setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mImageChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;

    .line 303
    return-void
.end method

.method public setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mVideoChildTappedListener:Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;

    .line 307
    return-void
.end method
