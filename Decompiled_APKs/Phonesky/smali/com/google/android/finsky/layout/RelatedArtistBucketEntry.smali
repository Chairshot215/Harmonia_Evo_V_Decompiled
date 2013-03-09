.class public Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;
.super Landroid/view/ViewGroup;
.source "RelatedArtistBucketEntry.java"

# interfaces
.implements Lcom/google/android/finsky/layout/DocumentCell;


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field private final mHalfSeparatorThickness:I

.field private mImageView:Lcom/google/android/finsky/layout/DocImageView;

.field private mIsLastRow:Z

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSeparatorThickness:F

.field private mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v3, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mIsLastRow:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorThickness:F

    .line 48
    iget v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorThickness:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mHalfSeparatorThickness:I

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->setWillNotDraw(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "mainDocument"
    .parameter "document"
    .parameter "bitmapLoader"
    .parameter "isLastRow"
    .parameter "clickListener"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureItemBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mIsLastRow:Z

    .line 101
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->getWidth()I

    move-result v8

    .line 106
    .local v8, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->getHeight()I

    move-result v7

    .line 108
    .local v7, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mIsLastRow:Z

    if-nez v0, :cond_0

    .line 109
    iget v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mHalfSeparatorThickness:I

    sub-int v6, v7, v0

    .line 110
    .local v6, bottomY:I
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v8

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    .end local v6           #bottomY:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 60
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    .line 61
    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 62
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    .line 63
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DocImageView;->getMeasuredWidth()I

    move-result v0

    .line 83
    .local v0, imageWidth:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DocImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v4, v4, v0, v2}, Lcom/google/android/finsky/layout/DocImageView;->layout(IIII)V

    .line 84
    iget-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->layout(IIII)V

    .line 86
    iget-object v1, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 88
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 68
    .local v2, width:I
    div-int/lit8 v0, v2, 0x4

    .line 70
    .local v0, height:I
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 72
    .local v1, heightSpec:I
    iget-object v3, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    div-int/lit8 v4, v2, 0x2

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/finsky/layout/DocImageView;->measure(II)V

    .line 74
    iget-object v3, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mTitleView:Lcom/google/android/finsky/layout/DecoratedTextView;

    div-int/lit8 v4, v2, 0x2

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->measure(II)V

    .line 75
    iget-object v3, p0, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v3, p1, v1}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {p0, v2, v0}, Lcom/google/android/finsky/layout/RelatedArtistBucketEntry;->setMeasuredDimension(II)V

    .line 78
    return-void
.end method
