.class public Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;
.super Landroid/widget/ExpandableListView;
.source "RightIndicatorExpandaleListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 19
    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    .line 22
    iget-object v2, p0, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 23
    .local v0, density:F
    const/high16 v2, 0x426c

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 24
    .local v1, offset:I
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->getRight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setIndicatorBounds(II)V

    .line 25
    return-void
.end method
