.class public Lcom/google/android/finsky/layout/HeroGraphicView;
.super Lcom/google/android/finsky/layout/YoutubeFrameView;
.source "HeroGraphicView.java"


# instance fields
.field private mMaxHeight:I

.field private mRestrictHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v1, Lcom/android/vending/R$styleable;->HeroGraphicView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    .line 46
    return-void
.end method


# virtual methods
.method public bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .locals 2
    .parameter "doc"
    .parameter "navigationManager"
    .parameter "usePromoImage"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/HeroGraphicView$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/android/finsky/layout/HeroGraphicView$1;-><init>(Lcom/google/android/finsky/layout/HeroGraphicView;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public getHeightRestriction()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    return v0
.end method

.method public hideAccessibilityOverlay()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V
    .locals 7
    .parameter "bitmapLoader"
    .parameter "doc"
    .parameter "url"
    .parameter "restrictHeight"

    .prologue
    const/4 v4, 0x0

    .line 53
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mRestrictHeight:Z

    .line 54
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .local v6, height:I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v2, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p1

    move-object v1, p3

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getWidth()I

    move-result v7

    .line 136
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getHeight()I

    move-result v0

    .line 137
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getPaddingRight()I

    move-result v5

    .line 138
    .local v5, paddingRight:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 139
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 140
    .local v2, heroMeasuredWidth:I
    sub-int v8, v7, v2

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 141
    .local v3, imageLeft:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    add-int v10, v3, v2

    invoke-virtual {v8, v3, v9, v10, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 144
    .end local v2           #heroMeasuredWidth:I
    .end local v3           #imageLeft:I
    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 145
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 146
    .local v6, playMeasuredWidth:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 147
    .local v1, heroMeasuredHeight:I
    sub-int v8, v7, v6

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 148
    .restart local v3       #imageLeft:I
    sub-int v8, v0, v1

    div-int/lit8 v4, v8, 0x2

    .line 149
    .local v4, imageTop:I
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    add-int v9, v3, v6

    add-int v10, v4, v1

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 153
    .end local v1           #heroMeasuredHeight:I
    .end local v3           #imageLeft:I
    .end local v4           #imageTop:I
    .end local v6           #playMeasuredWidth:I
    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 154
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 156
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    .line 93
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 94
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v10, p1, p2}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 97
    .local v0, availableWidth:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 98
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0, v0, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    .line 131
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 103
    .local v4, imWidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 104
    .local v3, imHeight:I
    mul-int v10, v0, v3

    div-int v6, v10, v4

    .line 106
    .local v6, scaledHeight:I
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 107
    .local v7, scaledHeightSpec:I
    iget-boolean v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mRestrictHeight:Z

    if-eqz v10, :cond_2

    .line 108
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    if-gt v6, v10, :cond_1

    .line 109
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, p1, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 110
    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 112
    :cond_1
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    mul-int/2addr v10, v4

    div-int v8, v10, v3

    .line 113
    .local v8, scaledWidth:I
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 115
    .local v9, scaledWidthSpec:I
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 117
    .local v5, maxHeightSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 118
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-virtual {p0, v0, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 121
    .end local v5           #maxHeightSpec:I
    .end local v8           #scaledWidth:I
    .end local v9           #scaledWidthSpec:I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v6, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->requestLayout()V

    .line 125
    :cond_3
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 127
    .local v1, availableWidthSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v1, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 128
    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
