.class public Lcom/google/android/setupwizard/BaseActivity$ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProportionalOuterFrame"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1696
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1697
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1699
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1700
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1702
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1703
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const-wide v9, 0x3fa999999999999aL

    .line 1710
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1711
    .local v3, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1712
    .local v2, parentHeight:I
    int-to-double v5, v3

    mul-double/2addr v5, v9

    double-to-int v5, v5

    const/4 v6, 0x0

    int-to-double v7, v3

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-double v8, v2

    const-wide v10, 0x3fa47ae147ae147bL

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/android/setupwizard/BaseActivity$ProportionalOuterFrame;->setPadding(IIII)V

    .line 1717
    const v5, 0x7f0e0014

    invoke-virtual {p0, v5}, Lcom/google/android/setupwizard/BaseActivity$ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1718
    .local v4, title:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1719
    invoke-virtual {p0}, Lcom/google/android/setupwizard/BaseActivity$ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1721
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1722
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1723
    .local v1, displaySize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1724
    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    const-wide v7, 0x3fc3333333333333L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1727
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #displaySize:Landroid/graphics/Point;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1728
    return-void
.end method
