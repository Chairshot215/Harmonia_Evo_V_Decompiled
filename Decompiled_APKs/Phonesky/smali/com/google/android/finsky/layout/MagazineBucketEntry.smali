.class public Lcom/google/android/finsky/layout/MagazineBucketEntry;
.super Landroid/widget/RelativeLayout;
.source "MagazineBucketEntry.java"

# interfaces
.implements Lcom/google/android/finsky/layout/DocumentCell;


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field private mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mBoundDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mCoverMaxWidth:I

.field private final mCoverMinMargin:I

.field protected mImageView:Lcom/google/android/finsky/layout/DocImageView;

.field protected final mRatio:F

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const v1, 0x3fb33333

    iput v1, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mRatio:F

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMaxWidth:I

    .line 56
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMinMargin:I

    .line 57
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V
    .locals 12
    .parameter "mainDocument"
    .parameter "document"
    .parameter "bitmapLoader"
    .parameter "isLastRow"
    .parameter "clickListener"

    .prologue
    .line 164
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBoundDocument:Lcom/google/android/finsky/api/model/Document;

    if-ne v7, p2, :cond_0

    .line 215
    :goto_0
    return-void

    .line 167
    :cond_0
    iput-object p2, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBoundDocument:Lcom/google/android/finsky/api/model/Document;

    .line 174
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DocImageView;->delayLoadingUntilLayout()V

    .line 175
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v7, p2, p3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 176
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DocImageView;->requestLayout()V

    .line 178
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, docTitle:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, mainTitle:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x8

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    .end local v6           #mainTitle:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 189
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v5

    .line 190
    .local v5, firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/4 v7, 0x6

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, badgeAnnotationUrl:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 193
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 195
    .local v2, badgeSize:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7, p3, v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    .line 197
    .end local v2           #badgeSize:I
    :cond_2
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 201
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 210
    .end local v1           #badgeAnnotationUrl:Ljava/lang/String;
    .end local v5           #firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v3

    .line 212
    .local v3, descriptionStringId:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 182
    .end local v3           #descriptionStringId:I
    .restart local v6       #mainTitle:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 206
    .end local v6           #mainTitle:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v7, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v9, 0x8

    if-ne v7, v9, :cond_6

    const/4 v7, 0x4

    :goto_3
    invoke-virtual {v8, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v7, 0x8

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    .line 64
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 67
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    .line 68
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getWidth()I

    move-result v1

    .line 130
    .local v1, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getHeight()I

    move-result v0

    .line 133
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getPaddingBottom()I

    move-result v4

    sub-int v3, v0, v4

    .line 134
    .local v3, y:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DocImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v2, v4, 0x2

    .line 136
    .local v2, x:I
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 137
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->layout(IIII)V

    .line 138
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 142
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 144
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 148
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 149
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 152
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/DocImageView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/DocImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v2, v5, v6, v3}, Lcom/google/android/finsky/layout/DocImageView;->layout(IIII)V

    .line 155
    iget-object v4, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 156
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    .local v0, availableWidth:I
    iget v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMaxWidth:I

    iget v11, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mCoverMinMargin:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v0, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 75
    .local v8, maxCoverWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getPaddingTop()I

    move-result v3

    .line 77
    .local v3, height:I
    int-to-float v10, v8

    const v11, 0x3fb33333

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 78
    .local v7, mMaxImageHeight:I
    const/high16 v10, 0x4000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 79
    .local v6, imageWidthSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/DocImageView;->isLoaded()Z

    move-result v10

    if-nez v10, :cond_3

    .line 82
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    const/high16 v11, 0x4000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v6, v11}, Lcom/google/android/finsky/layout/DocImageView;->measure(II)V

    .line 103
    :goto_0
    add-int/2addr v3, v7

    .line 105
    const/high16 v10, -0x8000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 106
    .local v9, textWidthSpec:I
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 107
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/widget/TextView;->measure(II)V

    .line 108
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v3, v10

    .line 110
    :cond_0
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 111
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/widget/TextView;->measure(II)V

    .line 112
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v3, v10

    .line 114
    :cond_1
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/DecoratedTextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 115
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/google/android/finsky/layout/DecoratedTextView;->measure(II)V

    .line 116
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v3, v10

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->getPaddingBottom()I

    move-result v10

    add-int/2addr v3, v10

    .line 121
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    const/high16 v11, 0x4000

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, p1, v11}, Landroid/view/View;->measure(II)V

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0, v10, v3}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setMeasuredDimension(II)V

    .line 125
    return-void

    .line 85
    .end local v9           #textWidthSpec:I
    :cond_3
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/DocImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 86
    .local v4, imageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 89
    .local v5, imageRatio:F
    const v10, 0x3fb33333

    cmpl-float v10, v5, v10

    if-lez v10, :cond_4

    .line 91
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    .local v1, coverHeight:I
    int-to-float v10, v1

    div-float/2addr v10, v5

    float-to-int v2, v10

    .line 98
    .local v2, coverWidth:I
    :goto_1
    iget-object v10, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    const/high16 v11, 0x4000

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/finsky/layout/DocImageView;->measure(II)V

    goto/16 :goto_0

    .line 95
    .end local v1           #coverHeight:I
    .end local v2           #coverWidth:I
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 96
    .restart local v2       #coverWidth:I
    int-to-float v10, v2

    mul-float/2addr v10, v5

    float-to-int v1, v10

    .restart local v1       #coverHeight:I
    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/layout/MagazineBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method
