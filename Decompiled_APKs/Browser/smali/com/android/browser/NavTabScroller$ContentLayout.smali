.class Lcom/android/browser/NavTabScroller$ContentLayout;
.super Landroid/widget/LinearLayout;
.source "NavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/NavTabScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentLayout"
.end annotation


# instance fields
.field mScroller:Lcom/android/browser/NavTabScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/NavTabScroller;)V
    .locals 0
    .parameter "context"
    .parameter "scroller"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 545
    iput-object p2, p0, Lcom/android/browser/NavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/NavTabScroller;

    .line 546
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 550
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 551
    iget-object v2, p0, Lcom/android/browser/NavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v2}, Lcom/android/browser/NavTabScroller;->getGap()I

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/browser/NavTabScroller$ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/browser/NavTabScroller$ContentLayout;->mScroller:Lcom/android/browser/NavTabScroller;

    invoke-virtual {v2}, Lcom/android/browser/NavTabScroller;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller$ContentLayout;->getMeasuredWidth()I

    move-result v3

    add-int v0, v2, v3

    .line 556
    .local v0, total:I
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller$ContentLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/NavTabScroller$ContentLayout;->setMeasuredDimension(II)V

    .line 564
    .end local v0           #total:I
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller$ContentLayout;->getMeasuredHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 559
    .restart local v0       #total:I
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller$ContentLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/browser/NavTabScroller$ContentLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method
