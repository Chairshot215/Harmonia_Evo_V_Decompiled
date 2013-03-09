.class public Lcom/google/android/finsky/layout/ListingRow;
.super Landroid/widget/RelativeLayout;
.source "ListingRow.java"


# instance fields
.field private mExtra:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTopSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private hideIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingRow;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 64
    return-void
.end method


# virtual methods
.method public hideSeparator()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTopSeparator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mExtra:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mIcon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTopSeparator:Landroid/view/View;

    .line 47
    return-void
.end method

.method public populate(II)V
    .locals 1
    .parameter "titleId"
    .parameter "subtitleId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ListingRow;->hideIcon()V

    .line 74
    return-void
.end method

.method public populate(III)V
    .locals 1
    .parameter "titleId"
    .parameter "subtitleId"
    .parameter "iconId"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-void
.end method

.method public populate(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "titleId"
    .parameter "subtitle"
    .parameter "extra"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mExtra:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ListingRow;->hideIcon()V

    .line 82
    return-void
.end method

.method public populate(ILjava/lang/String;I)V
    .locals 1
    .parameter "titleId"
    .parameter "subtitle"
    .parameter "iconId"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    return-void
.end method

.method public populateAsHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "subtitle"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingRow;->mSubtitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ListingRow;->hideIcon()V

    .line 90
    return-void
.end method
