.class public Lcom/google/android/gsf/login/ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "ProportionalOuterFrame.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const-wide v9, 0x3fa999999999999aL

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 55
    .local v2, parentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 56
    .local v1, parentHeight:I
    int-to-double v5, v2

    mul-double/2addr v5, v9

    double-to-int v5, v5

    const/4 v6, 0x0

    int-to-double v7, v2

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-double v8, v1

    const-wide v10, 0x3fa47ae147ae147bL

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/android/gsf/login/ProportionalOuterFrame;->setPadding(IIII)V

    .line 61
    const/high16 v5, 0x7f0c

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, title:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 65
    .local v4, y:I
    int-to-double v5, v4

    const-wide v7, 0x3fc3333333333333L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    .end local v0           #display:Landroid/view/Display;
    .end local v4           #y:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 68
    return-void
.end method
