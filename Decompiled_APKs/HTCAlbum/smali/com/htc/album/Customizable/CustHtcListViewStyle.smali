.class public Lcom/htc/album/Customizable/CustHtcListViewStyle;
.super Ljava/lang/Object;
.source "CustHtcListViewStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isListItemPhotoFramed()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public static setDividerBackground(ILandroid/view/View;)V
    .locals 0
    .parameter "nIndex"
    .parameter "htcListViewItem"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 46
    :cond_0
    return-void
.end method

.method public static setStyle(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V
    .locals 2
    .parameter "context"
    .parameter "htcListView"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 18
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setHorizontalScrollBarEnabled(Z)V

    .line 20
    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_BackgroundColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 21
    invoke-static {p0}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_BackgroundColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20805bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 24
    return-void
.end method

.method public static setStyleNoCacheColorHint(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V
    .locals 2
    .parameter "context"
    .parameter "htcListView"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 28
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 31
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setHorizontalScrollBarEnabled(Z)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setScrollingCacheEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20805bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method
