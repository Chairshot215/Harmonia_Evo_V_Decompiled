.class Lcom/android/browser/TabScrollView$TabLayout;
.super Landroid/widget/LinearLayout;
.source "TabScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/TabScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TabScrollView;


# direct methods
.method public constructor <init>(Lcom/android/browser/TabScrollView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    .line 220
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/TabScrollView$TabLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 222
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "count"
    .parameter "i"

    .prologue
    .line 248
    const/4 v0, -0x1

    .line 249
    .local v0, next:I
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mSelected:I
    invoke-static {v1}, Lcom/android/browser/TabScrollView;->access$200(Lcom/android/browser/TabScrollView;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mSelected:I
    invoke-static {v1}, Lcom/android/browser/TabScrollView;->access$200(Lcom/android/browser/TabScrollView;)I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mSelected:I
    invoke-static {v1}, Lcom/android/browser/TabScrollView;->access$200(Lcom/android/browser/TabScrollView;)I

    move-result v0

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    sub-int v1, p1, p2

    add-int/lit8 v0, v1, -0x1

    .line 253
    iget-object v1, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mSelected:I
    invoke-static {v1}, Lcom/android/browser/TabScrollView;->access$200(Lcom/android/browser/TabScrollView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 254
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 234
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 235
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView$TabLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 236
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/browser/TabScrollView$TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mTabOverlap:I
    invoke-static {v5}, Lcom/android/browser/TabScrollView;->access$100(Lcom/android/browser/TabScrollView;)I

    move-result v5

    sub-int v1, v4, v5

    .line 237
    .local v1, nextLeft:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView$TabLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/browser/TabScrollView$TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    .local v2, tab:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v4, v5

    .line 240
    .local v3, w:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v5, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 241
    iget-object v4, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mTabOverlap:I
    invoke-static {v4}, Lcom/android/browser/TabScrollView;->access$100(Lcom/android/browser/TabScrollView;)I

    move-result v4

    sub-int v4, v3, v4

    add-int/2addr v1, v4

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0           #i:I
    .end local v1           #nextLeft:I
    .end local v2           #tab:Landroid/view/View;
    .end local v3           #w:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "hspec"
    .parameter "vspec"

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 227
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView$TabLayout;->getMeasuredWidth()I

    move-result v0

    .line 228
    .local v0, w:I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mContentView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/browser/TabScrollView;->access$000(Lcom/android/browser/TabScrollView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/TabScrollView$TabLayout;->this$0:Lcom/android/browser/TabScrollView;

    #getter for: Lcom/android/browser/TabScrollView;->mTabOverlap:I
    invoke-static {v2}, Lcom/android/browser/TabScrollView;->access$100(Lcom/android/browser/TabScrollView;)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 229
    invoke-virtual {p0}, Lcom/android/browser/TabScrollView$TabLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/TabScrollView$TabLayout;->setMeasuredDimension(II)V

    .line 230
    return-void
.end method
