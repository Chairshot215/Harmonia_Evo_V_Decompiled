.class public Lcom/google/android/finsky/layout/GenericContentRow;
.super Landroid/widget/LinearLayout;
.source "GenericContentRow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 25
    const v3, 0x7f080151

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GenericContentRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, arrow:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 30
    .local v1, arrowHeight:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GenericContentRow;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GenericContentRow;->getPaddingBottom()I

    move-result v4

    sub-int v2, v3, v4

    .line 31
    .local v2, bottom:I
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method
