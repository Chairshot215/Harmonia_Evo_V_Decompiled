.class public Lcom/google/android/finsky/layout/PostPurchaseSummary;
.super Landroid/widget/RelativeLayout;
.source "PostPurchaseSummary.java"


# instance fields
.field private mAddedToLibrary:Landroid/widget/TextView;

.field private mAddedToLibraryImage:Landroid/widget/ImageView;

.field private final mAlignButtons:Z

.field private mButtonContainer:Landroid/view/View;

.field private mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

.field private mTipperSticker:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v1, Lcom/android/vending/R$styleable;->PostPurchaseSummary:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAlignButtons:Z

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 4
    .parameter "doc"
    .parameter "bitmapLoader"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 72
    .local v0, backend:I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070273

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v2, -0x1

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 81
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTipperSticker:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {p1, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DocImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getLargeDetailsIconWidth(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibrary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibraryImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getAddedToLibraryDrawableId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTitle:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 58
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mTipperSticker:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 59
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    .line 60
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibrary:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAddedToLibraryImage:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PostPurchaseSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

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
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 96
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mAlignButtons:Z

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DocImageView;->getBottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DocImageView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/PostPurchaseSummary;->mThumbnail:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DocImageView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method
