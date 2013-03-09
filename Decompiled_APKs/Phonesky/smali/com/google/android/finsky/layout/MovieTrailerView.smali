.class public Lcom/google/android/finsky/layout/MovieTrailerView;
.super Lcom/google/android/finsky/layout/YoutubeFrameView;
.source "MovieTrailerView.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCurtainCaptionView:Landroid/widget/TextView;

.field private mLastRequestedHeight:I

.field private mTrailerFrameUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/MovieTrailerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private loadTrailerFrameIfNecessary()V
    .locals 8

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    .line 59
    .local v7, width:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 60
    .local v5, height:I
    if-lez v7, :cond_0

    if-lez v5, :cond_0

    iget v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mLastRequestedHeight:I

    if-eq v5, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mTrailerFrameUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 64
    .local v6, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    .end local v6           #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v6       #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mTrailerFrameUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->requestLayout()V

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;->setTag(Ljava/lang/Object;)V

    .line 78
    iput v5, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mLastRequestedHeight:I

    goto :goto_0
.end method


# virtual methods
.method public load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .locals 0
    .parameter "bitmapLoader"
    .parameter "url"

    .prologue
    .line 51
    iput-object p2, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mTrailerFrameUrl:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 55
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->onFinishInflate()V

    .line 42
    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getWidth()I

    move-result v8

    .line 107
    .local v8, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getHeight()I

    move-result v0

    .line 108
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getPaddingRight()I

    move-result v4

    .line 110
    .local v4, paddingRight:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 111
    .local v2, heroMeasuredWidth:I
    sub-int v9, v8, v2

    sub-int/2addr v9, v4

    div-int/lit8 v3, v9, 0x2

    .line 112
    .local v3, imageLeft:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    add-int v11, v3, v2

    invoke-virtual {v9, v3, v10, v11, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 113
    invoke-direct {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->loadTrailerFrameIfNecessary()V

    .line 115
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 116
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 117
    .local v7, playMeasuredWidth:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 118
    .local v1, heroMeasuredHeight:I
    sub-int v9, v8, v7

    sub-int/2addr v9, v4

    div-int/lit8 v5, v9, 0x2

    .line 119
    .local v5, playImageLeft:I
    sub-int v9, v0, v1

    div-int/lit8 v6, v9, 0x2

    .line 120
    .local v6, playImageTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    add-int v10, v5, v7

    add-int v11, v6, v1

    invoke-virtual {v9, v5, v6, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 124
    .end local v1           #heroMeasuredHeight:I
    .end local v5           #playImageLeft:I
    .end local v6           #playImageTop:I
    .end local v7           #playMeasuredWidth:I
    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 125
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v0, v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 129
    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 130
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 132
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 84
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 85
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 88
    .local v1, availableWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 90
    .local v0, availableHeight:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 91
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getPaddingRight()I

    move-result v3

    .line 93
    .local v3, paddingRight:I
    sub-int v4, v1, v3

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 95
    .local v2, curtainWidthMeasureSpec:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->measure(II)V

    .line 98
    .end local v2           #curtainWidthMeasureSpec:I
    .end local v3           #paddingRight:I
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 101
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setCurtainCaption(Ljava/lang/String;)V
    .locals 2
    .parameter "curtainCaption"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    return-void
.end method
