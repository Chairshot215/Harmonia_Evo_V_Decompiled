.class public Lcom/google/android/finsky/layout/EditorialPageHeader;
.super Landroid/widget/LinearLayout;
.source "EditorialPageHeader.java"


# instance fields
.field private mBottomStrip:Landroid/view/View;

.field private mHeader:Landroid/widget/TextView;

.field private mSubheader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialPageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mHeader:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialPageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mSubheader:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialPageHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mBottomStrip:Landroid/view/View;

    .line 37
    return-void
.end method

.method public showSeriesInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "subTitle"
    .parameter "backgroundColor"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mSubheader:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, antennaColor:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 50
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mSubheader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 51
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mBottomStrip:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mBottomStrip:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    :cond_0
    return-void

    .line 44
    .end local v0           #antennaColor:I
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mSubheader:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialPageHeader;->mSubheader:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
