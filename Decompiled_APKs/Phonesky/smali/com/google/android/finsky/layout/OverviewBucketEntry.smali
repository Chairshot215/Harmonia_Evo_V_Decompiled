.class public Lcom/google/android/finsky/layout/OverviewBucketEntry;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "OverviewBucketEntry.java"

# interfaces
.implements Lcom/google/android/finsky/layout/DocumentCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;
    }
.end annotation


# instance fields
.field protected mActionPack:Landroid/view/View;

.field protected mActionPackStub:Landroid/view/ViewStub;

.field protected mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

.field protected mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mHalfSeparatorThickness:I

.field private mIsLastRow:Z

.field protected mPrice:Landroid/widget/TextView;

.field protected mRating:Landroid/widget/RatingBar;

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSeparatorThickness:F

.field private mShowRight:Z

.field protected mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 44
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorThickness:F

    .line 68
    iget v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorThickness:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mHalfSeparatorThickness:I

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/OverviewBucketEntry;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V
    .locals 9
    .parameter "mainDocument"
    .parameter "document"
    .parameter "bitmapLoader"
    .parameter "isLastRow"
    .parameter "clickListener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    iput-object p2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 91
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 93
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 97
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    .line 98
    .local v1, docType:I
    const/16 v5, 0x10

    if-eq v1, v5, :cond_0

    const/16 v5, 0x11

    if-ne v1, v5, :cond_2

    :cond_0
    move v2, v4

    .line 100
    .local v2, isMagazine:Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 104
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setRating(F)V

    .line 105
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v5, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 111
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v6, -0x1

    invoke-static {p2, p3, v5, v6}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 112
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    iget-object v6, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p2, p3, v5, v6}, Lcom/google/android/finsky/utils/BadgeUtils;->configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 114
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-static {p2, v4, v5}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 116
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/layout/DocImageView;->setVisibility(I)V

    .line 117
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v5, p2, p3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 120
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    .line 122
    .local v0, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0, p5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void

    .end local v0           #descriptionStringId:I
    .end local v2           #isMagazine:Z
    :cond_2
    move v2, v3

    .line 98
    goto :goto_0

    .line 100
    .restart local v2       #isMagazine:Z
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 107
    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public configureActionPack(ILcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;I)V
    .locals 3
    .parameter "actionDrawableId"
    .parameter "onActionListener"
    .parameter "actionDescriptionId"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPackStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, actionImageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNextFocusRightId(I)V

    .line 140
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    new-instance v2, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;-><init>(Lcom/google/android/finsky/layout/OverviewBucketEntry;Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method public hideActionPack()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPack:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNextFocusRightId(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getWidth()I

    move-result v10

    .line 213
    .local v10, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getHeight()I

    move-result v8

    .line 215
    .local v8, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mHalfSeparatorThickness:I

    sub-int v9, v10, v0

    .line 217
    .local v9, rightX:I
    int-to-float v1, v9

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    .end local v9           #rightX:I
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    if-nez v0, :cond_1

    .line 221
    iget v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mHalfSeparatorThickness:I

    sub-int v7, v8, v0

    .line 222
    .local v7, bottomY:I
    int-to-float v3, v7

    int-to-float v4, v10

    int-to-float v5, v7

    iget-object v6, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 225
    .end local v7           #bottomY:I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    .line 79
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 81
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 83
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    .line 84
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mActionPackStub:Landroid/view/ViewStub;

    .line 85
    return-void
.end method

.method public setMockDocument(I)V
    .locals 4
    .parameter "backend"

    .prologue
    const/16 v3, 0x8

    .line 161
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0700f9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DocImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 173
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 175
    const/4 v0, 0x0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public setNoDocument()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 182
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DocImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 192
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DocImageView;->setVisibility(I)V

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mIsLastRow:Z

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    .line 200
    return-void
.end method

.method public setRightSeparatorVisibility(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mShowRight:Z

    .line 157
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->invalidate()V

    .line 158
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    return-void
.end method
