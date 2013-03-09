.class public Lcom/google/android/finsky/layout/CellWithOverlay;
.super Landroid/widget/RelativeLayout;
.source "CellWithOverlay.java"


# instance fields
.field private mName:Lcom/google/android/finsky/layout/CellTitleOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 37
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CellWithOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/CellTitleOverlay;

    iput-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    .line 38
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
    .line 59
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    iget-object v1, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/CellTitleOverlay;->layout(IIII)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 46
    .local v2, fullWidth:I
    int-to-float v5, v2

    iget-object v6, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMinWidthPercent()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 47
    .local v4, minOverlayWidth:I
    int-to-float v5, v2

    iget-object v6, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMaxWidthPercent()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 48
    .local v3, maxOverlayWidth:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMeasuredWidth()I

    move-result v0

    .line 50
    .local v0, currOverlayWidth:I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 51
    .local v1, finalOverlayWidth:I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 53
    iget-object v5, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/CellTitleOverlay;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/layout/CellTitleOverlay;->measure(II)V

    .line 55
    return-void
.end method

.method protected setOverlayCaption(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2
    .parameter "doc"
    .parameter "bitmapLoader"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/CellTitleOverlay;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/CellWithOverlay;->mName:Lcom/google/android/finsky/layout/CellTitleOverlay;

    const/4 v1, -0x1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureItemBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 68
    return-void
.end method
