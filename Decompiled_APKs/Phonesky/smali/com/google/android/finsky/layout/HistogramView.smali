.class public Lcom/google/android/finsky/layout/HistogramView;
.super Landroid/widget/LinearLayout;
.source "HistogramView.java"


# instance fields
.field private mAverageBox:Landroid/view/View;

.field private mAverageValue:Landroid/widget/TextView;

.field private mFloatFormatter:Ljava/text/NumberFormat;

.field private mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

.field private mIntegerFormatter:Ljava/text/NumberFormat;

.field private mRatingBar:Landroid/widget/RatingBar;

.field private mRatingCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/HistogramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mFloatFormatter:Ljava/text/NumberFormat;

    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mFloatFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mFloatFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 43
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mIntegerFormatter:Ljava/text/NumberFormat;

    .line 44
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;)V
    .locals 4
    .parameter "doc"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasReviewHistogramData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "No histogram data received from server"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HistogramView;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HistogramView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mRatingCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mIntegerFormatter:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mFloatFormatter:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingHistogram()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HistogramTable;->setHistogram([I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const v2, 0x7f08020b

    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 50
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HistogramView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageBox:Landroid/view/View;

    .line 51
    const v1, 0x7f080210

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HistogramView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HistogramTable;

    iput-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    .line 52
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/HistogramView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .local v0, averageBox:Landroid/widget/LinearLayout;
    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageValue:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f08020e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mRatingBar:Landroid/widget/RatingBar;

    .line 55
    const v1, 0x7f08020f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/layout/HistogramView;->mRatingCount:Landroid/widget/TextView;

    .line 56
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
    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramView;->getHeight()I

    move-result v1

    .line 91
    .local v1, height:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageBox:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 92
    .local v0, averageBoxMeasuredWidth:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/HistogramTable;->getMeasuredWidth()I

    move-result v2

    .line 94
    .local v2, histogramTableMeasuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramView;->getPaddingLeft()I

    move-result v3

    .line 95
    .local v3, left:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramView;->getPaddingTop()I

    move-result v4

    .line 96
    .local v4, top:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageBox:Landroid/view/View;

    add-int v6, v3, v0

    add-int v7, v4, v1

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 97
    add-int/2addr v3, v0

    .line 98
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    add-int v6, v3, v2

    add-int v7, v4, v1

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/google/android/finsky/layout/HistogramTable;->layout(IIII)V

    .line 99
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 77
    iget-object v2, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/HistogramTable;->getMeasuredWidth()I

    move-result v1

    .line 78
    .local v1, histogramTableMeasuredWidth:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/HistogramTable;->getMaxWidth()I

    move-result v0

    .line 79
    .local v0, histogramTableMaxWidth:I
    if-le v1, v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/HistogramTable;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/layout/HistogramTable;->measure(II)V

    .line 85
    :cond_0
    return-void
.end method
