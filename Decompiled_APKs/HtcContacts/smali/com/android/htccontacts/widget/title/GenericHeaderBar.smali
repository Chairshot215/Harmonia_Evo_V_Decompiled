.class public Lcom/android/htccontacts/widget/title/GenericHeaderBar;
.super Lcom/htc/widget/HeaderBarShort;
.source "GenericHeaderBar.java"


# static fields
.field public static final TYPE_GENERIC:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderType:I

.field private minnerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .parameter "headerType"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput p3, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderType:I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private buildHeaderBar()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->removeAllViews()V

    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->addCenterView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 44
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public buildHeaderBar(I)V
    .locals 1
    .parameter "headerType"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderType:I

    .line 49
    invoke-direct {p0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar()V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->enableSecondBackground(Z)V

    .line 52
    return-void
.end method

.method public getHeaderText()Lcom/htc/widget/HeaderBarText;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HeaderBarShort;->onMeasure(II)V

    .line 71
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected setHeaderBarbackground()V
    .locals 4

    .prologue
    .line 55
    const-class v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 57
    .local v1, layoutView:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 58
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 59
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    const v3, 0x20806b7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 63
    iget-object v2, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 66
    .end local v0           #childIndex:I
    .end local v1           #layoutView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 92
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 97
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/htc/widget/HeaderBarShort;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->minnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    :cond_0
    return-void
.end method
